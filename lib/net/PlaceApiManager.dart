
import "package:haohsing_flutter/net/NetworkInterface.dart";
import '../model/request/place/addArea/AddAreaRequestBody.dart';
import '../model/request/place/addPlace/AddPlaceRequestBody.dart';
import '../model/request/place/areaList/AreaListRequestParams.dart';
import '../model/request/place/changeAreaName/ChangeAreaNameRequestBody.dart';
import '../model/request/place/changePlaceName/ChangePlaceNameRequestBody.dart';
import '../model/request/place/deleteArea/DeleteAreaRequestParams.dart';
import '../model/request/place/deletePlace/DeletePlaceRequestParams.dart';
import '../model/response/place/areaList/AreaListResponse.dart';
import '../model/response/place/placeDtls/PlaceDtlsResponse.dart';
import '../model/response/place/placeList/PlaceListResponse.dart';
import 'ApiEndPoint.dart';

class PlaceApiManager {
  PlaceApiManager._();

  static final PlaceApiManager instance = PlaceApiManager._();

  final NetworkInterface _networkInterface = NetworkInterface();

  Future<List<PlaceListResponse>?> getPlaceList(token) async {
    final response = await _networkInterface.get(
      url: ApiEndPoint.place,
      userToken: token,
    );
    List<dynamic> data = response.data as List<dynamic>;
    return data.map((json) => PlaceListResponse.fromJson(json as Map<String, dynamic>)).toList();
  }

  Future<List<AreaListResponse>?> getAreaList(token, int placeId) async {
    AreaListRequestParams params = AreaListRequestParams(placeId: placeId);
    final response = await _networkInterface.get(
      url: ApiEndPoint.placeAreas,
      query: params.toJson(),
      userToken: token,
    );
    List<dynamic> data = response.data as List<dynamic>;
    return data.map((json) => AreaListResponse.fromJson(json as Map<String, dynamic>)).toList();
  }

  Future<List<PlaceDtlsResponse>?> getPlaceDtls(token) async {
    final response = await _networkInterface.get(
      url: ApiEndPoint.placeDtls,
      userToken: token,
    );
    List<dynamic> data = response.data as List<dynamic>;
    return data.map((json) => PlaceDtlsResponse.fromJson(json as Map<String, dynamic>)).toList();
  }

  Future<int?> addPlace(token, String placeName) async {

    AddPlaceRequestBody body = AddPlaceRequestBody(name: placeName);
    final response = await _networkInterface.post(
      url: ApiEndPoint.place,
      body: body,
      userToken: token,
    );
    return response.data;
  }

  Future<int?> addArea(token, String areaName, int placeId) async {
    AddAreaRequestBody body = AddAreaRequestBody(name: areaName, placeId: placeId);
    final response = await _networkInterface.post(
      url: ApiEndPoint.placeArea,
      body: body,
      userToken: token,
    );
    return response.data;
  }

  Future<bool> changePlaceName(token,String placeName, int placeId) async {
    ChangePlaceNameRequestBody body = ChangePlaceNameRequestBody(name: placeName, placeId: placeId);
    final response = await _networkInterface.put(
      url: ApiEndPoint.place,
      body: body,
      userToken: token,
    );
    return response.data;
  }

  Future<bool> changeAreaName(token, int areaId, String areaName) async {
    ChangeAreaNameRequestBody body = ChangeAreaNameRequestBody(areaId: areaId, name: areaName);
    final response = await _networkInterface.put(
      url: ApiEndPoint.placeArea,
      body: body,
      userToken: token,
    );
    return response.data;
  }

  Future<bool> deletePlace(token, int placeId) async {
    DeletePlaceRequestParams params = DeletePlaceRequestParams(placeId: placeId);
    final response = await _networkInterface.delete(
      url: ApiEndPoint.place,
      query: params.toJson(),
      userToken: token,
    );
    return response.data;
  }

  Future<bool> deleteArea(token, int areaId) async {
    DeleteAreaRequestParams params = DeleteAreaRequestParams(areaId: areaId);
    final response = await _networkInterface.delete(
      url: ApiEndPoint.placeArea,
      query: params.toJson(),
      userToken: token,
    );
    return response.data;
  }
}
