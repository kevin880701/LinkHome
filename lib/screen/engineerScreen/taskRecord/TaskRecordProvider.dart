
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:haohsing_flutter/model/response/maintenance/engineerWorkOrder/EngineerWorkOrderResponse.dart';
import 'package:haohsing_flutter/model/response/maintenance/taskType/TaskTypeResponse.dart';
import 'package:haohsing_flutter/net/MaintenanceApiManager.dart';
import 'package:haohsing_flutter/provider/UpdateStateProvider.dart';
import 'package:haohsing_flutter/provider/UserProvider.dart';
import 'package:haohsing_flutter/utils/AppLog.dart';

import 'BaseTaskRecordNotifier.dart';

final taskRecordProvider = StateNotifierProvider.autoDispose<TaskRecordNotifier, TaskRecordState>(
        (ref) {
      return TaskRecordNotifier(ref);
    });

class TaskRecordNotifier extends BaseTaskRecordNotifier {
  TaskRecordNotifier(this.ref) : super() {
    token = ref.read(userProvider).loginResponse?.token ?? "";
    ref.listen<UpdateState>(updateStateProvider, (previous, next) {
      if ((previous?.maintenanceUpdated != next.maintenanceUpdated)) {
        getTaskRecord();
      }
    });
  }

  final Ref ref;
  late String token = "";
  final MaintenanceApiManager maintenanceApiManager = MaintenanceApiManager.instance;

  Future<List<EngineerWorkOrderResponse>> getTaskRecord() async {
    try {
      List<EngineerWorkOrderResponse> response = await maintenanceApiManager.getTaskRecord(token: token, period: 3);

      response.sort((a, b) {
        DateTime? dateA = a.appointedDatetime != null ? DateTime.tryParse(a.appointedDatetime) : null;
        DateTime? dateB = b.appointedDatetime != null ? DateTime.tryParse(b.appointedDatetime) : null;

        if (dateA == null && dateB == null) {
          return 0;
        } else if (dateA == null) {
          return 1;
        } else if (dateB == null) {
          return -1;
        } else {
          return dateB.compareTo(dateA); // 較新的日期排在前面
        }
      });
      state = state.copyWith(taskRecordList: response);
      return response;
    } catch (e, stackTrace) {
      AppLog.e("getTaskRecord Error：$e");
    }
    return [];
  }

  Future<List<TaskTypeResponse>> getTaskType() async {
    try {
      List<TaskTypeResponse> response = await maintenanceApiManager.getTaskType(token: token!);
      response.insert(0, TaskTypeResponse(id: 0, name: "所有"));
      List<TaskTypeResponse> filteredResponse = response.where((taskType) {
        return taskType.name != '場勘';
      }).toList();

      state = state.copyWith(taskTypeList: filteredResponse);
      return filteredResponse;
    } catch (e, stackTrace) {
      AppLog.e("getTaskType Error：$e");
    }
    return [];
  }
}
