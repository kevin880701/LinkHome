import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:haohsing_flutter/define.dart';
import 'package:haohsing_flutter/model/datapicker/DateCellStyle.dart';
import 'package:haohsing_flutter/model/response/maintenance/engineerWorkOrder/EngineerWorkOrderResponse.dart';
import 'package:haohsing_flutter/resources/AppResources.dart';
import 'package:haohsing_flutter/resources/AppTexts.dart';
import 'package:haohsing_flutter/utils/datePicker/datepicker/datepicker.dart';
import 'package:haohsing_flutter/utils/datePicker/datepicker/src/date_picker/date_picker_manager.dart';
import 'package:intl/intl.dart';
import 'package:haohsing_flutter/widgets/common/TextWidgets.dart';

class DatePickerWidget extends HookWidget {
  final Map<String, List<EngineerWorkOrderResponse>> groupedWorkOrders;
  final ValueNotifier<DateTime?> selectDate;
  final ValueNotifier<DateTime> selectMonth;

  const DatePickerWidget({
    super.key,
    required this.groupedWorkOrders,
    required this.selectDate,
    required this.selectMonth,
  });

  @override
  Widget build(BuildContext context) {
    double screenHeight = MediaQuery.of(context).size.height;
    final DateTime today = DateTime.now();
    final DateRangePickerController _controller = DateRangePickerController();

    return Container(
      padding: EdgeInsets.all(16),
      decoration: BoxDecoration(
        color: AppColors.white,
        borderRadius: BorderRadius.circular(16.sp),
      ),
      width: double.infinity,
      child: Column(
        children: [
          Stack(
            children: [
              Align(
                alignment: Alignment.center,
                child: customText(
                  AppTexts.schedule,
                  fontWeight: FontWeight.w500,
                  color: AppColors.black,
                  fontSize: 20.sp,
                ),
              ),
              Align(
                alignment: Alignment.centerRight,
                child: GestureDetector(
                  onTap: () {
                    WidgetsBinding.instance.addPostFrameCallback((_) {
                      selectDate.value = today;
                      _controller.displayDate = today;
                    });
                  },
                  child: customText(AppTexts.today,
                      fontWeight: FontWeight.w500,
                      color: AppColors.primaryYellow,
                      fontSize: 20.sp),
                ),
              ),
            ],
          ),
          SizedBox(height: 8.sp),
          Container(
            color: Colors.white,
            padding: EdgeInsets.fromLTRB(12, 0, 12, 0),
            height: screenHeight / 3.3,
            child: SfDateRangePicker(
              controller: _controller,
              minDate: DateTime.now().add(const Duration(days: -200)),
              maxDate: DateTime.now().add(const Duration(days: 500)),
              headerStyle: const DateRangePickerHeaderStyle(
                textAlign: TextAlign.center,
                textStyle: TextStyle(
                  fontSize: 18,
                  fontWeight: FontWeight.w600,
                  color: AppColors.black,
                ),
              ),
              showNavigationArrow: true,
              todayHighlightColor: Colors.black,
              onSelectionChanged: (args) {
                if (args.value is DateTime) {
                  WidgetsBinding.instance.addPostFrameCallback((_) {
                    selectDate.value = args.value;
                  });
                }
              },
              onViewChanged: (DateRangePickerViewChangedArgs args) {
                WidgetsBinding.instance.addPostFrameCallback((_) {
                  final startDate = args.visibleDateRange.startDate!;
                  final endDate = args.visibleDateRange.endDate!;
                  final middleDate = startDate.add(
                    Duration(days: endDate.difference(startDate).inDays ~/ 2),
                  );

                  selectMonth.value = middleDate;
                });
              },
              monthViewSettings: DateRangePickerMonthViewSettings(
                showTrailingAndLeadingDates: true,
                firstDayOfWeek: 7,
                viewHeaderStyle: const DateRangePickerViewHeaderStyle(
                  textStyle: TextStyle(
                    fontSize: 14,
                    color: Colors.black,
                    fontWeight: FontWeight.w600,
                  ),
                ),
                specialDates: groupedWorkOrders.keys
                    .map((date) => DateTime.parse(date))
                    .toList(),
              ),
              cellBuilder: (context, cellDetails) {
                final date = cellDetails.date;
                final dateKey = DateFormat('yyyy-MM-dd').format(date);
                List<EngineerWorkOrderResponse> workOrdersForDate =
                    groupedWorkOrders[dateKey]
                            ?.where((order) => order.status == 1)
                            .toList() ??
                        [];

                List<Color> indicatorColors = workOrdersForDate.map((order) {
                  DateTime appointedDate =
                      DateTime.parse(order.appointedDatetime);
                  if (appointedDate.isBefore(DateTime.now())) {
                    return AppColors.lightGrey;
                  } else {
                    return AppColors.green;
                  }
                }).toList();

                // 限制最多只顯示三個指示點，並優先顯示綠色
                indicatorColors = indicatorColors.take(3).toList();
                indicatorColors.sort((a, b) => a == AppColors.green ? -1 : 1);

                DateCellStyle style = DateCellStyle.getDateCellStyle(
                  date: date,
                  visibleDates: cellDetails.visibleDates,
                  today: today,
                  selectedDate: selectDate.value,
                );
                return GestureDetector(
                  onTap: () {
                    selectDate.value = date;
                  },
                  child: Container(
                    decoration: (style.displayMode == DateDisplayMode.day)
                        ? _MonthCellDecoration(
                            borderColor: style.borderColor,
                            backgroundColor: style.backgroundColor,
                            indicatorColors: indicatorColors,
                            margin: EdgeInsets.all(10),
                          )
                        : BoxDecoration(
                            color: style.backgroundColor,
                            border: Border.all(color: style.borderColor),
                            borderRadius: BorderRadius.circular(8),
                          ),
                    child: Center(
                      child: Text(
                        DateFormat(style.displayFormat).format(date),
                        style: TextStyle(
                          color: style.fontColor,
                          fontWeight: FontWeight.w600,
                          fontSize: 14,
                        ),
                      ),
                    ),
                  ),
                );
              },
            ),
          ),
        ],
      ),
    );
  }
}

