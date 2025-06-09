import 'dart:ui';
import 'package:haohsing_flutter/resources/AppResources.dart';

enum TaskStatus {
  draft,          // 暫存
  pending,        // 待處理
  scheduled,      // 已安排
  completed,      // 已完成
  cancelled,      // 已取消
  error,          // 異常
  needReschedule  // 需重派
}

class TaskStatusInfo {
  final String taskNumberStatus;
  final Color taskNumberColor;
  final TaskStatus taskStatus;
  final bool isShowVendorInfo;
  final String titleText;
  final bool isShowFillButton;

  TaskStatusInfo({
    required this.taskNumberStatus,
    required this.taskNumberColor,
    required this.taskStatus,
    required this.isShowVendorInfo,
    required this.titleText,
    required this.isShowFillButton,
  });

  factory TaskStatusInfo.fromStatus({required int status, required int continuance}) {
    TaskStatus taskStatus = getTaskStatus(status, continuance);

    // 判斷 isShowVendorInfo
    bool isShowVendorInfo = taskStatus == TaskStatus.needReschedule ||
        taskStatus == TaskStatus.error ||
        taskStatus == TaskStatus.completed;

    // 判斷 titleText
    String titleText;
    if (taskStatus == TaskStatus.completed || taskStatus == TaskStatus.cancelled) {
      titleText = AppTexts.taskCompleted;
    } else if (taskStatus == TaskStatus.error || taskStatus == TaskStatus.needReschedule) {
      titleText = AppTexts.reportUnusualTask;
    } else {
      titleText = AppTexts.taskInformation;
    }

    // 判斷 isShowFillButton
    bool isShowFillButton = taskStatus == TaskStatus.draft ||
        taskStatus == TaskStatus.pending ||
        taskStatus == TaskStatus.scheduled;

    // 根據 taskStatus 設定對應的 orderNumberStatus 和 orderNumberColor
    switch (taskStatus) {
      case TaskStatus.needReschedule:
        return TaskStatusInfo(
          taskNumberStatus: '-需重派',
          taskNumberColor: AppColors.yellow,
          taskStatus: taskStatus,
          isShowVendorInfo: isShowVendorInfo,
          titleText: titleText,
          isShowFillButton: isShowFillButton,
        );
      case TaskStatus.error:
        return TaskStatusInfo(
          taskNumberStatus: '-異常',
          taskNumberColor: AppColors.errorRed,
          taskStatus: taskStatus,
          isShowVendorInfo: isShowVendorInfo,
          titleText: titleText,
          isShowFillButton: isShowFillButton,
        );
      case TaskStatus.cancelled:
        return TaskStatusInfo(
          taskNumberStatus: '-已取消',
          taskNumberColor: AppColors.disableGrey,
          taskStatus: taskStatus,
          isShowVendorInfo: isShowVendorInfo,
          titleText: titleText,
          isShowFillButton: isShowFillButton,
        );
      default:
        return TaskStatusInfo(
          taskNumberStatus: '',
          taskNumberColor: AppColors.primaryYellow,
          taskStatus: taskStatus,
          isShowVendorInfo: isShowVendorInfo,
          titleText: titleText,
          isShowFillButton: isShowFillButton,
        );
    }
  }
}

// 根據 continuance 和 status 判斷 taskStatus
TaskStatus getTaskStatus(int status, int continuance) {
  if (continuance == 1) {
    return TaskStatus.needReschedule;
  }

  switch (status) {
    case -1:
      return TaskStatus.draft;
    case 0:
      return TaskStatus.pending;
    case 1:
      return TaskStatus.scheduled;
    case 2:
      return TaskStatus.completed;
    case 3:
      return TaskStatus.cancelled;
    case 4:
      return TaskStatus.error;
    default:
      throw ArgumentError('無效的 status 值: $status');
  }
}
