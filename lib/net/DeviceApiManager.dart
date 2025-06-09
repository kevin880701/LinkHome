import 'dart:convert';
import 'dart:io';

import 'package:dio/dio.dart';
import 'package:haohsing_flutter/model/request/device/changeEco/ChangeEcoRequestBody.dart';
import 'package:haohsing_flutter/model/request/device/changeHotWaterTemperature/ChangeHotWaterTemperatureRequestBody.dart';
import 'package:haohsing_flutter/model/request/device/changeIceWaterTemperature/ChangeIceWaterTemperatureRequestBody.dart';
import 'package:haohsing_flutter/model/request/device/deviceInfo/DeviceInfoRequestParams.dart';
import 'package:haohsing_flutter/model/request/device/deviceMacExist/DeviceMacExistRequestParams.dart';
import 'package:haohsing_flutter/model/request/device/reheatSettings/ReheatSettingsRequestBody.dart';
import 'package:haohsing_flutter/model/request/device/updateWarranty/UpdateWarrantyRequestBody.dart';
import 'package:haohsing_flutter/model/request/device/warranty/WarrantyRequestParams.dart';
import 'package:haohsing_flutter/model/response/device/addDeviceMember/AddDeviceMemberResponse.dart';
import 'package:haohsing_flutter/model/response/device/deviceInfo/DeviceInfoResponse.dart';
import 'package:haohsing_flutter/model/response/device/deviceMacExist/DeviceMacExistResponse.dart';
import 'package:haohsing_flutter/model/response/device/deviceRegister/DeviceRegisterResponse.dart';
import 'package:haohsing_flutter/model/response/device/homeDeviceInfo/HomeDeviceInfoResponse.dart';
import 'package:haohsing_flutter/model/response/device/updateWarranty/UpdateWarrantyResponse.dart';
import 'package:haohsing_flutter/model/response/device/warranty/WarrantyResponse.dart';
import 'package:haohsing_flutter/model/response/error/Error500/Error500Response.dart';
import "package:haohsing_flutter/net/NetworkInterface.dart";
import 'package:haohsing_flutter/provider/PageProvider.dart';
import 'package:haohsing_flutter/utils/AppLog.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:mime/mime.dart';
import '../model/request/device/addDeviceMember/AddDeviceMemberRequestBody.dart';
import '../model/request/device/deviceMember/DeviceMemberRequestParams.dart';
import '../model/request/device/deviceName/DeviceNameRequestBody.dart';
import '../model/request/device/deviceRegister/DeviceRegisterRequestBody.dart';
import '../model/request/device/deviceScan/DeviceScanRequestParams.dart';
import '../model/request/device/deviceUserPlaceArea/DeviceUserPlaceAreaRequestParams.dart';
import '../model/request/device/deviceValue/DeviceValueRequestBody.dart';
import '../model/request/device/getInstallationRecord/GetInstallationRecordRequestParams.dart';
import '../model/request/device/getMemberDevices/GetMemberDevicesRequestParams.dart';
import '../model/request/device/getMemberDevicesPermissions/GetMemberDevicesPermissionsRequestParams.dart';
import '../model/request/device/setDevicePlace/SetDevicePlaceRequestBody.dart';
import '../model/request/device/setDeviceShare/SetDeviceShareRequestBody.dart';
import '../model/request/device/setFilterLife/SetFilterLifeRequestBody.dart';
import '../model/response/device/deleteDeviceMember/DeleteDeviceMemberRequestParams.dart';
import '../model/response/device/deviceMember/DeviceMemberResponse.dart';
import '../model/response/device/deviceScan/DeviceScanResponse.dart';
import '../model/response/device/getInstallationRecord/GetInstallationRecordResponse.dart';
import '../model/response/device/getMemberDevices/GetMemberDevicesResponse.dart';
import '../model/response/device/getMemberDevicesPermissions/GetMemberDevicesPermissionsResponse.dart';
import '../model/response/device/getShares/GetSharesResponse.dart';
import '../model/response/device/shareReview/ShareReviewRequestParams.dart';
import 'ApiEndPoint.dart';
import 'package:http_parser/http_parser.dart';

class DeviceApiManager {
  final NetworkInterface _networkInterface = NetworkInterface();
  final Ref ref;

  DeviceApiManager(this.ref);

  Future<List<HomeDeviceInfoResponse>?> getDeviceList(token, int placeId, int areaId) async {
    DeviceUserPlaceAreaRequestParams params = DeviceUserPlaceAreaRequestParams(place_id: placeId, area_id: areaId);
    final response = await _networkInterface.get(
      url: ApiEndPoint.deviceUserPlaceArea,
      query: params.toJson(),
      userToken: token,
    );
    List<dynamic> data = response.data as List<dynamic>;
    return data.map((json) => HomeDeviceInfoResponse.fromJson(json as Map<String, dynamic>)).toList();
  }

