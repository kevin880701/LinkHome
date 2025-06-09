import 'dart:ui';
import 'package:haohsing_flutter/model/task/TaskStatus.dart';
import 'package:intl/intl.dart';
import 'package:haohsing_flutter/resources/AppResources.dart';

class TaskListItemStyle {
  final String statusFont;
  final Color statusFontColor;
  final Color statusBackground;

  TaskListItemStyle({
    required this.statusFont,
    required this.statusFontColor,
    required this.statusBackground,
  });

  factory TaskListItemStyle.fromStatus({
    required TaskStatus taskStatus,
    required String? appointedDatetime,
  }) {
    DateTime? appointmentTime;

    // 如果 appointedDatetime 不為 null，則解析它
    if (appointedDatetime != null && appointedDatetime.isNotEmpty) {
      try {
        appointmentTime = DateFormat("yyyy-MM-dd HH:mm").parse(appointedDatetime);
      } catch (e) {
        print("Error parsing appointed_datetime: $e");
      }
    }

    final DateTime now = DateTime.now();

    switch (taskStatus) {
      case TaskStatus.needReschedule:
        return TaskListItemStyle(
          statusFont: "需重派",
          statusFontColor: AppColors.white,
          statusBackground: AppColors.yellow,
        );
      case TaskStatus.error:
        return TaskListItemStyle(
          statusFont: "異常",
          statusFontColor: AppColors.white,
          statusBackground: AppColors.errorRed,
        );
      case TaskStatus.completed:
        return TaskListItemStyle(
          statusFont: "完成",
          statusFontColor: AppColors.primaryYellow,
          statusBackground: AppColors.lightGrey2,
        );
      case TaskStatus.cancelled:
        return TaskListItemStyle(
          statusFont: "已取消",
          statusFontColor: AppColors.white,
          statusBackground: AppColors.lightGrey,
        );
      case TaskStatus.scheduled:
      // 如果是 scheduled 狀態，則需要比較 appointedDatetime 和當前時間
        if (appointmentTime != null && appointmentTime.isBefore(now)) {
          // 任務已逾期
          return TaskListItemStyle(
            statusFont: "逾期",
            statusFontColor: AppColors.errorRed,
            statusBackground: AppColors.transparent,
          );
        } else {
          // 任務還未開始，不顯示狀態
          return TaskListItemStyle(
            statusFont: "",
            statusFontColor: AppColors.transparent,
            statusBackground: AppColors.transparent,
          );
        }
      default:
      // 默認情況返回透明狀態
        return TaskListItemStyle(
          statusFont: "",
          statusFontColor: AppColors.transparent,
          statusBackground: AppColors.transparent,
        );
    }
  }
}
