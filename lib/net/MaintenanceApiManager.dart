import 'dart:io';
import 'package:haohsing_flutter/model/request/maintenance/sentEngineerTaskImage/SentEngineerTaskImageRequestParams.dart';
import 'package:haohsing_flutter/model/response/maintenance/taskDone/TaskDoneResponse.dart';
import 'package:haohsing_flutter/model/response/maintenance/taskType/TaskTypeResponse.dart';
import 'package:http_parser/http_parser.dart';
import 'package:dio/dio.dart';
import 'package:haohsing_flutter/model/request/maintenance/getTaskInformation/GetTaskInformationRequestParams.dart';
import "package:haohsing_flutter/net/NetworkInterface.dart";
import 'package:mime/mime.dart';
import '../model/request/maintenance/engineerWorkOrder/EngineerWorkOrderRequestParams.dart';
import '../model/request/maintenance/getMId/GetMIdRequestBody.dart';
import '../model/request/maintenance/getTaskRecord/GetTaskRecordRequestParams.dart';
import '../model/request/maintenance/maintenanceForm/MaintenanceFormRequestParams.dart';
import '../model/request/maintenance/sendTask/SendTaskRequestBody.dart';
import '../model/request/maintenance/sentTaskImage/SentTaskImageRequestParams.dart';
import '../model/request/maintenance/taskDone/TaskDoneRequestBody.dart';
import '../model/response/maintenance/engineerWorkOrder/EngineerWorkOrderResponse.dart';
import '../model/response/maintenance/getMId/GetMIdResponse.dart';
import '../model/response/maintenance/getTaskInformation/GetTaskInformationResponse.dart';
import '../model/response/maintenance/maintenanceForm/MaintenanceFormResponse.dart';
import 'ApiEndPoint.dart';

class MaintenanceApiManager {
  MaintenanceApiManager._();

  static final MaintenanceApiManager instance = MaintenanceApiManager._();

  final NetworkInterface _networkInterface = NetworkInterface();

  Future<List<MaintenanceFormResponse>> sendMaintenanceForm(token, MaintenanceFormRequestParams params) async {
    final response = await _networkInterface.get(
      url: ApiEndPoint.maintenanceForm,
      query: params.toJson(),
      userToken: token,
    );
    List<dynamic> data = response.data as List<dynamic>;
    return data.map((json) => MaintenanceFormResponse.fromJson(json as Map<String, dynamic>)).toList();
  }

  Future<List<MaintenanceFormResponse>> getMaintenanceForm(token, int type) async {
    MaintenanceFormRequestParams params = MaintenanceFormRequestParams(type: type);
    final response = await _networkInterface.get(
      url: ApiEndPoint.maintenanceForm,
      query: params.toJson(),
      userToken: token,
    );
    List<dynamic> data = response.data as List<dynamic>;
    return data.map((json) => MaintenanceFormResponse.fromJson(json as Map<String, dynamic>)).toList();
  }

  Future<GetMIdResponse?> getMId(token, int deviceId) async {
    GetMIdRequestBody body = GetMIdRequestBody(deviceId: deviceId);
    final response = await _networkInterface.post(
      url: ApiEndPoint.maintenance,
      body: body,
      userToken: token,
    );
    return GetMIdResponse.fromJson(response.data as Map<String, dynamic>);
  }

  Future<bool> sendTask(token, SendTaskRequestBody body) async {
    final response = await _networkInterface.put(
      url: ApiEndPoint.maintenance,
      body: body,
      userToken: token,
    );
    return response.data;
  }

  Future<String> sentEngineerTaskImage(token, {required File file, required int mId, required int kind}) async {
    String? mimeType = lookupMimeType(file.path);
    if (mimeType == null) {
      throw Exception("無法識別文件類型");
    }

    List<String> mimeParts = mimeType.split('/');

    FormData formData = FormData.fromMap({
      "file": await MultipartFile.fromFile(
        file.path,
        filename: file.path.split('/').last,
        contentType: MediaType(mimeParts[0], mimeParts[1]), // 動態設定文件的 Content-Type
      ),
    });
    SentEngineerTaskImageRequestParams params = SentEngineerTaskImageRequestParams(mId: mId, kind: kind);
    final response = await _networkInterface.put(
      url: ApiEndPoint.maintenanceEngineerImage,
      body: formData,
      query: params.toJson(),
      contentType: 'multipart/form-data',
      userToken: token,
    );

    return response.data;
  }