  Future<DeviceInfoResponse?> getDeviceInfo(token, int deviceId) async {
    DeviceInfoRequestParams params = DeviceInfoRequestParams(deviceId: deviceId);
    final response = await _networkInterface.get(
      url: ApiEndPoint.device,
      query: params.toJson(),
      userToken: token,
    );
    return DeviceInfoResponse.fromJson(response.data as Map<String, dynamic>);
  }

  Future<bool> deleteDevice(token, int deviceId) async {
    DeviceInfoRequestParams params = DeviceInfoRequestParams(deviceId: deviceId);
    final response = await _networkInterface.delete(
      url: ApiEndPoint.device,
      query: params.toJson(),
      userToken: token,
    );
    return response.data;
  }

  Future<bool> deviceValue(token, int deviceId, String statisticKey, String value) async {
    DeviceValueRequestBody body = DeviceValueRequestBody(id: statisticKey, value: value);
    final response = await _networkInterface.post(
      url: ApiEndPoint.deviceValueUrl(deviceId.toString()),
      body: body,
      userToken: token,
    );

    return response.data == true;
  }

  Future<bool> changeIceWaterTemperature(token, int deviceId, String value) async {
    ChangeIceWaterTemperatureRequestBody body = ChangeIceWaterTemperatureRequestBody(value: value);
    final response = await _networkInterface.post(
      url: ApiEndPoint.changeIceWaterTemperature(deviceId.toString()),
      body: body,
      userToken: token,
    );

    return response.data == true;
  }

  Future<bool> changeHotWaterTemperature(token, int deviceId, String value) async {
    ChangeHotWaterTemperatureRequestBody body = ChangeHotWaterTemperatureRequestBody(value: value);
    final response = await _networkInterface.post(
      url: ApiEndPoint.changeHotWaterTemperature(deviceId.toString()),
      body: body,
      userToken: token,
    );

    return response.data == true;
  }

  Future<bool> changeEco(token, int deviceId, String value) async {
    ChangeEcoRequestBody body = ChangeEcoRequestBody(value: value);
    final response = await _networkInterface.post(
      url: ApiEndPoint.changeEco(deviceId.toString()),
      body: body,
      userToken: token,
    );

    return response.data == true;
  }

  Future<bool> reheatSettings(token, int deviceId, String value) async {
    ReheatSettingsRequestBody body = ReheatSettingsRequestBody(value: value);
    final response = await _networkInterface.post(
      url: ApiEndPoint.reheatSettings(deviceId.toString()),
      body: body,
      userToken: token,
    );

    return response.data == true;
  }

  Future<bool> changeDeviceName(token, int deviceId, String deviceName) async {
    DeviceNameRequestBody body = DeviceNameRequestBody(deviceId: deviceId, name: deviceName);
    final response = await _networkInterface.put(
      url: ApiEndPoint.deviceName,
      body: body,
      userToken: token,
    );

    return response.data == true;
  }

  Future<bool> setDevicePlace(token, int? areaId, int? placeId, int deviceId) async {
    SetDevicePlaceRequestBody body = SetDevicePlaceRequestBody(
      areaId: areaId,
      placeId: placeId,
      deviceId: deviceId,
    );
    final response = await _networkInterface.put(
      url: ApiEndPoint.devicePlace,
      body: body,
      userToken: token,
    );

    return response.data == true;
  }

  Future<DeviceScanResponse?> deviceScan(String token, DeviceScanRequestParams params) async {
    try {
      final response = await _networkInterface.get(
        url: ApiEndPoint.deviceScan,
        query: params.toJson(),
        userToken: token,
      );
      return DeviceScanResponse.fromJson(response.data as Map<String, dynamic>);
    } catch (e) {
      if (e is Error500Response) {
        ref.read(pageProvider.notifier).showError(e.message);
        AppLog.e("Device scan failed: ${e.status}, ${e.message}, ${e.errorMessage}");
        return null;
      }
      return null;
    }
  }

