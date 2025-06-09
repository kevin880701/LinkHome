import "package:haohsing_flutter/net/NetworkInterface.dart";
import '../model/request/zipCode/getRegions/GetRegionsRequestParams.dart';
import '../model/response/zipCode/getCities/GetCitiesResponse.dart';
import '../model/response/zipCode/getRegions/GetRegionsResponse.dart';
import 'ApiEndPoint.dart';

class ZipCodeApiManager {
  ZipCodeApiManager._();

  static final ZipCodeApiManager instance = ZipCodeApiManager._();

  final NetworkInterface _networkInterface = NetworkInterface();

  Future<List<String>> getCities() async {
    final response = await _networkInterface.get(url: ApiEndPoint.zipcodeCities);
    List<dynamic> dynamicList = response.data;
    List<String> citiesList = dynamicList.map((item) => item.toString()).toList();

    List<String> getCitiesResponse = citiesList;
    return getCitiesResponse;
  }

  Future<GetRegionsResponse?> getRegions({
    required String countyName,
  }) async {
    GetRegionsRequestParams params = GetRegionsRequestParams(countyName: countyName);
    final response = await _networkInterface.get(url: ApiEndPoint.zipcodeRegions, query: params.toJson());

    List<dynamic> dynamicList = response.data;
    List<String> regions = dynamicList.map((item) => item.toString()).toList();

    GetRegionsResponse getRegionsResponse = GetRegionsResponse(regions: regions);
    return getRegionsResponse;
  }
}
