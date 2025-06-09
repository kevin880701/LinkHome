import 'package:flutter_riverpod/flutter_riverpod.dart';

import '../../../../data/DeviceFakerData.dart';
import '../../../../model/response/place/placeDtls/PlaceDtlsResponse.dart';
import 'BasePlaceManagerNotifier.dart';

final fakerPlaceManagerProvider = StateNotifierProvider.autoDispose<FakerPlaceManagerNotifier, List<PlaceDtlsResponse>>((ref) {
  return FakerPlaceManagerNotifier();
});

class FakerPlaceManagerNotifier extends BasePlaceManagerNotifier {
  FakerPlaceManagerNotifier() : super() {
    state = mockPlaceDtlsList;
  }

  @override
  Future<void> getPlaceDtls() async {
    await Future.delayed(const Duration(milliseconds: 300)); // 模擬 API 延遲
    state = mockPlaceDtlsList;
  }

  @override
  Future<int?> addPlace(String placeName) async {
    final newId = (state.isNotEmpty ? state.map((e) => e.placeId).reduce((a, b) => a > b ? a : b) : 100) + 1;
    state = [
      ...state,
      PlaceDtlsResponse(
        placeId: newId,
        name: placeName,
        userId: 1,
        areaCount: 0,
        shareCount: 0,
      ),
    ];
    return newId;
  }

  @override
  Future<bool> changePlaceName(String placeName, int placeId) async {
    state = state.map((e) =>
    e.placeId == placeId
        ? e.copyWith(name: placeName)
        : e
    ).toList();
    return true;
  }

  @override
  Future<bool> deletePlace(int placeId) async {
    state = state.where((e) => e.placeId != placeId).toList();
    return true;
  }
}
