import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:haohsing_flutter/model/response/maintenance/engineerWorkOrder/EngineerWorkOrderResponse.dart';
import 'package:haohsing_flutter/model/response/maintenance/taskType/TaskTypeResponse.dart';

class TaskRecordState {
  final List<EngineerWorkOrderResponse> taskRecordList;
  final List<TaskTypeResponse> taskTypeList;

  TaskRecordState({
    this.taskRecordList = const [],
    this.taskTypeList = const [],
  });

  TaskRecordState copyWith({
    List<EngineerWorkOrderResponse>? taskRecordList,
    List<TaskTypeResponse>? taskTypeList,
  }) {
    return TaskRecordState(
      taskRecordList: List.unmodifiable(taskRecordList ?? this.taskRecordList),
      taskTypeList: List.unmodifiable(taskTypeList ?? this.taskTypeList),
    );
  }
}

abstract class BaseTaskRecordNotifier extends StateNotifier<TaskRecordState> {
  BaseTaskRecordNotifier() : super(TaskRecordState());

  Future<List<EngineerWorkOrderResponse>> getTaskRecord();
  Future<List<TaskTypeResponse>> getTaskType();
}
