import 'package:auto_route/auto_route.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:haohsing_flutter/define.dart';
import 'package:haohsing_flutter/model/response/maintenance/maintenanceForm/MaintenanceFormResponse.dart';
import 'package:haohsing_flutter/resources/AppResources.dart';
import 'package:haohsing_flutter/utils/dialog/widget/DialogTitleBar.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:haohsing_flutter/widgets/common/TextWidgets.dart';

class BottomFaultConditionDialog extends HookConsumerWidget {
  const BottomFaultConditionDialog({
    super.key,
    required this.title,
    required this.list,
    this.onFinishTap,
    required this.selectItem,
  });

  final String title;
  final List<MaintenanceFormResponse> list;
  final void Function(List<MaintenanceFormResponse> selectItem)? onFinishTap;
  final List<MaintenanceFormResponse> selectItem;

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final selectedFaults = useState<List<MaintenanceFormResponse>>(selectItem);

    Map<String, List<MaintenanceFormResponse>> groupedData = {};
    for (var data in list) {
      if (!groupedData.containsKey(data.group2)) {
        groupedData[data.group2] = [];
      }
      groupedData[data.group2]!.add(data);
    }

    return Dialog(
      alignment: Alignment.bottomCenter,
      insetPadding: EdgeInsets.only(top: 72.sp),
      child: Container(
        padding: EdgeInsets.fromLTRB(16.sp, 20.sp, 16.sp, 20.sp),
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(16),
          color: AppColors.white,
        ),
        child: Column(
          mainAxisSize: MainAxisSize.min,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            DialogTitleBar(isBack: false,
              finishOnTap: () {
                onFinishTap!(selectItem);
              },),
            SizedBox(
              height: 16.sp,
            ),
            customText(title,
                fontWeight: FontWeight.w600,
                fontSize: 16.sp,
                textAlign: TextAlign.center),
            SizedBox(
              height: 16.sp,
            ),
            customText(AppTexts.faultConditionIllustrate,
                fontWeight: FontWeight.w400,
                fontSize: 14.sp,
                textAlign: TextAlign.center
            ,color: AppColors.grey),
            Expanded(child: ListView(
              children: groupedData.entries.map((entry) {
                return Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Container(
                      margin: EdgeInsets.fromLTRB(0, 0, 0, 8.sp),
                      child: customText(entry.key, fontWeight: FontWeight.w400, fontSize: 16.sp, color: AppColors.grey),
                    ),
                    Wrap(
                      spacing: 8.0,
                      runSpacing: 8.0,
                      children: entry.value.map((fault) {
                        bool isSelected = selectedFaults.value.contains(fault);
                        return GestureDetector(
                            onTap: () {
                              if (isSelected) {
                                selectedFaults.value = List.from(selectedFaults.value)..remove(fault);
                              } else {
                                selectedFaults.value = List.from(selectedFaults.value)..add(fault);
                              }
                              selectItem
                                ..clear()
                                ..addAll(selectedFaults.value);
                            },
                            child: Container(
                          decoration: BoxDecoration(
                            color: isSelected?AppColors.primaryYellow:AppColors.bgColor,
                            borderRadius: BorderRadius.circular(8.sp),
                          ),
                          padding: EdgeInsets.symmetric(vertical: 4.sp, horizontal: 16.sp),
                          child: customText(fault.item, fontWeight: FontWeight.w400, fontSize: 16.sp ,color:
                          isSelected?AppColors.white:AppColors.black),
                        ));
                      }).toList(),
                    ),
                  ],
                );
              }).toList(),
            ))
          ],
        ),
      ),
    );
  }
}
