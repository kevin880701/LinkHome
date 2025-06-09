import 'package:auto_route/auto_route.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:haohsing_flutter/define.dart';
import 'package:haohsing_flutter/model/response/maintenance/engineerWorkOrder/EngineerWorkOrderResponse.dart';
import 'package:haohsing_flutter/model/task/TaskListItemStyle.dart';
import 'package:haohsing_flutter/model/task/TaskStatus.dart';
import 'package:haohsing_flutter/resources/AppResources.dart';
import 'package:haohsing_flutter/route/AppRouter.gr.dart';
import 'package:intl/intl.dart';
import 'package:haohsing_flutter/widgets/common/TextWidgets.dart';
import 'package:haohsing_flutter/widgets/common/ImageWidgets.dart';

class WorkOrderListWidget extends HookWidget {
  final List<EngineerWorkOrderResponse> engineerWorkOrders;

  const WorkOrderListWidget({
    super.key,
    required this.engineerWorkOrders,
  });

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      itemCount: engineerWorkOrders.length,
      itemBuilder: (context, index) {

        final order = engineerWorkOrders[index];
        TaskStatus taskStatus = getTaskStatus(order.status, order.continuance);
        TaskListItemStyle taskListItemStyle = TaskListItemStyle.fromStatus(taskStatus: taskStatus,
            appointedDatetime: order.appointedDatetime,);

        return GestureDetector(onTap: (){
          AutoRouter.of(context).push(TaskInformationRoute(mId: order.mId));
        },child:Container(
            padding: EdgeInsets.fromLTRB(8.sp, 8.sp, 16.sp, 8.sp),
            margin: EdgeInsets.all(4.sp),
            decoration: BoxDecoration(
              color: AppColors.white,
              borderRadius: BorderRadius.circular(8.sp),
            ),
            width: double.infinity,
            child: Row(
              children: [
                Column(
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: [
                    customText(
                      DateFormat('HH:mm').format(DateTime.parse(order.appointedDatetime)),
                      fontWeight: FontWeight.w500,
                      fontSize: 16.sp,
                      color: AppColors.darkGrey,
                    ),
                    Container(
                      constraints: BoxConstraints(
                        minWidth: 52.sp,
                      ),
                        alignment: Alignment.center,
                        padding: EdgeInsets.all(4.sp),
                        decoration: BoxDecoration(
                          color: taskListItemStyle.statusBackground,
                          borderRadius: BorderRadius.circular(96.sp),
                        ),child: customText(taskListItemStyle.statusFont,
                      fontSize: 14.sp,
                      fontWeight: FontWeight.w500,
                      color: taskListItemStyle.statusFontColor,
                    ),)
                  ],
                ),
                SizedBox(width: 8.sp,),
                Expanded(
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    customText(
                      order.address ?? "無住址",
                      fontWeight: FontWeight.w500,
                      fontSize: 16.sp,
                    ),
                    SizedBox(height: 4.sp,),
                    customText(
                      order.name,
                      fontWeight: FontWeight.w400,
                      fontSize: 14.sp,
                      color: AppColors.darkGrey,
                    ),
                    SizedBox(height: 4.sp,),
                    customText(
                      "${order.typeName} - ${order.mId}",
                      fontWeight: FontWeight.w400,
                      fontSize: 14.sp,
                      color: AppColors.darkGrey,
                    ),],
                )),
                assetImage(
                  'ic_arrow_right.png',
                  width: 24.sp,
                  height: 24.sp,
                  color: AppColors.primaryBlack
                )
              ],
            )));
      },
    );
  }
}