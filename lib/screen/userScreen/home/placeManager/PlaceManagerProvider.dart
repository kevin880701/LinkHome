import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:haohsing_flutter/model/response/place/placeDtls/PlaceDtlsResponse.dart';
import 'package:haohsing_flutter/net/PlaceApiManager.dart';
import 'package:haohsing_flutter/provider/UpdateStateProvider.dart';
import 'package:haohsing_flutter/provider/UserProvider.dart';
import 'package:haohsing_flutter/utils/AppLog.dart';

import 'BasePlaceManagerNotifier.dart';

final placeManagerProvider = StateNotifierProvider.autoDispose<PlaceManagerNotifier, List<PlaceDtlsResponse>>((ref) {
  return PlaceManagerNotifier(ref);
});

class PlaceManagerNotifier extends BasePlaceManagerNotifier {
  PlaceManagerNotifier(this.ref) {
    token = ref.read(userProvider).loginResponse?.token ?? "";
    ref.listen<UpdateState>(updateStateProvider, (previous, next) {
      if ((previous?.deviceUpdated != next.deviceUpdated) || (previous?.placeUpdated != next.placeUpdated)) {
        getPlaceDtls();
      }
    });
  }

  final Ref ref;
  late String token = "";
  final PlaceApiManager placeApiManager = PlaceApiManager.instance;

  Future<void> getPlaceDtls() async {
    try {
      List<PlaceDtlsResponse> placeDtlsResponse = await placeApiManager.getPlaceDtls(token) ?? [];
      state = placeDtlsResponse;
    } catch (e, stackTrace) {
      AppLog.e("placeDtls Error：$e");
    }
  }

  Future<int?> addPlace(String placeName) async {
    try {
      int? addPlaceResponse = await placeApiManager.addPlace(token, placeName);
      ref.read(updateStateProvider.notifier).placeUpdated();
      return addPlaceResponse;
    } catch (e, stackTrace) {
      AppLog.e("addPlace Error：$e");
    }
    return null;
  }

  Future<bool> changePlaceName(String placeName, int placeId) async {
    try {
      bool changePlaceNameResponse = await placeApiManager.changePlaceName(token, placeName, placeId);
      ref.read(updateStateProvider.notifier).placeUpdated();
      return changePlaceNameResponse;
    } catch (e, stackTrace) {
      AppLog.e("changePlaceName Error：$e");
    }
    return false;
  }

  Future<bool> deletePlace(int placeId) async {
    try {
      bool deletePlaceResponse = await placeApiManager.deletePlace(token, placeId);
      ref.read(updateStateProvider.notifier).placeUpdated();

      return deletePlaceResponse;
    } catch (e, stackTrace) {
      AppLog.e("deletePlace Error：$e");
    }
    return false;
  }
}
