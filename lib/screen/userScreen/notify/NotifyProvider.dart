import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:haohsing_flutter/model/response/device/getShares/GetSharesResponse.dart';
import 'package:haohsing_flutter/model/response/device/shareReview/ShareReviewRequestParams.dart';
import 'package:haohsing_flutter/net/DeviceApiManager.dart';
import 'package:haohsing_flutter/net/MsgApiManager.dart';
import 'package:haohsing_flutter/utils/AppLog.dart';
import 'package:intl/intl.dart';
import '../../../data/NotifyFakerData.dart';
import '../../../model/request/msg/ReadMsgRequestParams.dart';
import '../../../model/response/msg/getMsgs/GetMsgResponse.dart';
import '../../../provider/UpdateStateProvider.dart';
import '../../../provider/UserProvider.dart';

final notifyProvider =
    StateNotifierProvider.autoDispose<NotifyNotifier, NotifyState>((ref) {
  return NotifyNotifier(ref);
});

class NotifyState {
  final List<GetMsgResponse> msgList;
  final List<GetSharesResponse> shareList;

  NotifyState({
    this.msgList = const [],
    this.shareList = const [],
  });

  NotifyState copyWith({
    List<GetMsgResponse>? msgList,
    List<GetSharesResponse>? shareList,
  }) {
    return NotifyState(
      msgList: msgList ?? this.msgList,
      shareList: shareList ?? this.shareList,
    );
  }
}

class NotifyNotifier extends StateNotifier<NotifyState> {
  NotifyNotifier(this.ref) : super(NotifyState()) {
    token = ref.read(userProvider).loginResponse?.token ?? "";
    ref.listen<UpdateState>(updateStateProvider, (previous, next) {
      if (previous?.msgUpdated != next.msgUpdated) {
        getMsg();
        getShareList();
      }
    });
    deviceApiManager = DeviceApiManager(ref);
  }

  final Ref ref;
  late String token = "";
  final MsgApiManager msgApiManager = MsgApiManager.instance;
  late final DeviceApiManager deviceApiManager;

  Future<List<GetMsgResponse>> getMsg() async {
    try {
      // 判斷是否為假資料的 token
      if (token == '@@@user@@@' || token == '@@@engineer@@@') {
        List<GetMsgResponse> filteredMock = mockMsgResponseList.where((msg) {
          DateTime addedTime =
              DateFormat("yyyy-MM-dd HH:mm").parse(msg.addedTime);
          return addedTime.isAfter(DateTime.now().subtract(Duration(days: 90)));
        }).toList();
        state = state.copyWith(msgList: filteredMock);
        return filteredMock;
      }

      List<GetMsgResponse> msgResponse =
          await msgApiManager.getMsg(token: token);

      // 過濾只保留 added_time 在三個月內的消息
      List<GetMsgResponse> recentMessages = msgResponse.where((msg) {
        // 將 added_time 轉換為 DateTime 格式
        DateTime addedTime =
            DateFormat("yyyy-MM-dd HH:mm").parse(msg.addedTime);
        // 比較 addedTime 是否在三個月內
        return addedTime.isAfter(DateTime.now().subtract(Duration(days: 90)));
      }).toList();
      state = state.copyWith(msgList: recentMessages);
      return recentMessages;
    } catch (e, stackTrace) {
      AppLog.e("getMsg Error：$e");
    }
    return [];
  }

  Future<List<GetSharesResponse>> getShareList() async {
    try {
      // 根據假 token 回傳假資料
      if (token == '@@@user@@@' || token == '@@@engineer@@@') {
        state = state.copyWith(shareList: mockSharesResponse);
        return mockSharesResponse;
      }

      final response = await deviceApiManager.getShares(token);
      state = state.copyWith(shareList: response);
      return response;
    } catch (e, stackTrace) {
      AppLog.e("getShareList Error：$e");
    }
    return [];
  }

  Future<bool> readMsg(int msgId) async {
    try {
      if (token != null) {
        ReadMsgRequestParams readMsgRequestParams =
            ReadMsgRequestParams(msgId: msgId);
        final response = await msgApiManager.readMsg(
            params: readMsgRequestParams, token: token);
        ref.read(updateStateProvider.notifier).msgUpdated();
        return response;
      }
    } catch (e, stackTrace) {
      AppLog.e("readMsg Error：$e");
    }
    return false;
  }

  Future<void> readAllMsg() async {
    try {
      for (var msg in state.msgList) {
        if (msg.isRead == 0) {
          readMsg(msg.msgId);
        }
      }
    } catch (e, stackTrace) {
      AppLog.e("readAllMsg Error：$e");
    }
  }

  Future<bool> shareReview(int? placeId, int deviceId, int accept) async {
    try {
      ShareReviewRequestParams shareReviewRequestParams =
          ShareReviewRequestParams(
        placeId: placeId,
        deviceId: deviceId,
        accept: accept,
      );
      final response = await deviceApiManager
          .shareReview(token, shareReviewRequestParams)
          .then((isReviewSuccess) {
        if (isReviewSuccess) {
          getShareList();
        }
      });
      ref.read(updateStateProvider.notifier).msgUpdated();
      return response;
    } catch (e, stackTrace) {
      AppLog.e("shareReview Error：$e");
    }
    return false;
  }
}
