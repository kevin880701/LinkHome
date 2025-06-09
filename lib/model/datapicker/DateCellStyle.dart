import 'dart:ui';

import 'package:haohsing_flutter/resources/AppResources.dart';
import 'package:intl/intl.dart';

enum DateDisplayMode { day, month, year }

class DateCellStyle {
  final Color backgroundColor;
  final Color borderColor;
  final Color fontColor;
  final String displayFormat;
  final DateDisplayMode displayMode;

  DateCellStyle({
    required this.backgroundColor,
    required this.borderColor,
    required this.fontColor,
    required this.displayFormat,
    required this.displayMode,
  });

  static DateCellStyle getDateCellStyle({
    required DateTime date,
    required List<DateTime> visibleDates,
    required DateTime today,
    required DateTime? selectedDate,
  }) {
    // 計算可見日期的間隔
    final difference = visibleDates[1].difference(visibleDates[0]);
    DateDisplayMode displayMode;

    // 判斷顯示模式
    if (difference.inDays >= 365) {
      displayMode = DateDisplayMode.year; // 顯示年
    } else if (difference.inDays >= 28) {
      displayMode = DateDisplayMode.month; // 顯示月
    } else {
      displayMode = DateDisplayMode.day; // 顯示日
    }

    // 選中、今天、當前月狀態判斷
    bool isSelected = false;
    bool isToday = false;
    bool isInCurrentMonth = false;

    if (displayMode == DateDisplayMode.day) {
      isSelected = selectedDate != null &&
          DateFormat('yyyy-MM-dd').format(selectedDate) ==
              DateFormat('yyyy-MM-dd').format(date);
      isToday = DateFormat('yyyy-MM-dd').format(today) ==
          DateFormat('yyyy-MM-dd').format(date);
      isInCurrentMonth = DateFormat('MM-yyyy').format(date) ==
          DateFormat('MM-yyyy').format(selectedDate!);
    } else if (displayMode == DateDisplayMode.month) {
      isSelected = selectedDate != null &&
          DateFormat('MM-yyyy').format(selectedDate) ==
              DateFormat('MM-yyyy').format(date);
      isToday = DateFormat('MM-yyyy').format(today) ==
          DateFormat('MM-yyyy').format(date);
      isInCurrentMonth = DateFormat('yyyy').format(date) ==
          DateFormat('yyyy').format(selectedDate!);
    } else if (displayMode == DateDisplayMode.year) {
      isSelected = selectedDate != null &&
          DateFormat('yyyy').format(selectedDate) ==
              DateFormat('yyyy').format(date);
      isToday = DateFormat('yyyy').format(today) ==
          DateFormat('yyyy').format(date);
      isInCurrentMonth = false; // 年模式下無需月份判斷
    }

    Color backgroundColor;
    Color borderColor;
    Color fontColor;

    if (isSelected) {
      backgroundColor = AppColors.primaryYellow;
      borderColor = AppColors.primaryYellow;
      fontColor = AppColors.white;
    } else if (isToday) {
      backgroundColor = AppColors.transparent;
      borderColor = AppColors.primaryYellow;
      fontColor = AppColors.primaryBlack;
    } else if (!isInCurrentMonth && displayMode == DateDisplayMode.day) {
      backgroundColor = AppColors.transparent;
      borderColor = AppColors.transparent;
      fontColor = AppColors.grey;
    } else {
      backgroundColor = AppColors.transparent;
      borderColor = AppColors.transparent;
      fontColor = AppColors.primaryBlack;
    }

    // 根據顯示模式設置日期顯示格式
    String displayFormat;
    if (displayMode == DateDisplayMode.year) {
      displayFormat = 'yyyy';
    } else if (displayMode == DateDisplayMode.month) {
      displayFormat = 'MMM';
    } else {
      displayFormat = 'd';
    }

    return DateCellStyle(
      backgroundColor: backgroundColor,
      borderColor: borderColor,
      fontColor: fontColor,
      displayFormat: displayFormat,
      displayMode: displayMode,
    );
  }
}
