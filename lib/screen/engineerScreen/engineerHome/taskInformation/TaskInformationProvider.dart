import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:haohsing_flutter/model/response/maintenance/getTaskInformation/GetTaskInformationResponse.dart';
import 'package:haohsing_flutter/net/MaintenanceApiManager.dart';
import 'package:haohsing_flutter/net/PlaceApiManager.dart';
import 'package:haohsing_flutter/provider/UpdateStateProvider.dart';
import 'package:haohsing_flutter/provider/UserProvider.dart';
import 'package:haohsing_flutter/utils/AppLog.dart';

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

final taskInformationProvider = StateNotifierProvider.autoDispose<TaskInformationNotifier, TaskInformationState>(
        (ref) {
  return TaskInformationNotifier(ref);
});

class TaskInformationNotifier extends StateNotifier<TaskInformationState> {
  TaskInformationNotifier(this.ref) : super(TaskInformationState()) {
    token = ref.read(userProvider).loginResponse?.token ?? "";
    ref.listen<UpdateState>(updateStateProvider, (previous, next) {
      if ((previous?.maintenanceUpdated != next.maintenanceUpdated)) {
        getTaskInformation(state.mId);
      }
    });
  }

  final Ref ref;
  late String token = "";
  final MaintenanceApiManager maintenanceApiManager = MaintenanceApiManager.instance;
  final PlaceApiManager placeApiManager = PlaceApiManager.instance;

  void resetTaskInformation() {
    state = TaskInformationState(taskInformation: null, mId: -1);
  }

  Future<void> updateMId(int mId) async {
    state = state.copyWith(mId: mId);
  }

  Future<GetTaskInformationResponse?> getTaskInformation(int mId) async {
    try {
      final response = await maintenanceApiManager.getTaskInformation(token, mId);
      state = state.copyWith(taskInformation: response);
      return response;
    } catch (e, stackTrace) {
      AppLog.e("getTaskInformation Error：$e");
    }
    return null;
  }
}
