import 'package:flutter_riverpod/flutter_riverpod.dart';

import '../../../../model/response/place/placeDtls/PlaceDtlsResponse.dart';

abstract class BasePlaceManagerNotifier extends StateNotifier<List<PlaceDtlsResponse>> {
  BasePlaceManagerNotifier() : super([]);

  Future<void> getPlaceDtls();
  Future<int?> addPlace(String placeName);
  Future<bool> changePlaceName(String placeName, int placeId);
  Future<bool> deletePlace(int placeId);
}
