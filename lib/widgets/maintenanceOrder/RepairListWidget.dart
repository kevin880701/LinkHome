
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:haohsing_flutter/resources/AppResources.dart';
import 'package:haohsing_flutter/widgets/common/TextWidgets.dart';

class RepairListWidget extends HookWidget {
  final List<String> repairList;
  final ValueNotifier<int> currentRepairIndex;

  const RepairListWidget({super.key,
    required this.repairList,
    required this.currentRepairIndex,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 32.sp,
      child: ListView.separated(
        scrollDirection: Axis.horizontal,
        itemCount: repairList.length,
        itemBuilder: (BuildContext context, int index) {
          return GestureDetector(
            onTap: () {
              currentRepairIndex.value = index;
            },
            child: Container(
              alignment: Alignment.center,
              padding: EdgeInsets.fromLTRB(12.sp, 4.sp, 12.sp, 4.sp),
              decoration: BoxDecoration(
                color: index == currentRepairIndex.value
                    ? AppColors.primaryYellow
                    : AppColors.white,
                borderRadius: BorderRadius.circular(96.sp),
              ),
              child: customText(repairList[index],
                  fontSize: 16.sp,
                  fontWeight: FontWeight.w500,
                  color: index == currentRepairIndex.value
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