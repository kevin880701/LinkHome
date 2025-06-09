import 'package:flutter_riverpod/flutter_riverpod.dart';

import '../../../../data/DeviceFakerData.dart';
import '../../../../model/response/device/addDeviceMember/AddDeviceMemberResponse.dart';
import '../../../../model/response/device/deviceMember/DeviceMemberResponse.dart';
import 'BaseDeviceShareNotifier.dart';

final fakerDeviceShareProvider = StateNotifierProvider.autoDispose<FakerDeviceShareNotifier, DeviceShareState>((ref) {
  return FakerDeviceShareNotifier(ref);
});

class FakerDeviceShareNotifier extends BaseDeviceShareNotifier {
  FakerDeviceShareNotifier(Ref ref) : super(ref);

  @override
  Future<void> updatePlaceId({required int placeId}) async {
    state = state.copyWith(placeId: placeId);
  }

  @override
  Future<List<DeviceMemberResponse>> getDeviceMembers() async {
    final members = List<DeviceMemberResponse>.from(
        mockDeviceMembersByPlaceId[state.placeId] ?? []);
    members.sort((a, b) => a.invite == b.invite ? 0 : (a.invite ? 1 : -1));
    state = state.copyWith(deviceMemberList: members);
    return members;
  }

  @override
  Future<AddDeviceMemberResponse?> addDeviceMember({
    required String account,
    required int placeId,
  }) async {
    final current = mockDeviceMembersByPlaceId[placeId] ?? [];
    final newId = (current.map((m) => m.userId).fold<int>(0, (prev, id) => id > prev ? id : prev)) + 1;

    final newMember = DeviceMemberResponse(
      userId: newId,
      name: account, // 模擬：用帳號當作名稱
      account: account,
      deviceNum: 0,
      invite: true,
    );
    mockDeviceMembersByPlaceId[placeId] = [...current, newMember];
    await getDeviceMembers();

    return AddDeviceMemberResponse(status: 0, data: '成功');
  }

  @override
  Future<bool> deleteDeviceMember({
    required int placeId,
    required int userId,
  }) async {
    final current = mockDeviceMembersByPlaceId[placeId] ?? [];
    mockDeviceMembersByPlaceId[placeId] = current.where((m) => m.userId != userId).toList();
    await getDeviceMembers();
    return true;
  }

  @override
  Future<void> resentInvite({
    required int placeId,
    required int userId,
    required String account,
  }) async {
    await deleteDeviceMember(placeId: placeId, userId: userId);
    await addDeviceMember(account: account, placeId: placeId);
  }
}
