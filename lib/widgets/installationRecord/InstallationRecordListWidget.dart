import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:haohsing_flutter/data/Params.dart';
import 'package:haohsing_flutter/define.dart';
import 'package:haohsing_flutter/model/response/device/getInstallationRecord/GetInstallationRecordResponse.dart';
import 'package:haohsing_flutter/resources/AppResources.dart';
import 'package:haohsing_flutter/utils/dialog/DialogManager.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:intl/intl.dart';
import 'package:haohsing_flutter/widgets/common/TextWidgets.dart';
import 'package:haohsing_flutter/widgets/common/ImageWidgets.dart';

class InstallationRecordListWidget extends HookConsumerWidget {
  final List<GetInstallationRecordResponse> recordList;
  final TextEditingController controller;

  const InstallationRecordListWidget({
    super.key,
    required this.recordList,
    required this.controller,
  });

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final recordMap = useState<Map<String, List<GetInstallationRecordResponse>>>({});
    final searchText = useState<String>("");

    final filterTimeIndex = useState(0);

    DateTime currentTime = DateTime.now();
    DateTime filterDate;

    switch (filterTimeIndex.value) {
      case 0:
        filterDate = currentTime.subtract(Duration(days: 30));
        break;
      case 1:
        filterDate = currentTime.subtract(Duration(days: 60));
        break;
      case 2:
        filterDate = currentTime.subtract(Duration(days: 90));
        break;
      default:
        filterDate = currentTime.subtract(Duration(days: 90));
    }

    void setTaskRecord() {
      recordMap.value = {};

      // 先對 taskRecords 根據 appointedDatetime 進行排序
      recordList.sort((a, b) {
        DateTime? dateA = a.installationDate != null ? DateTime.tryParse(a.installationDate.toString()) : null;
        DateTime? dateB = b.installationDate != null ? DateTime.tryParse(b.installationDate.toString()) : null;

        if (dateA == null && dateB == null) {
          return 0; // 都為 null，保持不變
        } else if (dateA == null) {
          return 1; // a 的日期為 null，將其排在後面
        } else if (dateB == null) {
          return -1; // b 的日期為 null，將其排在後面
        } else {
          return dateA.compareTo(dateB); // 兩者皆不為 null，按日期進行比較
        }
      });
      List<GetInstallationRecordResponse> filteredRecords = recordList.where((record) {
        // 根據 controller.text 進行篩選
        bool matchesSearch =
            record.mac.toString().contains(searchText.value) || record.modelName.contains(searchText.value);

        return matchesSearch; // 只有同時匹配類型和搜尋條件才顯示
      }).toList();

      for (var record in filteredRecords) {
        DateTime? appointedTime =
            record.installationDate != null ? DateTime.tryParse(record.installationDate!.toString()) : null;

        // 根據 filterDate 過濾任務，只顯示 appointedDatetime 在 filterDate 之後的
        if (appointedTime != null && appointedTime.isAfter(filterDate)) {
          String date = DateFormat('yyyy年MM月dd日').format(appointedTime);

          if (!recordMap.value.containsKey(date)) {
            recordMap.value[date] = [];
          }
          recordMap.value[date]?.add(record);
        }
      }
    }

    useEffect(() {
      setTaskRecord();

      controller.addListener(() {
        searchText.value = controller.text;
      });

      return () {
        controller.removeListener(() {});
      };
    }, [recordList, filterTimeIndex.value, searchText.value]);

