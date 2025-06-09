import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:haohsing_flutter/resources/AppResources.dart';
import 'package:haohsing_flutter/widgets/item/ItemTextWidget.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:intl/intl.dart';

class ArrivalTimeWidget extends HookConsumerWidget {
  final String? appointedDatetime;
  final String? workEndDatetime;
  final String? statusName;

  const ArrivalTimeWidget({
    super.key,
    required this.appointedDatetime,
    required this.workEndDatetime,
    required this.statusName,
  });

  String formatArrivalTime(String? time, {bool isLate = false}) {
    if (time == null || time.isEmpty) {
      return AppTexts.na;
    }

    final inputFormat = DateFormat('yyyy-MM-dd HH:mm');
    final dateFormat = DateFormat('yyyy年MM月dd日');
    final timeFormat = DateFormat('HH:mm');

    final parsedTime = inputFormat.parse(time);
    final currentTime = DateTime.now();

    final formattedDate = dateFormat.format(parsedTime);
    final formattedTime = timeFormat.format(parsedTime);

    if (isLate && parsedTime.isBefore(currentTime)) {
      return '$formattedDate\n$formattedTime 逾期';
    }

    return '$formattedDate\n$formattedTime';
  }

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    // 判斷是否是 "已安排" 或 "已延遲"
    final isScheduledOrDelayed = statusName == '已安排' || statusName == '已延遲';

    // 預期到達時間是否逾期
    final isExpectedLate = isScheduledOrDelayed && appointedDatetime != null && DateTime.parse(appointedDatetime!).isBefore(DateTime.now());

    // 實際到達時間是否逾期：如果實際到達時間超過預期到達時間，視為逾期
    final isActualLate = workEndDatetime != null && appointedDatetime != null
        ? DateTime.parse(workEndDatetime!).isAfter(DateTime.parse(appointedDatetime!))
        : false;

    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        ItemTextWidget(
          fieldName: AppTexts.expectedArrivalTime,
          value: formatArrivalTime(appointedDatetime, isLate: isScheduledOrDelayed),
          valueColor: isExpectedLate ? AppColors.errorRed : AppColors.grey,
        ),
        if (!isScheduledOrDelayed)
          ItemTextWidget(
            fieldName: AppTexts.actualArrivalTime,
            value: formatArrivalTime(workEndDatetime, isLate: isActualLate),
            valueColor: isActualLate ? AppColors.errorRed : AppColors.grey,
          ),
      ],
    );
  }
}
