import 'dart:io';
import 'dart:typed_data';

import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:haohsing_flutter/data/Params.dart';
import 'package:haohsing_flutter/model/request/device/setFilterLife/SetFilterLifeRequestBody.dart';
import 'package:haohsing_flutter/model/request/maintenance/taskDone/TaskDoneRequestBody.dart';
import 'package:haohsing_flutter/model/response/maintenance/maintenanceForm/MaintenanceFormResponse.dart';
import 'package:haohsing_flutter/model/response/maintenance/taskDone/TaskDoneResponse.dart';
import 'package:haohsing_flutter/net/DeviceApiManager.dart';
import 'package:haohsing_flutter/net/MaintenanceApiManager.dart';
import 'package:haohsing_flutter/net/PlaceApiManager.dart';
import 'package:haohsing_flutter/provider/PageProvider.dart';
import 'package:haohsing_flutter/provider/UpdateStateProvider.dart';
import 'package:haohsing_flutter/provider/UserProvider.dart';
import 'package:haohsing_flutter/utils/AppLog.dart';
import 'package:intl/intl.dart';
import 'package:path_provider/path_provider.dart';
import 'package:signature/signature.dart';

class MaintenanceOrderState {
  final int mId;
  final List<MaintenanceFormResponse> replaceFilterList;
  final List<MaintenanceFormResponse> basicMaintenanceList;
  final List<MaintenanceFormResponse> abnormalReasonList;
  final List<MaintenanceFormResponse> repairContentList;
  final List<MaintenanceFormResponse> replacePartList;
  final Map<String, String> filterLife;

  MaintenanceOrderState({
    this.mId = -1,
    this.replaceFilterList = const [],
    this.basicMaintenanceList = const [],
    this.abnormalReasonList = const [],
    this.repairContentList = const [],
    this.replacePartList = const [],
    this.filterLife = const {},
  });

  MaintenanceOrderState copyWith({
    int? mId,
    List<MaintenanceFormResponse>? replaceFilterList,
    List<MaintenanceFormResponse>? basicMaintenanceList,
    List<MaintenanceFormResponse>? abnormalReasonList,
    List<MaintenanceFormResponse>? repairContentList,
    List<MaintenanceFormResponse>? replacePartList,
    Map<String, String>? filterLife,
  }) {
    return MaintenanceOrderState(
      mId: mId ?? this.mId,
      replaceFilterList: List.unmodifiable(replaceFilterList ?? this.replaceFilterList),
      basicMaintenanceList: List.unmodifiable(basicMaintenanceList ?? this.basicMaintenanceList),
      abnormalReasonList: List.unmodifiable(abnormalReasonList ?? this.abnormalReasonList),
      repairContentList: List.unmodifiable(repairContentList ?? this.repairContentList),
      replacePartList: List.unmodifiable(replacePartList ?? this.replacePartList),
      filterLife: filterLife ?? this.filterLife,
    );
  }
}

final maintenanceOrderProvider =
    StateNotifierProvider.autoDispose<MaintenanceOrderNotifier, MaintenanceOrderState>((ref) {
  return MaintenanceOrderNotifier(ref);
});

class MaintenanceOrderNotifier extends StateNotifier<MaintenanceOrderState> {
  MaintenanceOrderNotifier(this.ref) : super(MaintenanceOrderState()) {
    token = ref.read(userProvider).loginResponse?.token ?? "";
    ref.listen<UpdateState>(updateStateProvider, (previous, next) {
      if ((previous?.deviceUpdated != next.deviceUpdated) || (previous?.placeUpdated != next.placeUpdated)) {}
    });
    deviceApiManager = DeviceApiManager(ref);
  }

  final Ref ref;
  late String token = "";
  final MaintenanceApiManager maintenanceApiManager = MaintenanceApiManager.instance;
  final PlaceApiManager placeApiManager = PlaceApiManager.instance;
  late final DeviceApiManager deviceApiManager;

  Future<void> updateMId({required int mId})async {
    state = state.copyWith(mId: mId);
  }

  Future<List<MaintenanceFormResponse>> getMaintenanceForm({required int type}) async {
    try {
      final response = await maintenanceApiManager.getMaintenanceForm(token, type);

      final replaceFilterList = response
          .where((element) => element.group2 == '更換濾芯' && element.code != 'BB6')
          .toList();
      final basicMaintenanceList = response
          .where((element) => element.group2 == '基礎保養' && element.code != 'BD2')
          .toList();
      final filterLife = {for (var item in replaceFilterList) item.code: "3個月"};
      final abnormalReasonList = response.where((element) => element.group1 == '異常原因').toList();
      final repairContentList = response.where((element) => element.group1 == '維修內容').toList();
      final replacePartList = response.where((element) => element.group1 == '更換零件').toList();
      state = state.copyWith(
        replaceFilterList: replaceFilterList,
        basicMaintenanceList: basicMaintenanceList,
        abnormalReasonList: abnormalReasonList,
        repairContentList: repairContentList,
        replacePartList: replacePartList,
        filterLife: filterLife,
      );
      return response;
    } catch (e, stackTrace) {
      AppLog.e("getMaintenanceForm Error：$e");
    }
    return [];
  }

