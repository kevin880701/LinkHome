import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:haohsing_flutter/model/response/place/areaList/AreaListResponse.dart';
import 'package:haohsing_flutter/model/response/place/placeList/PlaceListResponse.dart';
import 'package:haohsing_flutter/net/DeviceApiManager.dart';
import 'package:haohsing_flutter/net/PlaceApiManager.dart';
import 'package:haohsing_flutter/provider/UpdateStateProvider.dart';
import 'package:haohsing_flutter/provider/UserProvider.dart';
import 'package:haohsing_flutter/utils/AppLog.dart';

class AreaManagerState {
  final int placeId;
  final List<AreaListResponse> areaList;
  final List<PlaceListResponse> placeList;

  AreaManagerState({
    this.placeId = -1,
    this.areaList = const [],
    this.placeList = const [],
  });

  AreaManagerState copyWith({
    int? placeId,
    List<AreaListResponse>? areaList,
    List<PlaceListResponse>? placeList,
  }) {
    return AreaManagerState(
      placeId: placeId ?? this.placeId,
      areaList: List.unmodifiable(areaList ?? this.areaList),
      placeList: List.unmodifiable(placeList ?? this.placeList),
    );
  }
}

final areaManagerProvider = StateNotifierProvider.autoDispose<AddDeviceNotifier, AreaManagerState>((ref) {
  return AddDeviceNotifier(ref);
});

class AddDeviceNotifier extends StateNotifier<AreaManagerState> {
  AddDeviceNotifier(this.ref) : super(AreaManagerState()) {
    token = ref.read(userProvider).loginResponse?.token ?? "";
    ref.listen<UpdateState>(updateStateProvider, (previous, next) {
      if ((previous?.placeUpdated != next.placeUpdated)) {
        getAreaList(state.placeId);
      }
    });
    deviceApiManager = DeviceApiManager(ref);
  }

  final Ref ref;
  late String token = "";
  final PlaceApiManager placeApiManager = PlaceApiManager.instance;
  late final DeviceApiManager deviceApiManager;

  Future<void> updatePlaceId({required int placeId}) async {
    state = state.copyWith(placeId: placeId);
  }

  Future<List<AreaListResponse>> getAreaList(int placeId) async {
    try {
      List<AreaListResponse> areaList =
          await placeApiManager.getAreaList(token, placeId) ?? [];
      state = state.copyWith(areaList: areaList);
      return areaList;
    } catch (e, stackTrace) {
      AppLog.e("placeAreas Error：$e");
    }
    return [];
  }

  Future<int?> addArea(String placeName, int placeId) async {
    try {
      int? deviceResponse = await placeApiManager.addArea(token, placeName, placeId);
      ref.read(updateStateProvider.notifier).placeUpdated();
      return deviceResponse;
    } catch (e, stackTrace) {
      AppLog.e("addArea Error：$e");
    }
    return null;
  }

  Future<bool> changeAreaName(int areaId, String areaName) async {
    try {
      bool addPlaceResponse = await placeApiManager.changeAreaName(token, areaId, areaName);
      ref.read(updateStateProvider.notifier).placeUpdated();

      return addPlaceResponse;
    } catch (e, stackTrace) {
      AppLog.e("place Error：$e");
    }
    return false;
  }

  Future<bool> deleteArea(int areaId) async {
    try {
      bool addPlaceResponse = await placeApiManager.deleteArea(token, areaId);
      ref.read(updateStateProvider.notifier).placeUpdated();
      return addPlaceResponse;
    } catch (e, stackTrace) {
      AppLog.e("place Error：$e");
    }
    return false;
  }
}
