import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:haohsing_flutter/model/request/device/setDeviceShare/SetDeviceShareRequestBody.dart';
import 'package:haohsing_flutter/model/response/device/getMemberDevices/GetMemberDevicesResponse.dart';
import 'package:haohsing_flutter/model/response/device/getMemberDevicesPermissions/GetMemberDevicesPermissionsResponse.dart';
import 'package:haohsing_flutter/net/DeviceApiManager.dart';
import 'package:haohsing_flutter/provider/UpdateStateProvider.dart';
import 'package:haohsing_flutter/provider/UserProvider.dart';
import 'package:haohsing_flutter/utils/AppLog.dart';

class PermissionShareState {
  final List<GetMemberDevicesResponse> memberDevices;
  final List<GetMemberDevicesPermissionsResponse> memberDevicesPermissions;

  PermissionShareState({
    this.memberDevices = const [],
    this.memberDevicesPermissions = const [],
  });

  PermissionShareState copyWith({
    List<GetMemberDevicesResponse>? memberDevices,
    List<GetMemberDevicesPermissionsResponse>? memberDevicesPermissions,
  }) {
    return PermissionShareState(
      memberDevices: List.unmodifiable(memberDevices ?? this.memberDevices),
      memberDevicesPermissions: List.unmodifiable(memberDevicesPermissions ?? this.memberDevicesPermissions),
    );
  }
}

final permissionShareProvider = StateNotifierProvider.autoDispose<PermissionShareNotifier, PermissionShareState>((ref) {
  return PermissionShareNotifier(ref);
});

class PermissionShareNotifier extends StateNotifier<PermissionShareState> {
  PermissionShareNotifier(this.ref) : super(PermissionShareState()) {
    token = ref.read(userProvider).loginResponse?.token ?? "";
    ref.listen<UpdateState>(updateStateProvider, (previous, next) {
      if ((previous?.deviceUpdated != next.deviceUpdated) || (previous?.placeUpdated != next.placeUpdated)) {
        // getPlaceDtls();
      }
    });
    deviceApiManager = DeviceApiManager(ref);
  }

  final Ref ref;
  late String token = "";
  late final DeviceApiManager deviceApiManager;

  Future<List<GetMemberDevicesResponse>> getMemberDevices({required int placeId}) async {
    try {
      List<GetMemberDevicesResponse> response = await deviceApiManager.getMemberDevices(token, placeId);
      state = state.copyWith(memberDevices: response);
      return response;
    } catch (e, stackTrace) {
      AppLog.e("getMemberDevices Error：$e");
      return [];
    }
  }

  Future<List<GetMemberDevicesPermissionsResponse>> getMemberDevicesPermissions(
      {required int placeId, required int userId}) async {
    try {
      List<GetMemberDevicesPermissionsResponse> response = await deviceApiManager.getMemberDevicesPermissions(token,
          placeId, userId);
      state = state.copyWith(memberDevicesPermissions: response);
      return response;
    } catch (e, stackTrace) {
      AppLog.e("getMemberDevicesPermissions Error：$e");
      return [];
    }
  }

  Future<bool> setDeviceShare(List<SetDeviceShareRequestBody> deviceShareList) async {
    try {
      bool response = await deviceApiManager.setDeviceShare(token, deviceShareList);
      ref.read(updateStateProvider.notifier).placeUpdated();
      ref.read(updateStateProvider.notifier).deviceUpdated();
      return response;
    } catch (e, stackTrace) {
      AppLog.e("setDeviceShare Error：$e");
      return false;
    }
  }
}
