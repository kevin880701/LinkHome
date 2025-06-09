import 'package:flutter_riverpod/flutter_riverpod.dart';

import '../../../../data/DeviceFakerData.dart';
import '../../../../model/response/place/areaList/AreaListResponse.dart';
import 'AreaManagerProvider.dart';
import 'BaseAreaManagerNotifier.dart';

final fakerAreaManagerProvider = StateNotifierProvider.autoDispose<FakerBaseAreaManagerNotifier, AreaManagerState>((ref) {
  return FakerBaseAreaManagerNotifier();
});

class FakerBaseAreaManagerNotifier extends BaseAreaManagerNotifier {
  FakerBaseAreaManagerNotifier() : super(AreaManagerState());

  @override
  Future<void> updatePlaceId({required int placeId}) async {
    state = state.copyWith(placeId: placeId);
  }

  @override
  Future<List<AreaListResponse>> getAreaList(int placeId) async {
    final areaList = mockAreaListByPlaceId[placeId] ?? [];
    state = state.copyWith(areaList: areaList, placeId: placeId);
    return areaList;
  }

  @override
  Future<int?> addArea(String areaName, int placeId) async {
    final currentList = List<AreaListResponse>.from(mockAreaListByPlaceId[placeId] ?? []);
    final newAreaId = (currentList.isNotEmpty ? currentList.map((a) => a.areaId).reduce((a, b) => a > b ? a : b) : placeId * 1000) + 1;
    final newArea = AreaListResponse(areaId: newAreaId, name: areaName, placeId: placeId);

    currentList.add(newArea);
    mockAreaListByPlaceId[placeId] = currentList;

    await getAreaList(placeId);
    return newAreaId;
  }

  @override
  Future<bool> changeAreaName(int areaId, String areaName) async {
    final placeId = state.placeId;
    final list = mockAreaListByPlaceId[placeId];
    if (list == null) return false;

    final index = list.indexWhere((a) => a.areaId == areaId);
    if (index == -1) return false;

    list[index] = AreaListResponse(areaId: areaId, name: areaName, placeId: placeId);
    await getAreaList(placeId);
    return true;
  }

  @override
  Future<bool> deleteArea(int areaId) async {
    final placeId = state.placeId;
    final list = mockAreaListByPlaceId[placeId];
    if (list == null) return false;

    mockAreaListByPlaceId[placeId] = list.where((a) => a.areaId != areaId).toList();
    await getAreaList(placeId);
    return true;
  }
}
