import 'dart:io';

import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:haohsing_flutter/model/response/maintenance/maintenanceForm/MaintenanceFormResponse.dart';
import 'package:haohsing_flutter/model/response/maintenance/taskDone/TaskDoneResponse.dart';
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

abstract class BaseMaintenanceOrderNotifier extends StateNotifier<MaintenanceOrderState> {
  BaseMaintenanceOrderNotifier() : super(MaintenanceOrderState());

  Future<void> updateMId({required int mId});
  Future<List<MaintenanceFormResponse>> getMaintenanceForm({required int type});
  Future<TaskDoneResponse?> maintenanceFormDone({
    required String errorReason,
    required String fee,
    required int mId,
    int continuance,
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
  });
  Future<void> setFilterLife({
    required int deviceId,
    required Map<String, String?> filterLife,
    required List<MaintenanceFormResponse> selectReplaceFilter,
  });
}