class _MonthCellDecoration extends Decoration {
  _MonthCellDecoration({
    this.borderColor,
    this.backgroundColor,
    required this.indicatorColors, // 指示點顏色列表
    this.margin = const EdgeInsets.all(10),
  });

  final Color? borderColor;
  final Color? backgroundColor;
  final List<Color> indicatorColors;
  final EdgeInsets margin;

  @override
  BoxPainter createBoxPainter([VoidCallback? onChanged]) {
    return _MonthCellDecorationPainter(
      borderColor: borderColor,
      backgroundColor: backgroundColor,
      indicatorColors: indicatorColors, // 傳遞指示點顏色數組
      margin: margin,
    );
  }
}

class _MonthCellDecorationPainter extends BoxPainter {
  _MonthCellDecorationPainter({
    this.borderColor,
    this.backgroundColor,
    required this.indicatorColors,
    required this.margin,
  });

  final Color? borderColor;
  final Color? backgroundColor;
  final List<Color> indicatorColors;
  final EdgeInsets margin;

  @override
  void paint(Canvas canvas, Offset offset, ImageConfiguration configuration) {
    final Rect bounds = offset & configuration.size!;
    final Rect adjustedBounds = bounds.deflate(margin.horizontal / 2);
    _drawDecoration(canvas, adjustedBounds);
  }

  void _drawDecoration(Canvas canvas, Rect bounds) {
    final Paint paint = Paint();

    if (backgroundColor != null) {
      paint.color = backgroundColor!;
      canvas.drawCircle(bounds.center, bounds.width / 2, paint);
    }

    if (borderColor != null) {
      paint.style = PaintingStyle.stroke;
      paint.color = borderColor!;
      paint.strokeWidth = 1;
      canvas.drawCircle(bounds.center, bounds.width / 2, paint);
    }

    // 繪製指示點
    paint.style = PaintingStyle.fill; // 設置為實心
    const double circleRadius = 2.5;
    const double circleSpacing = 4.0;
    final double totalWidth = (circleRadius * 2 * indicatorColors.length) +
        (circleSpacing * (indicatorColors.length - 1));
    final double startX = bounds.center.dx - totalWidth / 2;
    final double indicatorYPosition =
        bounds.bottom + margin.bottom / 2 + circleRadius + 2;

    for (int i = 0; i < indicatorColors.length; i++) {
      paint.color = indicatorColors[i];
      double xOffset = startX + i * (circleRadius * 2 + circleSpacing) + 2;
      canvas.drawCircle(
          Offset(xOffset, indicatorYPosition), circleRadius, paint);
    }
  }
}