  Future<DeviceRegisterResponse?> deviceRegister(
    token, {
    required String sn,
    String? mac,
    required String name,
    required int vendorId,
    required int modelId,
    int? areaId,
    int? placeId,
    required int customerId,
    String? customerAddress,
    String? owner,
    String? warrantyEmail,
    String? warrantyTel,
    required String invDate,
    String? workOrderNumber,
    String? manualBrand,
    List<File> files = const [],
  }) async {
    DeviceRegisterRequestBody body = DeviceRegisterRequestBody(
      sn: sn,
      mac: mac,
      name: name,
      placeId: placeId,
      areaId: areaId,
      vendorId: vendorId,
      modelId: modelId,
      customerId: customerId,
      customerAddress: customerAddress,
      owner: owner,
      warrantyEmail: warrantyEmail,
      warrantyTel: warrantyTel,
      invDate: invDate,
      workOrderNumber: workOrderNumber,
      manualBrand: manualBrand,
    );
    String jsonData = jsonEncode(body.toJson());
    FormData formData = FormData.fromMap({
      'data': MultipartFile.fromString(
        jsonData,
        contentType: MediaType('application', 'json'),
      ),
      'files': files.isNotEmpty
          ? await Future.wait(files.map((file) async {
              String? mimeType = lookupMimeType(file.path);
              if (mimeType == null) {
                throw Exception("無法識別文件類型");
              }
              List<String> mimeParts = mimeType.split('/');

              return await MultipartFile.fromFile(
                file.path,
                filename: file.path.split('/').last,
                contentType: MediaType(mimeParts[0], mimeParts[1]), // 設置文件的 Content-Type
              );
            }).toList())
          : [MultipartFile.fromString('', filename: 'empty.txt')], // 傳遞空文件作為佔位符
    });

    final response = await _networkInterface.post(
        url: ApiEndPoint.deviceRegisterUser, body: formData, userToken: token, contentType: 'multipart/form-data');
    return DeviceRegisterResponse.fromJson(response.data as Map<String, dynamic>);
  }

  Future<List<GetSharesResponse>> getShares(token) async {
    final response = await _networkInterface.get(
      url: ApiEndPoint.deviceShares,
      userToken: token,
    );

    List<dynamic> jsonList = response.data;
    List<GetSharesResponse> shares =
        jsonList.map((json) => GetSharesResponse.fromJson(json as Map<String, dynamic>)).toList();

    return shares;
  }

  Future<bool> shareReview(token, ShareReviewRequestParams shareReviewRequestParams) async {
    final response = await _networkInterface.put(
      url: ApiEndPoint.deviceShare,
      query: shareReviewRequestParams.toJson(),
      userToken: token,
    );

    return response.data;
  }

  Future<List<DeviceMemberResponse>> getDeviceMembers(
      token, DeviceMemberRequestParams deviceMemberRequestParams) async {
    final response = await _networkInterface.get(
      url: ApiEndPoint.devicePlaceUsers,
      query: deviceMemberRequestParams.toJson(),
      userToken: token,
    );

    List<dynamic> jsonList = response.data;
    List<DeviceMemberResponse> deviceMembers =
        jsonList.map((json) => DeviceMemberResponse.fromJson(json as Map<String, dynamic>)).toList();

    return deviceMembers;
  }

  Future<bool> deleteDeviceMember(token, {required int placeId, required int userId}) async {
    DeleteDeviceMemberRequestParams params =
    DeleteDeviceMemberRequestParams(placeId: placeId, userId: userId);
    final response = await _networkInterface.delete(
      url: ApiEndPoint.deviceSharePlace,
      query: params.toJson(),
      userToken: token,
    );

    return response.data;
  }

  Future<AddDeviceMemberResponse> addDeviceMember(token, {required String account, required int placeId}) async {
    AddDeviceMemberRequestBody addDeviceMemberRequestBody =
    AddDeviceMemberRequestBody(account: account, placeId: placeId);
    final response = await _networkInterface.post(
      url: ApiEndPoint.deviceSharePlace,
      body: addDeviceMemberRequestBody,
      userToken: token,
    );
    return AddDeviceMemberResponse.fromJson(response.data as Map<String,dynamic>);
  }

  Future<List<GetMemberDevicesPermissionsResponse>> getMemberDevicesPermissions(token, int placeId, int userId) async {
    GetMemberDevicesPermissionsRequestParams params =
        GetMemberDevicesPermissionsRequestParams(placeId: placeId, userId: userId);
    final response = await _networkInterface.get(
      url: ApiEndPoint.devicePlaceDevices,
      query: params.toJson(),
      userToken: token,
    );

    List<dynamic> jsonList = response.data;
    List<GetMemberDevicesPermissionsResponse> memberDevices =
        jsonList.map((json) => GetMemberDevicesPermissionsResponse.fromJson(json as Map<String, dynamic>)).toList();

    return memberDevices;
  }

  Future<List<GetMemberDevicesResponse>> getMemberDevices(token, int placeId) async {
    GetMemberDevicesRequestParams params = GetMemberDevicesRequestParams(placeId: placeId);
    final response = await _networkInterface.get(
      url: ApiEndPoint.deviceUserPlace,
      query: params.toJson(),
      userToken: token,
    );

    List<dynamic> jsonList = response.data;
    List<GetMemberDevicesResponse> memberDevices =
        jsonList.map((json) => GetMemberDevicesResponse.fromJson(json as Map<String, dynamic>)).toList();

    return memberDevices;
  }

