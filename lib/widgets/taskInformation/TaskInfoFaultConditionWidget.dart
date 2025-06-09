import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:haohsing_flutter/model/response/maintenance/getTaskInformation/GetTaskInformationResponse.dart';
import 'package:haohsing_flutter/resources/AppResources.dart';
import 'package:haohsing_flutter/widgets/common/TextWidgets.dart';

class TaskInfoFaultConditionWidget extends HookWidget {
  final String title;
  final List<Value> values;
  final bool isShowGroup2;

  const TaskInfoFaultConditionWidget({
    super.key,
    required this.title,
    required this.values,
    this.isShowGroup2 = true,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.symmetric(vertical: 6.sp),
      padding: EdgeInsets.all(16.sp),
      width: double.infinity,
      decoration: BoxDecoration(
        color: AppColors.white,
        borderRadius: BorderRadius.circular(8.sp),
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          customText(title,
            fontWeight: FontWeight.w500,
            fontSize: 18.sp,),
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,children: values.map((value) {
            return customText("• ${(isShowGroup2)?'${value.group2}-':''}${value.item}", fontWeight: FontWeight.w400, color:
            AppColors.darkGrey,
                fontSize: 16.sp) ;
          }).toList(),)
        ],
      ),
    );
  }
}