  Future<List<EngineerWorkOrderResponse>> getEngineerWorkOrder(token, {required int year, required int month, int? day})
  async {
    EngineerWorkOrderRequestParams params = EngineerWorkOrderRequestParams(year: year, month: month, day: day);
    final response = await _networkInterface.get(
      url: ApiEndPoint.maintenanceEngineer,
      query: params.toJson(),
      userToken: token,
    );
    List<dynamic> data = response.data as List<dynamic>;
    return data.map((json) => EngineerWorkOrderResponse.fromJson(json as Map<String, dynamic>)).toList();
  }

  Future<GetTaskInformationResponse> getTaskInformation(token, int mId) async {
    GetTaskInformationRequestParams params = GetTaskInformationRequestParams(mId: mId);
    final response = await _networkInterface.get(
      url: ApiEndPoint.maintenance,
      query: params.toJson(),
      userToken: token,
    );
    return GetTaskInformationResponse.fromJson(response.data as Map<String, dynamic>);
  }

  Future<TaskDoneResponse?> maintenanceFormDone(
    token,
      {
       required String errorReason,
       required String fee,
       required int continuance,
       required int mId,
       required int status,
       required List<TaskValue> values,
       String? sn,}
  ) async {

    TaskDoneRequestBody body = TaskDoneRequestBody(
        errorReason: errorReason, fee: fee, continuance: continuance, mId: mId, status: status, values: values, sn: sn);
    final response = await _networkInterface.put(
      url: ApiEndPoint.maintenanceDone,
      body: body,
      userToken: token,
    );
    return TaskDoneResponse.fromJson(response.data as Map<String, dynamic>) ;
  }

  Future<String> sentTaskImage({token, required File file, required int mId}) async {
    String? mimeType = lookupMimeType(file.path);
    if (mimeType == null) {
      throw Exception("無法識別文件類型");
    }

    List<String> mimeParts = mimeType.split('/');

    FormData formData = FormData.fromMap({
      "file": await MultipartFile.fromFile(
        file.path,
        filename: file.path.split('/').last,
        contentType: MediaType(mimeParts[0], mimeParts[1]), // 動態設定文件的 Content-Type
      ),
    });
    SentTaskImageRequestParams params = SentTaskImageRequestParams(mId: mId);
    final response = await _networkInterface.put(
      url: ApiEndPoint.maintenanceUserImage,
      body: formData,
      query: params.toJson(),
      contentType: 'multipart/form-data',
      userToken: token,
    );

    return response.data;
  }

  Future<String> sentSignImage(token, {required File file, required int mId}) async {
    String? mimeType = lookupMimeType(file.path);
    if (mimeType == null) {
      throw Exception("無法識別文件類型");
    }

    List<String> mimeParts = mimeType.split('/');

    FormData formData = FormData.fromMap({
      "file": await MultipartFile.fromFile(
        file.path,
        filename: file.path.split('/').last,
        contentType: MediaType(mimeParts[0], mimeParts[1]), // 動態設定文件的 Content-Type
      ),
    });
    SentTaskImageRequestParams params = SentTaskImageRequestParams(mId: mId);
    final response = await _networkInterface.put(
      url: ApiEndPoint.maintenanceSignImage,
      body: formData,
      query: params.toJson(),
      contentType: 'multipart/form-data',
      userToken: token,
    );

    return response.data;
  }

  Future<List<EngineerWorkOrderResponse>> getTaskRecord({required token, required int period}) async {
    GetTaskRecordRequestParams params = const GetTaskRecordRequestParams(period: 3);
    final response = await _networkInterface.get(
      url: ApiEndPoint.maintenanceEngineerPeriod,
      query: params.toJson(),
      userToken: token,
    );
    List<dynamic> data = response.data as List<dynamic>;
    return data.map((json) => EngineerWorkOrderResponse.fromJson(json as Map<String, dynamic>)).toList();
  }

  Future<List<TaskTypeResponse>> getTaskType({required String token}) async {
    final response = await _networkInterface.get(
      url: ApiEndPoint.maintenanceTypes,
      userToken: token,
    );
    List<dynamic> data = response.data as List<dynamic>;
    return data.map((json) => TaskTypeResponse.fromJson(json as Map<String, dynamic>)).toList();
  }
}
