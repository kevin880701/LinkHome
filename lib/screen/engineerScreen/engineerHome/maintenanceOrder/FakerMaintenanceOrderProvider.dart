import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:haohsing_flutter/model/response/maintenance/maintenanceForm/MaintenanceFormResponse.dart';
import 'package:haohsing_flutter/model/response/maintenance/taskDone/TaskDoneResponse.dart';
import '../../../../data/EngineerFakerData.dart';
import 'BaseMaintenanceOrderNotifier.dart';

final fakerMaintenanceOrderProvider =
StateNotifierProvider.autoDispose<FakerMaintenanceOrderNotifier, MaintenanceOrderState>(
      (ref) => FakerMaintenanceOrderNotifier(),
);

class FakerMaintenanceOrderNotifier extends BaseMaintenanceOrderNotifier {
  FakerMaintenanceOrderNotifier() : super();

  @override
  Future<void> updateMId({required int mId}) async {
    state = state.copyWith(mId: mId);
  }

  @override
  Future<List<MaintenanceFormResponse>> getMaintenanceForm({required int type}) async {
    // 假資料根據 type 回傳對應資料
    List<MaintenanceFormResponse> response;
    switch (type) {
      case 1:
        response = maintenanceFormType1;
        break;
      case 2:
        response = maintenanceFormType2;
        break;
      case 3:
        response = maintenanceFormType3;
        break;
      default:
        response = [];
        break;
    }

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
  }

  @override
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
    required List<dynamic> oldFilterCorePhoto,
    required List<dynamic> newFilterCorePhoto,
    required List<dynamic> equipmentPhoto,
    required List<dynamic> replacedPartPhoto,
    required dynamic signatureController,
    String? sn,
  }) async {
    // 回傳假資料 TaskDoneResponse（你可以自己構造內容）
    return const TaskDoneResponse(status: 0, data: "Mock 成功");
  }

  @override
  Future<void> setFilterLife({
    required int deviceId,
    required Map<String, String?> filterLife,
    required List<MaintenanceFormResponse> selectReplaceFilter,
  }) async {
    // 假資料不需做任何動作
  }
}
