import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:haohsing_flutter/define.dart';
import 'package:haohsing_flutter/model/response/maintenance/getTaskInformation/GetTaskInformationResponse.dart';
import 'package:haohsing_flutter/resources/AppResources.dart';
import 'package:haohsing_flutter/widgets/item/ItemSubTitleWidget.dart';
import 'package:haohsing_flutter/widgets/item/ItemTextWidget.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:haohsing_flutter/widgets/common/TextWidgets.dart';

class EngineerRecordWidget extends HookConsumerWidget {
  final Map<String, Map<String?, Map<String?, List<Value>>>> groupedValues;
  final GetTaskInformationResponse? taskInformation;

  const EngineerRecordWidget({
    super.key,
    required this.groupedValues,
    required this.taskInformation,
  });

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    return Container(
        width: double.infinity,
        child: Column(
          children: [
            if (taskInformation?.type == 2 || taskInformation?.type == 3) ...[
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: groupedValues.keys.map((types) {
                  return Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      // 顯示 types 作為總標題
                      ItemSubTitleWidget(title: '${types}紀錄'),
                      ...groupedValues[types]!.entries.map((group1Entry) {
                        String? group1 = group1Entry.key;
                        return Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            // 維修類型，如果group1存在
                            if (group1 != null && group1.isNotEmpty)
                              Container(
                                width: double.infinity,
                                margin: EdgeInsets.symmetric(vertical: 8.sp),
                                padding: EdgeInsets.all(12.sp),
                                decoration: BoxDecoration(
                                  color: Colors.white,
                                  borderRadius: BorderRadius.circular(12.sp),
                                ),
                                child: Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    customText(
                                      group1,
                                      fontSize: 16.sp,
                                      fontWeight: FontWeight.w600,
                                      color: AppColors.primaryBlack,
                                    ),
                                    ...group1Entry.value.entries.map((group2Entry) {
                                      String? group2 = group2Entry.key;
                                      return Column(
                                        crossAxisAlignment: CrossAxisAlignment.start,
                                        children: [
                                          SizedBox(height: 5),
                                          // 合併group2和item
                                          ...group2Entry.value.map((item) {
                                            String itemLabel = group2 != null && group2.isNotEmpty
                                                ? '• $group2 - ${item.item}${item.remark != null && item.remark!.isNotEmpty ? ''
                                                    '${item.remark}' : ''}'
                                                : '• ${item.item}';
                                            return Padding(
                                              padding: EdgeInsets.only(left: 16.sp, bottom: 4.sp),
                                              child: customText(itemLabel,
                                                  fontWeight: FontWeight.w400,
                                                  fontSize: 16.sp,
                                                  color: AppColors.darkGrey,
                                                  overflow: null),
                                            );
                                          }),
                                        ],
                                      );
                                    }),
                                  ],
                                ),
                              ),
                            // 安裝或保養，如果group1為空但group2有值
                            if ((group1 == null || group1.isEmpty) && group1Entry.value.isNotEmpty)
                              ...group1Entry.value.entries.map((group2Entry) {
                                String? group2 = group2Entry.key;
                                if (group2 != null && group2.isNotEmpty) {
                                  return Container(
                                    width: double.infinity,
                                    margin: EdgeInsets.symmetric(vertical: 8.sp),
                                    padding: EdgeInsets.all(12.sp),
                                    decoration: BoxDecoration(
                                      color: Colors.white,
                                      borderRadius: BorderRadius.circular(12.sp),
                                    ),
                                    child: Column(
                                      crossAxisAlignment: CrossAxisAlignment.start,
                                      children: [
                                        customText(
                                          group2,
                                          fontSize: 16.sp,
                                          fontWeight: FontWeight.w600,
                                          color: AppColors.primaryBlack,
                                        ),
                                        ...group2Entry.value.map((item) {
                                          return Padding(
                                            padding: EdgeInsets.only(left: 16.sp, bottom: 4.sp),
                                            child: Row(
                                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                              children: [
                                                customText(
                                                  '• ${item.item}${item.remark != null && item.remark!.isNotEmpty ? ' - ${item.remark}' : ''}',
                                                  fontWeight: FontWeight.w400,
                                                  fontSize: 16.sp,
                                                  color: AppColors.darkGrey,
                                                ),
                                              ],
                                            ),
                                          );
                                        }),
                                      ],
                                    ),
                                  );
                                } else {
                                  // TDS或驗水，如果group2也為空，直接顯示ItemTextWidget
                                  return Column(
                                    children: group2Entry.value.map((item) {
                                      return ItemTextWidget(
                                        fieldName: item.item,
                                        value: item.value,
                                        valueColor: AppColors.grey,
                                      );
                                    }).toList(),
                                  );
                                }
                              }),
                          ],
                        );
                      }),
                    ],
                  );
                }).toList(),
              )
            ],
            if ((taskInformation?.type == 1 || taskInformation?.type == 5) && taskInformation?.sn != null) ...[
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  ItemSubTitleWidget(title: '${taskInformation?.typeName}紀錄'),
                  ItemTextWidget(
                    fieldName: AppTexts.sn,
                    value: '${taskInformation?.sn}',
                    valueColor: AppColors.grey,
                  ),
                ],
              ),
            ]
          ],
        ));
  }
}
