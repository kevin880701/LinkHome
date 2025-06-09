
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:haohsing_flutter/model/response/maintenance/taskType/TaskTypeResponse.dart';
import 'package:haohsing_flutter/resources/AppResources.dart';
import 'package:haohsing_flutter/widgets/common/TextWidgets.dart';

class TaskTypeWidget extends HookWidget {
  final List<TaskTypeResponse> typeList;
  final ValueNotifier<int> currentTypeIndex;

  const TaskTypeWidget({super.key,
    required this.typeList,
    required this.currentTypeIndex,
  });

  @override
  Widget build(BuildContext context) {

    return Container(
      height: 32.sp,
      child: ListView.separated(
        scrollDirection: Axis.horizontal,
        itemCount: typeList.length,
        padding: EdgeInsets.only(left: 18.sp),
        itemBuilder: (BuildContext context, int index) {
          return GestureDetector(
            onTap: () {
              currentTypeIndex.value = index;
            },
            child: Container(
              alignment: Alignment.center,
              padding: EdgeInsets.fromLTRB(16.sp, 4.sp, 16.sp, 4.sp),
              decoration: BoxDecoration(
                color: index == currentTypeIndex.value
                    ? AppColors.primaryYellow
                    : AppColors.white,
                borderRadius: BorderRadius.circular(96.sp),
              ),
              child: customText(typeList[index].name,
                  fontSize: 16.sp,
                  fontWeight: FontWeight.w400,
                  color: index == currentTypeIndex.value
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