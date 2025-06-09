import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:haohsing_flutter/model/response/place/areaList/AreaListResponse.dart';
import 'package:haohsing_flutter/model/response/place/placeList/PlaceListResponse.dart';
import 'package:haohsing_flutter/net/DeviceApiManager.dart';
import 'package:haohsing_flutter/net/PlaceApiManager.dart';
import 'package:haohsing_flutter/provider/UpdateStateProvider.dart';
import 'package:haohsing_flutter/provider/UserProvider.dart';
import 'package:haohsing_flutter/utils/AppLog.dart';

class PlaceAndAreaState {
  final List<PlaceListResponse> placeList;
  final List<AreaListResponse> areaList;
  final int deviceId;
  final int? placeIndex;
  final int? areaIndex;

  PlaceAndAreaState({
    this.placeList = const [],
    this.areaList = const [],
    this.deviceId = 0,
    this.placeIndex = null,
    this.areaIndex = null,
  });

  PlaceAndAreaState copyWith({
    List<AreaListResponse>? areaList,
    List<PlaceListResponse>? placeList,
    int? deviceId,
    int? placeIndex,
    int? areaIndex,
  }) {
    return PlaceAndAreaState(
      areaList: List.unmodifiable(areaList ?? this.areaList),
      placeList: List.unmodifiable(placeList ?? this.placeList),
      deviceId: deviceId ?? this.deviceId,
      placeIndex: placeIndex,
      areaIndex: areaIndex,
    );
  }
}

final placeAndAreaProvider = StateNotifierProvider.autoDispose<PlaceAndAreaNotifier, PlaceAndAreaState>((ref) {
  return PlaceAndAreaNotifier(ref);
});

class PlaceAndAreaNotifier extends StateNotifier<PlaceAndAreaState> {
  PlaceAndAreaNotifier(this.ref) : super(PlaceAndAreaState()) {
    token = ref.read(userProvider).loginResponse?.token ?? "";
    ref.listen<UpdateState>(updateStateProvider, (previous, next) {
      if (previous?.placeUpdated != next.placeUpdated) {
        // getPlaceList();
      }
    });
    deviceApiManager = DeviceApiManager(ref);
  }

  final Ref ref;
  late String token = "";
  final PlaceApiManager placeApiManager = PlaceApiManager.instance;
  late final DeviceApiManager deviceApiManager;

  Future<void> updatePlaceIndex({required int? newPlaceIndex}) async {
    state = state.copyWith(placeIndex: newPlaceIndex, areaIndex: null, areaList: []);
  }

  Future<void> updateAreaIndex({required int? newAreaIndex}) async {
    state = state.copyWith(placeIndex: state.placeIndex, areaIndex: newAreaIndex);
  }

  Future<void> updateDeviceId({required int? deviceId}) async {
    state = state.copyWith(deviceId: deviceId, placeIndex: state.placeIndex, areaIndex: state.areaIndex);
  }

  Future<List<PlaceListResponse>> getPlaceList(int? placeId) async {
    try {
      List<PlaceListResponse> placeResponse = await placeApiManager.getPlaceList(token) ?? [];
      int? placeIndex = null;
      if (placeId != null) {
        placeIndex = placeResponse.indexWhere((place) => place.placeId == placeId);
        state = state.copyWith(placeIndex: state.placeIndex, areaIndex: null, areaList: []);
      }
      state = state.copyWith(placeList: placeResponse, placeIndex: placeIndex, areaIndex: state.areaIndex);

      return placeResponse;
    } catch (e, stackTrace) {
      AppLog.e("getPlaceList Error：$e");
      return [];
    }
  }

  Future<List<AreaListResponse>> getAreaList({required int placeId, int? areaId}) async {
    try {
      List<AreaListResponse> areaListResponse = await placeApiManager.getAreaList(token, placeId) ?? [];

      int? areaIndex = null;
      if (areaId != null) {
        areaIndex = areaListResponse.indexWhere((area) => area.areaId == areaId);
      }
      state = state.copyWith(
        placeIndex: state.placeIndex,
        placeList: state.placeList,
        areaList: areaListResponse,
        areaIndex: areaIndex,
      );

      return areaListResponse;
    } catch (e, stackTrace) {
      AppLog.e("getAreaList Error：$e");
    }
    return [];
  }

  Future<int?> addPlace(String placeName) async {
    try {
      int? addPlaceResponse = await placeApiManager.addPlace(token, placeName);
      ref.read(updateStateProvider.notifier).placeUpdated();
      await getPlaceList(addPlaceResponse).then((_) async {
        setDevicePlace(
            placeId: state.placeIndex != null ? state.placeList[state.placeIndex!].placeId : null,
            areaId: null,
            deviceId: state.deviceId);
        // 要同步以新的placeId更新areaList
        await getAreaList(
          placeId: state.placeList[state.placeIndex!].placeId,
        );
      });
      return addPlaceResponse;
    } catch (e, stackTrace) {
      AppLog.e("addPlace Error：$e");
    }
    return null;
  }

  Future<int?> addArea({required String areaName, required int placeId}) async {
    try {
      int? addAreaResponse = await placeApiManager.addArea(token, areaName, placeId);

      await getAreaList(placeId: state.placeList[state.placeIndex!].placeId, areaId: addAreaResponse).then((_) {
        setDevicePlace(
            placeId: state.placeIndex != null ? state.placeList[state.placeIndex!].placeId : null,
            areaId: state.areaIndex != null ? state.areaList[state.areaIndex!].areaId : null,
            deviceId: state.deviceId);
      });
      return addAreaResponse;
    } catch (e, stackTrace) {
      AppLog.e("addArea Error：$e");
    }
    return null;
  }

  Future<bool> setDevicePlace({int? areaId, int? placeId, required int deviceId}) async {
    try {
      final response = await deviceApiManager.setDevicePlace(token, areaId, placeId, deviceId);
      ref.read(updateStateProvider.notifier).deviceUpdated();
      return response;
    } catch (e, stackTrace) {
      AppLog.e("setDevicePlace Error：$e");
    }
    return false;
  }
}