    return Stack(
      children: [
        ListView.builder(
          shrinkWrap: true, // 避免嵌套滾動衝突
          itemCount: recordMap.value.keys.length,
          itemBuilder: (context, index) {
            String date = recordMap.value.keys.elementAt(index);
            List<GetInstallationRecordResponse> recordsForDate = recordMap.value[date]!;

            return Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: customText(
                    date,
                    fontSize: 16.sp,
                    fontWeight: FontWeight.w500,
                  ),
                ),
                ListView.builder(
                  shrinkWrap: true, // 解決嵌套 ListView 滾動衝突
                  physics: NeverScrollableScrollPhysics(), // 禁止內層滾動
                  itemCount: recordsForDate.length,
                  itemBuilder: (context, taskIndex) {
                    GetInstallationRecordResponse record = recordsForDate[taskIndex];

                    return GestureDetector(
                        onTap: () {},
                        child: Container(
                          padding: EdgeInsets.fromLTRB(8.sp, 16.sp, 16.sp, 16.sp),
                          margin: EdgeInsets.only(bottom: 8.sp),
                          decoration: BoxDecoration(
                            color: AppColors.white,
                            borderRadius: BorderRadius.circular(16.sp),
                          ),
                          child: Column(
                            children: [
                              Row(
                                children: [
                                  customText(AppTexts.model, fontWeight: FontWeight.w400, fontSize: 16.sp),
                                  Expanded(
                                      child: customText(record.modelName,
                                          fontWeight: FontWeight.w400,
                                          fontSize: 16.sp,
                                          color: AppColors.grey,
                                          overflow: null,
                                          textAlign: TextAlign.end))
                                ],
                              ),
                              Padding(
                                padding: EdgeInsets.symmetric(vertical: 8.sp),
                                child: Divider(
                                  height: 1,
                                  color: AppColors.borderGrey,
                                ),
                              ),
                              Row(
                                children: [
                                  customText(AppTexts.mac, fontWeight: FontWeight.w400, fontSize: 16.sp),
                                  Expanded(
                                      child: customText(record.mac ?? "",
                                          fontWeight: FontWeight.w400,
                                          fontSize: 16.sp,
                                          color: AppColors.grey,
                                          overflow: null,
                                          textAlign: TextAlign.end))
                                ],
                              ),
                              Padding(
                                padding: EdgeInsets.symmetric(vertical: 8.sp),
                                child: Divider(
                                  height: 1,
                                  color: AppColors.borderGrey,
                                ),
                              ),
                              Row(
                                children: [
                                  customText(AppTexts.regionInstitution, fontWeight: FontWeight.w400, fontSize: 16.sp),
                                  Expanded(
                                      child: customText(record.customerArea ?? "",
                                          fontWeight: FontWeight.w400,
                                          fontSize: 16.sp,
                                          color: AppColors.grey,
                                          overflow: null,
                                          textAlign: TextAlign.end))
                                ],
                              ),
                              Padding(
                                padding: EdgeInsets.symmetric(vertical: 8.sp),
                                child: Divider(
                                  height: 1,
                                  color: AppColors.borderGrey,
                                ),
                              ),
                              Row(
                                children: [
                                  customText(AppTexts.installationDate, fontWeight: FontWeight.w400, fontSize: 16.sp),
                                  Expanded(
                                      child: customText(
                                          DateFormat('yyyy年MM月dd日\nHH:mm')
                                              .format(DateTime.parse(record.installationDate.toString())),
                                          fontWeight: FontWeight.w400,
                                          fontSize: 16.sp,
                                          color: AppColors.grey,
                                          overflow: null,
                                          textAlign: TextAlign.end))
                                ],
                              ),
                            ],
                          ),
                        ));
                  },
                ),
              ],
            );
          },
        ),
        GestureDetector(
          onTap: () {
            showBottomListDialog(
              context,
              title: AppTexts.time,
              list: taskRecordFilterTime,
              defaultText: taskRecordFilterTime[filterTimeIndex.value],
              onFinishTap: (index) {
                filterTimeIndex.value = index;
                AutoRouter.of(context).popForced();
              },
            );
          },
          child: Align(
              alignment: Alignment.topRight,
              child: IntrinsicWidth(
                child: Container(
                  padding: EdgeInsets.symmetric(vertical: 6.sp, horizontal: 10.sp),
                  decoration: BoxDecoration(
                    color: AppColors.primaryYellow,
                    borderRadius: BorderRadius.circular(96.sp),
                  ),
                  child: Row(
                    children: [
                      customText(
                        notifyFilterTime[filterTimeIndex.value],
                        fontWeight: FontWeight.w500,
                        fontSize: 14.sp,
                        color: AppColors.white,
                      ),
                      SizedBox(
                        width: 4.sp,
                      ),
                      assetImage('ic_triangle.png', width: 8.sp, height: 8.sp, color: AppColors.white)
                    ],
                  ),
                ),
              )),
        ),
      ],
    );
  }
}
