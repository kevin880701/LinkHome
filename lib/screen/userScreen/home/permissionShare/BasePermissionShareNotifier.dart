import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:haohsing_flutter/model/response/device/getMemberDevices/GetMemberDevicesResponse.dart';
import 'package:haohsing_flutter/model/response/device/getMemberDevicesPermissions/GetMemberDevicesPermissionsResponse.dart';


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

abstract class BasePermissionShareNotifier extends StateNotifier<PermissionShareState> {
  BasePermissionShareNotifier() : super(PermissionShareState());

  Future<List<GetMemberDevicesResponse>> getMemberDevices({required int placeId});
  Future<List<GetMemberDevicesPermissionsResponse>> getMemberDevicesPermissions({required int placeId, required int userId});
  Future<bool> setDeviceShare(List<dynamic> deviceShareList);
}
