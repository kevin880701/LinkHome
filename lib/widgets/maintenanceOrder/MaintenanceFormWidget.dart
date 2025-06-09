import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:collection/collection.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:haohsing_flutter/model/response/maintenance/maintenanceForm/MaintenanceFormResponse.dart';
import 'package:haohsing_flutter/resources/AppResources.dart';
import 'package:haohsing_flutter/widgets/common/TextWidgets.dart';

class MaintenanceFormsWidget extends HookWidget {
  final String fieldName;
  final List<MaintenanceFormResponse> maintenanceForms;
  final ValueNotifier<List<MaintenanceFormResponse>> selectItem;
  final TextEditingController? textController;

  const MaintenanceFormsWidget({
    super.key,
    required this.fieldName,
    required this.maintenanceForms,
    required this.selectItem,
    this.textController,
  });

  @override
  Widget build(BuildContext context) {
    List<MaintenanceFormResponse> filteredForms = maintenanceForms.where((form) => form.group2 != '其它').toList();
    // 使用 `groupBy` 進行分組，這次按 `group2` 分組
    Map<String, List<MaintenanceFormResponse>> groupedForms = groupBy(
      filteredForms,
      (MaintenanceFormResponse form) => form.group2,
    );

    // 檢查有多少個不同的 group2 值
    bool hasMultipleGroups = groupedForms.length > 1;

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
          customText(
            fieldName,
            fontWeight: FontWeight.w400,
            fontSize: 16.sp,
          ),
          SizedBox(height: 8.sp),
          if (hasMultipleGroups)
            // 有多個 group2 時顯示分組標題
            ...groupedForms.entries.map((entry) {
              return Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  if (entry.key.isNotEmpty)
                    Padding(
                      padding: EdgeInsets.symmetric(vertical: 8.sp),
                      child: customText(
                        entry.key, // 顯示 group2 作為標題
                        fontWeight: FontWeight.w500,
                        fontSize: 14.sp,
                        color: AppColors.primaryYellow,
                      ),
                    ),
                  Wrap(
                    spacing: 8.0,
                    runSpacing: 8.0,
                    children: entry.value.map((fault) {
                      bool isSelected = selectItem.value.contains(fault);
                      return GestureDetector(
                        onTap: () {
                          if (isSelected) {
                            selectItem.value = List.from(selectItem.value)..remove(fault);
                          } else {
                            selectItem.value = List.from(selectItem.value)..add(fault);
                          }
                        },
                        child: Container(
                          decoration: BoxDecoration(
                            color: isSelected ? AppColors.primaryYellow : AppColors.bgColor,
                            borderRadius: BorderRadius.circular(8.sp),
                          ),
                          padding: EdgeInsets.symmetric(vertical: 4.sp, horizontal: 12.sp),
                          child: customText(fault.item,
                              fontWeight: FontWeight.w400,
                              fontSize: 16.sp,
                              color: isSelected ? AppColors.white : AppColors.black),
                        ),
                      );
                    }).toList(),
                  ),
                ],
              );
            }).toList()
          else
            // 只有一個 group2 時顯示無分組的項目
            Wrap(
              spacing: 8.0,
              runSpacing: 8.0,
              children: filteredForms.map((fault) {
                bool isSelected = selectItem.value.contains(fault);
                return GestureDetector(
                  onTap: () {
                    if (isSelected) {
                      selectItem.value = List.from(selectItem.value)..remove(fault);
                    } else {
                      selectItem.value = List.from(selectItem.value)..add(fault);
                    }
                  },
                  child: Container(
                    decoration: BoxDecoration(
                      color: isSelected ? AppColors.primaryYellow : AppColors.bgColor,
                      borderRadius: BorderRadius.circular(8.sp),
                    ),
                    padding: EdgeInsets.symmetric(vertical: 4.sp, horizontal: 12.sp),
                    child: customText(fault.item,
                        fontWeight: FontWeight.w400,
                        fontSize: 16.sp,
                        color: isSelected ? AppColors.white : AppColors.black),
                  ),
                );
              }).toList(),
            ),
          if (textController != null) ...[
            SizedBox(height: 12.sp),
            Container(
              decoration: BoxDecoration(
                color: Colors.grey[200],
                borderRadius: BorderRadius.circular(8.0),
              ),
              padding: EdgeInsets.symmetric(horizontal: 12.0),
              child: TextField(
                cursorColor: AppColors.primaryYellow,
                controller: textController,
                maxLength: 95,
                decoration: InputDecoration(
                  hintText: AppTexts.fillOther,
                  border: InputBorder.none,
                  counterText: '',
                ),
              ),
            )
          ]
        ],
      ),
    );
  }
}
