import 'package:flutter_riverpod/flutter_riverpod.dart';

import '../../../../model/response/device/deviceMember/DeviceMemberResponse.dart';
import '../../../../model/response/device/addDeviceMember/AddDeviceMemberResponse.dart';

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

abstract class BaseDeviceShareNotifier extends StateNotifier<DeviceShareState> {
  BaseDeviceShareNotifier(this.ref) : super(DeviceShareState());

  final Ref ref;

  Future<void> updatePlaceId({required int placeId});
  Future<List<DeviceMemberResponse>> getDeviceMembers();
  Future<AddDeviceMemberResponse?> addDeviceMember({required String account, required int placeId});
  Future<bool> deleteDeviceMember({required int placeId, required int userId});
  Future<void> resentInvite({required int placeId, required int userId, required String account});
}
