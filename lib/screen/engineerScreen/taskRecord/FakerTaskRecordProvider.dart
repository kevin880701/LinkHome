import 'dart:async';

import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:haohsing_flutter/model/response/maintenance/engineerWorkOrder/EngineerWorkOrderResponse.dart';
import 'package:haohsing_flutter/model/response/maintenance/taskType/TaskTypeResponse.dart';

import '../../../data/EngineerFakerData.dart';
import 'BaseTaskRecordNotifier.dart';

final fakerTaskRecordProvider = StateNotifierProvider.autoDispose<FakerTaskRecordNotifier, TaskRecordState>(
      (ref) => FakerTaskRecordNotifier(),
);

class FakerTaskRecordNotifier extends BaseTaskRecordNotifier {
  FakerTaskRecordNotifier() : super();

  @override
  Future<List<EngineerWorkOrderResponse>> getTaskRecord() async {
    // 模擬延遲
    await Future.delayed(const Duration(milliseconds: 300));
    // 這裡直接用 mockEngineerWorkOrderList
    List<EngineerWorkOrderResponse> list = List.from(mockEngineerWorkOrderList);
    list.sort((a, b) {
      DateTime? dateA = a.appointedDatetime != null ? DateTime.tryParse(a.appointedDatetime) : null;
      DateTime? dateB = b.appointedDatetime != null ? DateTime.tryParse(b.appointedDatetime) : null;
      if (dateA == null && dateB == null) return 0;
      if (dateA == null) return 1;
      if (dateB == null) return -1;
      return dateB.compareTo(dateA);
    });
    state = state.copyWith(taskRecordList: list);
    return list;
  }

  @override
  Future<List<TaskTypeResponse>> getTaskType() async {
    await Future.delayed(const Duration(milliseconds: 100));
    // 以 "所有" 為首，並排除"場勘"
    List<TaskTypeResponse> filtered = [
      TaskTypeResponse(id: 0, name: "所有"),
      ...mockTaskTypeList.where((type) => type.name != "場勘")
    ];
    state = state.copyWith(taskTypeList: filtered);
    return filtered;
  }
}