  Future<TaskDoneResponse?> maintenanceFormDone({
    required String errorReason,
    required String fee,
    required int mId,
    int continuance = 0,
    required int status,
    required String? tds,
    required String? waterTesting,
    required List<MaintenanceFormResponse> selectReplaceFilter,
    required List<MaintenanceFormResponse> selectValues,
    required String filterController,
    required String basicMaintenanceController,
    required String abnormalReasonOther,
    required String repairContentOther,
    required String replacePartOther,
    required List<File> oldFilterCorePhoto,
    required List<File> newFilterCorePhoto,
    required List<File> equipmentPhoto,
    required List<File> replacedPartPhoto,
    required SignatureController signatureController,
    String? sn,
  }) async {
    try {
      // 上傳圖片
      if (oldFilterCorePhoto.isNotEmpty) {
        for (var image in oldFilterCorePhoto) {
          await maintenanceApiManager.sentEngineerTaskImage(token, file: image, mId: mId, kind: 22);
        }
      }
      if (newFilterCorePhoto.isNotEmpty) {
        for (var image in newFilterCorePhoto) {
          await maintenanceApiManager.sentEngineerTaskImage(token, file: image, mId: mId, kind: 21);
        }
      }
      if (equipmentPhoto.isNotEmpty) {
        for (var image in equipmentPhoto) {
          await maintenanceApiManager.sentEngineerTaskImage(token, file: image, mId: mId, kind: 31);
        }
      }
      if (replacedPartPhoto.isNotEmpty) {
        for (var image in replacedPartPhoto) {
          await maintenanceApiManager.sentEngineerTaskImage(token, file: image, mId: mId, kind: 32);
        }
      }

      // 上傳簽名圖片
      Uint8List? pngBytes = await signatureController.toPngBytes();
      // 獲取臨時目錄
      final Directory tempDir = await getTemporaryDirectory();
      String filePath = '${tempDir.path}/signature.png';
      // 寫入文件
      File file = File(filePath);
      await file.writeAsBytes(pngBytes!);
      await maintenanceApiManager.sentSignImage(token, file: file, mId: mId);

      List<TaskValue> basicList = selectValues.map((formResponse) {
        return TaskValue(
          code: formResponse.code,
          remark: '',
          value: '1',
        );
      }).toList();

      List<TaskValue> values = [];

      // 檢查 tds 和 waterTesting 是否為空或 null
      if (tds != null && tds.isNotEmpty) {
        values.add(TaskValue(code: 'BA1', remark: '', value: tds));
      }

      if (waterTesting != null && waterTesting.isNotEmpty) {
        values.add(TaskValue(code: 'BA2', remark: '', value: waterTesting));
      }

      if (filterController.isNotEmpty) {
        values.add(TaskValue(code: 'BB6', remark: filterController, value: filterController));
      }

      if (basicMaintenanceController.isNotEmpty) {
        values.add(TaskValue(code: 'BD2', remark: basicMaintenanceController, value: basicMaintenanceController));
      }

      // 如果 abnormalReasonOther 不為空，加入對應的 TaskValue
      if (abnormalReasonOther.isNotEmpty) {
        values.add(TaskValue(code: 'CBA99', remark: abnormalReasonOther, value: '1'));
      }

      // 如果 repairContentOther 不為空，加入對應的 TaskValue
      if (repairContentOther.isNotEmpty) {
        values.add(TaskValue(code: 'CCA99', remark: repairContentOther, value: '1'));
      }

      // 如果 replacePartOther 不為空，加入對應的 TaskValue
      if (replacePartOther.isNotEmpty) {
        values.add(TaskValue(code: 'CDF1', remark: replacePartOther, value: '1'));
      }

      // 將濾心壽命帶入
      // for (int i = 0; i < basicList.length; i++) {
      //   // 如果 filterLife 中有對應的 key，則更新 remark
      //   if (state.filterLife.containsKey(basicList[i].code)) {
      //     // 獲取 filterLife 中對應的 value
      //     String filterLifeValue = state.filterLife[basicList[i].code]!;
      //
      //     // 創建一個新的 TaskValue 來更新 remark
      //     basicList[i] = basicList[i].copyWith(remark: filterLifeValue);
      //   }
      // }

      // 添加基本列表的所有項目
      values.addAll(basicList);
      final response = await maintenanceApiManager.maintenanceFormDone(
        token,
        errorReason: errorReason,
        fee: fee,
        continuance: continuance,
        mId: mId,
        status: status,
        values: values,
        sn: sn,
      );
      if(response?.status == 0){
        ref.read(updateStateProvider.notifier).maintenanceUpdated();
        return response;
      }else{
        ref.read(pageProvider.notifier).showError('${response?.data}');
        return null;
      }
    } catch (e, stackTrace) {
      AppLog.e("getMaintenanceFormDone Error：$e");
    }
    return null;
  }

  Future<void> setFilterLife(
      {required int deviceId,
      required Map<String, String?> filterLife,
      required List<MaintenanceFormResponse> selectReplaceFilter}) async {
    try {
      String todayDate = DateFormat('yyyy-MM-dd').format(DateTime.now());

      await Future.forEach(selectReplaceFilter, (filter) async {
        int lifeMonth = filterLifeList.indexOf(filterLife[filter.code] ?? '') + 1;

        String name = filterMap[filter.code] ?? "";
        String cl = filterClMap[filter.code] ?? "";

        SetFilterLifeRequestBody setFilterLifeRequestBody = SetFilterLifeRequestBody(
          cl: cl,
          deviceId: deviceId,
          installationDate: todayDate,
          lifeMonth: lifeMonth,
          name: name,
        );

        await deviceApiManager.setFilterLife(token, setFilterLifeRequestBody);
      });
    } catch (e, stackTrace) {
      AppLog.e("setFilterLife Error：$e");
    }
  }
}
