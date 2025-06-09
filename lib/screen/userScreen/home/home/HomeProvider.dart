import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:haohsing_flutter/model/response/device/homeDeviceInfo/HomeDeviceInfoResponse.dart';
import 'package:haohsing_flutter/model/response/place/areaList/AreaListResponse.dart';
import 'package:haohsing_flutter/model/response/place/placeList/PlaceListResponse.dart';
import 'package:haohsing_flutter/net/DeviceApiManager.dart';
import 'package:haohsing_flutter/net/PlaceApiManager.dart';
import 'package:haohsing_flutter/provider/UpdateStateProvider.dart';
import 'package:haohsing_flutter/provider/UserProvider.dart';
import 'package:haohsing_flutter/resources/AppTexts.dart';
import 'package:haohsing_flutter/utils/AppLog.dart';

class HomeState {
  final List<AreaListResponse> areaList;
  final List<PlaceListResponse> placeList;
  final List<HomeDeviceInfoResponse> deviceList;
  final int placeIndex;
  final int areaIndex;

  HomeState({
    this.areaList = const [],
    this.placeList = const [],
    this.deviceList = const [],
    this.placeIndex = -1,
    this.areaIndex = -1,
  });

  HomeState copyWith({
    List<AreaListResponse>? areaList,
    List<PlaceListResponse>? placeList,
    List<HomeDeviceInfoResponse>? deviceList,
    int? placeIndex,
    int? areaIndex,
  }) {
    return HomeState(
      areaList: List.unmodifiable(areaList ?? this.areaList),
      placeList: List.unmodifiable(placeList ?? this.placeList),
      deviceList: List.unmodifiable(deviceList ?? this.deviceList),
      placeIndex: placeIndex ?? this.placeIndex,
      areaIndex: areaIndex ?? this.areaIndex,
    );
  }
}

final homeProvider = StateNotifierProvider.autoDispose<HomeNotifier, HomeState>((ref) {
  return HomeNotifier(ref);
});

class HomeNotifier extends StateNotifier<HomeState> {
  HomeNotifier(this.ref) : super(HomeState()) {
    token = ref.read(userProvider).loginResponse?.token ?? "";
    ref.listen<UpdateState>(updateStateProvider, (previous, next) {
      if ((previous?.deviceUpdated != next.deviceUpdated)) {
        getDeviceList(placeId: state.placeList[state.placeIndex].placeId, areaId: state.areaList[state.areaIndex]
            .placeId);
      }
      if ((previous?.placeUpdated != next.placeUpdated)) {
        getPlaceList().then((list){
          getAreaList(list[state.placeIndex].placeId);
        });
      }
    });
    deviceApiManager = DeviceApiManager(ref);
  }

  final Ref ref;
  late String token = "";
  late final DeviceApiManager deviceApiManager;
  final PlaceApiManager placeApiManager = PlaceApiManager.instance;

  Future<List<AreaListResponse>> getAreaList(int placeId) async {
    try {
      List<AreaListResponse> placeAreasResponseList = await placeApiManager.getAreaList(token, placeId) ??
          [AreaListResponse(placeId: -1, name: AppTexts.all, areaId: -1)];
      var areaList = placeAreasResponseList.toList();
      areaList.insert(0, const AreaListResponse(placeId: -1, name: AppTexts.all, areaId: -1));
      state = state.copyWith(areaList: areaList);
      return areaList;
    } catch (e, stackTrace) {
      AppLog.e("placeAreas Error：$e");
    }
    return [];
  }

  Future<List<PlaceListResponse>> getPlaceList() async {
    try {
      List<PlaceListResponse> placeResponse = await placeApiManager.getPlaceList(token) ??
          [PlaceListResponse(placeId: -1, name: AppTexts.all, userId: -1)];
      var placeList = placeResponse.toList();
      placeList.insert(0, const PlaceListResponse(placeId: -1, name: AppTexts.all, userId: -1));
      state = state.copyWith(placeList: placeList);
      return placeList;
    } catch (e, stackTrace) {
      AppLog.e("place Error：$e");
      return [];
    }
  }

  Future<List<HomeDeviceInfoResponse>> getDeviceList({required int placeId, required int areaId}) async {
    try {
      List<HomeDeviceInfoResponse> deviceList = await deviceApiManager.getDeviceList(token, placeId, areaId) ?? [];
      state = state.copyWith(deviceList: deviceList);
      return deviceList;
    } catch (e, stackTrace) {
      AppLog.e("getDeviceList Error：$e");
      return [];
    }
  }

  void updatePlaceIndex({required int newPlaceIndex}) async {
    state = state.copyWith(placeIndex: newPlaceIndex);
  }

  void updateAreaIndex({required int newAreaIndex}) async {
    state = state.copyWith(areaIndex: newAreaIndex);
  }
}
