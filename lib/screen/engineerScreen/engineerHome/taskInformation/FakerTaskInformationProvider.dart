import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:haohsing_flutter/model/response/maintenance/getTaskInformation/GetTaskInformationResponse.dart';
import 'package:haohsing_flutter/net/MaintenanceApiManager.dart';
import 'package:haohsing_flutter/net/PlaceApiManager.dart';
import 'package:haohsing_flutter/provider/UpdateStateProvider.dart';
import 'package:haohsing_flutter/provider/UserProvider.dart';
import 'package:haohsing_flutter/utils/AppLog.dart';

import '../../../../data/EngineerFakerData.dart';
import 'BaseTaskInformationNotifier.dart';

final fakerTaskInformationProvider = StateNotifierProvider.autoDispose<FakerTaskInformationNotifier, TaskInformationState>(
      (ref) => FakerTaskInformationNotifier(),
);

class FakerTaskInformationNotifier extends BaseTaskInformationNotifier {
  FakerTaskInformationNotifier() : super();

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
    final mock = mockGetTaskInformationList.firstWhere(
          (e) => e.mId == mId,
      orElse: () => mockGetTaskInformationList.first,
    );
    state = state.copyWith(taskInformation: mock, mId: mId);
    return mock;
  }
}
