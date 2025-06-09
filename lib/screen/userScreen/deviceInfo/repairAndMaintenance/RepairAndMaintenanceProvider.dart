import 'dart:io';

import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:haohsing_flutter/model/request/maintenance/sendTask/SendTaskRequestBody.dart';
import 'package:haohsing_flutter/model/response/device/getVendorInfo/GetVendorInfoResponse.dart';
import 'package:haohsing_flutter/model/response/maintenance/getMId/GetMIdResponse.dart';
import 'package:haohsing_flutter/model/response/maintenance/maintenanceForm/MaintenanceFormResponse.dart';
import 'package:haohsing_flutter/model/response/maintenance/taskType/TaskTypeResponse.dart';
import 'package:haohsing_flutter/net/MaintenanceApiManager.dart';
import 'package:haohsing_flutter/net/VendorApiManager.dart';
import 'package:haohsing_flutter/provider/UpdateStateProvider.dart';
import 'package:haohsing_flutter/provider/UserProvider.dart';
import 'package:haohsing_flutter/utils/AppLog.dart';

class RepairAndMaintenanceState {
  final List<TaskTypeResponse> taskTypeList;
  final GetVendorInfoResponse? vendorInfo;

  RepairAndMaintenanceState({
    this.taskTypeList = const [],
    this.vendorInfo,
  });

  RepairAndMaintenanceState copyWith({
    List<TaskTypeResponse>? taskTypeList,
    GetVendorInfoResponse? vendorInfo,
  }) {
    return RepairAndMaintenanceState(
      taskTypeList: List.unmodifiable(taskTypeList ?? this.taskTypeList),
      vendorInfo: vendorInfo ?? this.vendorInfo,
    );
  }
}

final repairAndMaintenanceProvider = StateNotifierProvider.autoDispose<RepairAndMaintenanceNotifier, RepairAndMaintenanceState>(
        (ref) {
  return RepairAndMaintenanceNotifier(ref);
});

class RepairAndMaintenanceNotifier extends StateNotifier<RepairAndMaintenanceState> {
  RepairAndMaintenanceNotifier(this.ref) : super(RepairAndMaintenanceState()) {
    token = ref.read(userProvider).loginResponse?.token ?? "";
    ref.listen<UpdateState>(updateStateProvider, (previous, next) {
      if ((previous?.placeUpdated != next.placeUpdated)) {
      }
    });
  }

  final Ref ref;
  late String token = "";
  final MaintenanceApiManager maintenanceApiManager = MaintenanceApiManager.instance;
  final VendorApiManager vendorApiManager = VendorApiManager.instance;

  Future<List<MaintenanceFormResponse>> getMaintenanceForm({required int type}) async {
    try {
      final response = await maintenanceApiManager.getMaintenanceForm(token, type);

      return response;
    } catch (e, stackTrace) {
      AppLog.e("getMaintenanceForm Error：$e");
    }
    return [];
  }

  Future<bool> sendTaskInformation({
    required int deviceId,
    required String description,
    required List<MaintenanceFormResponse> maintenanceFormResponses,
    required String expectedDaysOfWeek,
    required String expectedTimeOfWeek,
    required String name,
    required String tel,
    required int type,
    required List<File> medias,
    required String sn,
  }) async {
    try {
      var getMIdResponse = await getMId(deviceId: deviceId);
      if (getMIdResponse == null) {
        return false;
      }
      List<Code> convertToCodeList =  maintenanceFormResponses.map((maintenanceForm) {
        return Code(
          code: maintenanceForm.code,
          remark: "",
          value: "1",
        );
      }).toList();
      SendTaskRequestBody sendTaskRequestBody = SendTaskRequestBody(
          mId: getMIdResponse.mId,
          description: description,
          codes: convertToCodeList,
          expectedDaysOfWeek: expectedDaysOfWeek,
          expectedTimeOfWeek: expectedTimeOfWeek,
          name: name,
          tel: tel,
          type: type,
          sn: sn);
      await maintenanceApiManager.sendTask(token, sendTaskRequestBody);
      await sentTaskImage(mId: getMIdResponse.mId, medias: medias);
      return true;
    } catch (e, stackTrace) {
      AppLog.e("getTaskInformation Error：$e");
    }
    return false;
  }

  Future<GetMIdResponse?> getMId({required int deviceId}) async {
    try {
      return await maintenanceApiManager.getMId(token, deviceId);
    } catch (e, stackTrace) {
      AppLog.e("getMId Error：$e");
    }
    return null;
  }

  Future<bool> sentTaskImage({required List<File> medias, required int mId}) async {
    try {
      for (File image in medias) {
        File file = File(image.path);
        String response = await maintenanceApiManager.sentTaskImage(token: token, file: file, mId: mId);
        AppLog.e("Image uploaded, response: $response");
      }
      return true;
    } catch (e, stackTrace) {
      AppLog.e("sentTaskImage Error：$e");
    }
    return false;
  }

  Future<List<TaskTypeResponse>> getTaskType() async {
    try {
      List<TaskTypeResponse> response = await maintenanceApiManager.getTaskType(token: token!);
      List<TaskTypeResponse> filteredResponse = response.where((taskType) {
        return taskType.name == '保養' || taskType.name == '維修' || taskType.name == '退貨';
      }).toList();
      state = state.copyWith(taskTypeList: filteredResponse);
      return filteredResponse;
    } catch (e, stackTrace) {
      AppLog.e("getTaskType Error：$e");
    }
    return [];
  }

  Future<GetVendorInfoResponse?> getVendorInfo(int vendorId) async {
    try {
      final response = await vendorApiManager.getVendorInfo(token, vendorId: vendorId);
      state = state.copyWith(vendorInfo: response);
      return response;
    } catch (e, stackTrace) {
      AppLog.e("getVendorInfo Error：$e");
    }
    return null;
  }
}
