import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:haohsing_flutter/model/request/device/setDeviceShare/SetDeviceShareRequestBody.dart';
import 'package:haohsing_flutter/model/response/device/getMemberDevices/GetMemberDevicesResponse.dart';
import 'package:haohsing_flutter/model/response/device/getMemberDevicesPermissions/GetMemberDevicesPermissionsResponse.dart';
import 'package:haohsing_flutter/net/DeviceApiManager.dart';
import 'package:haohsing_flutter/provider/UpdateStateProvider.dart';
import 'package:haohsing_flutter/provider/UserProvider.dart';
import 'package:haohsing_flutter/utils/AppLog.dart';

import '../../../../data/DeviceFakerData.dart';
import 'BasePermissionShareNotifier.dart';

final fakerPermissionShareProvider = StateNotifierProvider.autoDispose<FakerPermissionShareNotifier, PermissionShareState>((ref) {
  return FakerPermissionShareNotifier();
});

class FakerPermissionShareNotifier extends BasePermissionShareNotifier {
  FakerPermissionShareNotifier() : super();

  @override
  Future<List<GetMemberDevicesResponse>> getMemberDevices({required int placeId}) async {
    // 假如你要做地點過濾可以直接：
    final filtered = mockGetMemberDevicesResponseList.where((d) => d.placeId == placeId).toList();
    state = state.copyWith(memberDevices: filtered);
    return filtered;
  }

  @override
  Future<List<GetMemberDevicesPermissionsResponse>> getMemberDevicesPermissions({required int placeId, required int userId}) async {
    // userId 這邊若要過濾可再根據你的情境調整
    final filtered = mockGetMemberDevicesPermissionsResponseList.where((d) => d.placeId == placeId).toList();
    state = state.copyWith(memberDevicesPermissions: filtered);
    return filtered;
  }

  @override
  Future<bool> setDeviceShare(List<dynamic> deviceShareList) async {
    // 假資料直接回 true，不做實際處理
    return true;
  }
}