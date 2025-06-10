import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:haohsing_flutter/model/response/maintenance/getTaskInformation/GetTaskInformationResponse.dart';
import 'package:haohsing_flutter/net/MaintenanceApiManager.dart';
import 'package:haohsing_flutter/net/PlaceApiManager.dart';
import 'package:haohsing_flutter/provider/UpdateStateProvider.dart';
import 'package:haohsing_flutter/provider/UserProvider.dart';
import 'package:haohsing_flutter/utils/AppLog.dart';

import 'BaseTaskInformationNotifier.dart';

final taskInformationProvider = StateNotifierProvider.autoDispose<TaskInformationNotifier, TaskInformationState>(
        (ref) {
  return TaskInformationNotifier(ref);
});

class TaskInformationNotifier extends BaseTaskInformationNotifier {
  TaskInformationNotifier(this.ref) : super() {
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

  @override
  void resetTaskInformation() {
    state = TaskInformationState(taskInformation: null, mId: -1);
  }

  @override
  Future<void> updateMId(int mId) async {
    state = state.copyWith(mId: mId);
  }

  @override
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
