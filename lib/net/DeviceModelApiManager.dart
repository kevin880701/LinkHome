import 'package:haohsing_flutter/model/response/deviceModel/DeviceModelResponse.dart';
import "package:haohsing_flutter/net/NetworkInterface.dart";
import 'ApiEndPoint.dart';

class DeviceModelApiManager {
  DeviceModelApiManager._();

  static final DeviceModelApiManager instance = DeviceModelApiManager._();

  final NetworkInterface _networkInterface = NetworkInterface();

  Future<List<DeviceModelResponse>> getDeviceModelList(token) async {
    final response = await _networkInterface.get(
      url: ApiEndPoint.deviceModelQuery,
      userToken: token,
    );

    List<dynamic> jsonList = response.data;
    List<DeviceModelResponse> deviceModelList =
        jsonList.map((json) => DeviceModelResponse.fromJson(json as Map<String, dynamic>)).toList();

    return deviceModelList;
  }
}
