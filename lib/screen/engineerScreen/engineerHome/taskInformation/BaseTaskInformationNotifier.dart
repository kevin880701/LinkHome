import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:haohsing_flutter/model/response/maintenance/getTaskInformation/GetTaskInformationResponse.dart';

class TaskInformationState {
  final GetTaskInformationResponse? taskInformation;
  final int mId;

  TaskInformationState({
    this.taskInformation,
    this.mId = -1,
  });

  TaskInformationState copyWith({
    GetTaskInformationResponse? taskInformation,
    int? mId,
  }) {
    return TaskInformationState(
      taskInformation: taskInformation ?? this.taskInformation,
      mId: mId ?? this.mId,
    );
  }
}

abstract class BaseTaskInformationNotifier extends StateNotifier<TaskInformationState> {
  BaseTaskInformationNotifier() : super(TaskInformationState());

  void resetTaskInformation();
  Future<void> updateMId(int mId);
  Future<GetTaskInformationResponse?> getTaskInformation(int mId);
}
