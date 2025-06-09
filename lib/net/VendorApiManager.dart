
import 'package:haohsing_flutter/model/response/vendor/VendorInfoResponse.dart';
import "package:haohsing_flutter/net/NetworkInterface.dart";
import '../model/request/vendor/getVendorInfo/GetVendorInfoRequestParams.dart';
import '../model/response/device/getVendorInfo/GetVendorInfoResponse.dart';
import 'ApiEndPoint.dart';

class VendorApiManager {
  VendorApiManager._();

  static final VendorApiManager instance = VendorApiManager._();

  final NetworkInterface _networkInterface = NetworkInterface();

  Future<GetVendorInfoResponse?> getVendorInfo(token, {required int vendorId}) async {
    GetVendorInfoRequestParams params = GetVendorInfoRequestParams(vendor_id: vendorId);
    final response = await _networkInterface.get(
      url: ApiEndPoint.deviceUserPlaceArea,
      query: params.toJson(),
      userToken: token,
    );
    return response.data;
  }

  Future<List<VendorInfoResponse>> getVendorList(token) async {
    final response = await _networkInterface.get(
      url: ApiEndPoint.vendorQuery,
      userToken: token,
    );

    List<dynamic> jsonList = response.data;
    List<VendorInfoResponse> vendorList = jsonList.map((json) => VendorInfoResponse.fromJson(json as Map<String,
        dynamic>)).toList();

    return vendorList;
  }
}