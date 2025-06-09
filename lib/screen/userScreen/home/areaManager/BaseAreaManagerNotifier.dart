import 'package:flutter_riverpod/flutter_riverpod.dart';

import '../../../../model/response/place/areaList/AreaListResponse.dart';
import '../../../../model/response/place/placeList/PlaceListResponse.dart';
import 'AreaManagerProvider.dart';


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

abstract class BaseAreaManagerNotifier extends StateNotifier<AreaManagerState> {
  BaseAreaManagerNotifier(AreaManagerState state) : super(state);

  Future<void> updatePlaceId({required int placeId});
  Future<List<AreaListResponse>> getAreaList(int placeId);
  Future<int?> addArea(String placeName, int placeId);
  Future<bool> changeAreaName(int areaId, String areaName);
  Future<bool> deleteArea(int areaId);
}
