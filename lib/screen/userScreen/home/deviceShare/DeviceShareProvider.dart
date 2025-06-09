import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:haohsing_flutter/model/request/device/deviceMember/DeviceMemberRequestParams.dart';
import 'package:haohsing_flutter/model/response/device/addDeviceMember/AddDeviceMemberResponse.dart';
import 'package:haohsing_flutter/model/response/device/deleteDeviceMember/DeleteDeviceMemberRequestParams.dart';
import 'package:haohsing_flutter/model/response/device/deviceMember/DeviceMemberResponse.dart';
import 'package:haohsing_flutter/net/DeviceApiManager.dart';
import 'package:haohsing_flutter/provider/PageProvider.dart';
import 'package:haohsing_flutter/provider/UpdateStateProvider.dart';
import 'package:haohsing_flutter/provider/UserProvider.dart';
import 'package:haohsing_flutter/utils/AppLog.dart';

class DeviceShareState {
  final int placeId;
  final List<DeviceMemberResponse> deviceMemberList;

  DeviceShareState({
    this.placeId = -1,
    this.deviceMemberList = const [],
  });

  DeviceShareState copyWith({
    int? placeId,
    List<DeviceMemberResponse>? deviceMemberList,
  }) {
    return DeviceShareState(
      placeId: placeId ?? this.placeId,
      deviceMemberList: List.unmodifiable(deviceMemberList ?? this.deviceMemberList),
    );
  }
}

final deviceShareProvider = StateNotifierProvider.autoDispose<DeviceShareNotifier, DeviceShareState>((ref) {
  return DeviceShareNotifier(ref);
});

class DeviceShareNotifier extends StateNotifier<DeviceShareState> {
  DeviceShareNotifier(this.ref) : super(DeviceShareState()) {
    token = ref.read(userProvider).loginResponse?.token ?? "";
    ref.listen<UpdateState>(updateStateProvider, (previous, next) {
      if (previous?.deviceUpdated != next.deviceUpdated) {
        getDeviceMembers();
      }
    });
    deviceApiManager = DeviceApiManager(ref);
  }

  final Ref ref;
  late String token = "";
  late final DeviceApiManager deviceApiManager;

  Future<void> updatePlaceId({required int placeId}) async {
    state = state.copyWith(placeId: placeId);
  }

  Future<List<DeviceMemberResponse>> getDeviceMembers() async {
    try {
      final userResponse = ref.read(userProvider).userResponse!;
      DeviceMemberRequestParams deviceMemberRequestParams = DeviceMemberRequestParams(placeId: state.placeId);
      List<DeviceMemberResponse> deviceMembers =
          await deviceApiManager.getDeviceMembers(token, deviceMemberRequestParams);
      deviceMembers = deviceMembers.where((member) => member.account != userResponse.account).toList();
      deviceMembers.sort((a, b) => a.invite == b.invite ? 0 : (a.invite ? 1 : -1));
      state = state.copyWith(deviceMemberList: deviceMembers);
      return deviceMembers;
    } catch (e, stackTrace) {
      AppLog.e("getDeviceMembers Error：$e");
    }
    return [];
  }

  Future<AddDeviceMemberResponse?> addDeviceMember({required String account, required int placeId}) async {
    try {
      final response = await deviceApiManager.addDeviceMember(token, account: account, placeId: placeId);
      ref.read(updateStateProvider.notifier).placeUpdated();
      ref.read(updateStateProvider.notifier).deviceUpdated();
      if(response.status != 0){
        ref.read(pageProvider.notifier).showError('${response.data}：${account}');
      }
      return response;
    } catch (e, stackTrace) {
      AppLog.e("addDeviceMember Error：$e");
      return null;
    }
  }

  Future<bool> deleteDeviceMember({required int placeId, required int userId}) async {
    try {
      bool response = await deviceApiManager.deleteDeviceMember(token, placeId: placeId, userId: userId);
      ref.read(updateStateProvider.notifier).deviceUpdated();
      ref.read(updateStateProvider.notifier).placeUpdated();
      return response;
    } catch (e, stackTrace) {
      AppLog.e("deleteDeviceMember Error：$e");
      return false;
    }
  }

  Future<void> resentInvite({required int placeId, required int userId, required String account}) async {
    try {
      await deviceApiManager.deleteDeviceMember(token, placeId: placeId, userId: userId).then((isDeleteSuccess) {
        addDeviceMember(account: account, placeId: placeId);
      });
    } catch (e, stackTrace) {
      AppLog.e("resentInvite Error：$e");
    }
  }
}