  Future<bool> setDeviceShare(token, List<SetDeviceShareRequestBody> setDeviceShareRequestBody) async {
    final response = await _networkInterface.put(
      url: ApiEndPoint.devicePlaceDevices,
      body: setDeviceShareRequestBody,
      userToken: token,
    );

    return response.data;
  }

  Future<bool> setFilterLife(token, SetFilterLifeRequestBody setFilterLifeRequestBody) async {
    final response = await _networkInterface.put(
      url: ApiEndPoint.deviceFilter,
      body: setFilterLifeRequestBody,
      userToken: token,
    );

    return response.data;
  }

  Future<List<GetInstallationRecordResponse>> getInstallationRecord(
      token, GetInstallationRecordRequestParams params) async {
    final response = await _networkInterface.get(
      url: ApiEndPoint.deviceEngineer,
      query: params.toJson(),
      userToken: token,
    );

    List<GetInstallationRecordResponse> installationRecords = (response.data as List)
        .map((json) => GetInstallationRecordResponse.fromJson(json as Map<String, dynamic>))
        .toList();

    return installationRecords;
  }

  Future<List<String>> getIceTemperatureList(token) async {
    final response = await _networkInterface.get(
      url: ApiEndPoint.deviceDroplistIces,
      userToken: token,
    );
    List<String> dataList = (response.data as List<dynamic>).map((item) => item.toString()).toList();

    return dataList;
  }

  Future<List<String>> getHotTemperatureList(token) async {
    final response = await _networkInterface.get(
      url: ApiEndPoint.deviceDroplistHots,
      userToken: token,
    );
    List<String> dataList = (response.data as List<dynamic>).map((item) => item.toString()).toList();

    return dataList;
  }

  Future<WarrantyResponse> getWarranty(token, {required int deviceId}) async {
    WarrantyRequestParams params = WarrantyRequestParams(
      deviceId: deviceId,
    );
    final response = await _networkInterface.get(
      url: ApiEndPoint.deviceWarranty,
      query: params.toJson(),
      userToken: token,
    );

    return WarrantyResponse.fromJson(response.data as Map<String, dynamic>);
  }

  Future<UpdateWarrantyResponse?> updateWarranty(
    token, {
    required int deviceId,
    required String owner,
    required String warrantyEmail,
    required String warrantyTel,
    required String invDate,
    required String workOrderNumber,
    required String deviceImages,
    List<File> files = const [],
  }) async {
    UpdateWarrantyRequestBody body = UpdateWarrantyRequestBody(
      deviceId: deviceId,
      owner: owner,
      warrantyEmail: warrantyEmail,
      warrantyTel: warrantyTel,
      invDate: invDate,
      workOrderNumber: workOrderNumber,
      deviceImages: deviceImages,
    );
    String jsonData = jsonEncode(body.toJson());
    FormData formData = FormData.fromMap({
      'data': MultipartFile.fromString(
        jsonData,
        contentType: MediaType('application', 'json'),
      ),
      'files': files.isNotEmpty
          ? await Future.wait(files.map((file) async {
        String? mimeType = lookupMimeType(file.path);
        if (mimeType == null) {
          throw Exception("無法識別文件類型");
        }
        List<String> mimeParts = mimeType.split('/');

        return await MultipartFile.fromFile(
          file.path,
          filename: file.path.split('/').last,
          contentType: MediaType(mimeParts[0], mimeParts[1]), // 設置文件的 Content-Type
        );
      }).toList())
          : [MultipartFile.fromString('', filename: 'empty.txt')], // 傳遞空文件作為佔位符
    });

    final response = await _networkInterface.put(
      url: ApiEndPoint.deviceWarranty,
      body: formData,
      userToken: token,
      contentType: 'multipart/form-data',
    );

    return UpdateWarrantyResponse.fromJson(response.data as Map<String, dynamic>);
  }

  Future<DeviceMacExistResponse?> isMacExist(token, {required String mac}) async {
    try {
      DeviceMacExistRequestParams params = DeviceMacExistRequestParams(
        mac: mac,
      );
      final response = await _networkInterface.get(
        url: ApiEndPoint.deviceMacExist,
        query: params.toJson(),
        userToken: token,
      );

      DeviceMacExistResponse macExistResponse =
      DeviceMacExistResponse.fromJson(response.data as Map<String, dynamic>);
      return macExistResponse;
    } catch (e) {
      print("Error checking MAC existence: $e");
      return null;
    }
  }
}
