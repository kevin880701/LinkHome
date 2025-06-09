
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import '../../../define.dart';
import 'package:haohsing_flutter/widgets/common/TextWidgets.dart';
import '../../../resources/AppColors.dart';

class OrderStatusListWidget extends HookWidget {
  final ValueNotifier<int> currentIndex;

  const OrderStatusListWidget({super.key,
    required this.currentIndex,
  });

  @override
  Widget build(BuildContext context) {
    List<String> orderStatusList = ['未完成', '已完成', '回報異常'];

    return Container(
      height: 32.sp,
      width: double.infinity,
      child: ListView.separated(
        scrollDirection: Axis.horizontal,
        itemCount: orderStatusList.length,
        padding: EdgeInsets.only(right: 40.sp),
        itemBuilder: (BuildContext context, int index) {
          return GestureDetector(
            onTap: () {
              currentIndex.value = index;
            },
            child: Container(
              alignment: Alignment.center,
              padding: EdgeInsets.fromLTRB(12.sp, 4.sp, 12.sp, 4.sp),
              decoration: BoxDecoration(
                color: index == currentIndex.value
                    ? AppColors.primaryYellow
                    : AppColors.white,
                borderRadius: BorderRadius.circular(96.sp),
              ),
              child: customText(orderStatusList[index],
                  fontSize: 16.sp,
                  fontWeight: FontWeight.w400,
                  color: index == currentIndex.value
                      ? AppColors.white
                      : AppColors.disableGrey),
            ),
          );
        },
        separatorBuilder: (context, index) {
          return SizedBox(width: 12.sp);
        },
      ),
    );
  }
}