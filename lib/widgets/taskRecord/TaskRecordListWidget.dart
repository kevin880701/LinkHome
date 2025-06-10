import 'package:auto_route/auto_route.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:haohsing_flutter/data/Params.dart';
import 'package:haohsing_flutter/define.dart';
import 'package:haohsing_flutter/model/response/maintenance/engineerWorkOrder/EngineerWorkOrderResponse.dart';
import 'package:haohsing_flutter/model/task/TaskListItemStyle.dart';
import 'package:haohsing_flutter/model/task/TaskStatus.dart';
import 'package:haohsing_flutter/resources/AppResources.dart';
import 'package:haohsing_flutter/route/AppRouter.gr.dart';
import 'package:haohsing_flutter/screen/engineerScreen/taskRecord/TaskRecordProvider.dart';
import 'package:haohsing_flutter/utils/dialog/DialogManager.dart';
import 'package:haohsing_flutter/widgets/engineerHome/WorkOrderListWidget.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:intl/intl.dart';
import 'package:haohsing_flutter/widgets/common/TextWidgets.dart';
import 'package:haohsing_flutter/widgets/common/ImageWidgets.dart';

import '../../provider/UserProvider.dart';
import '../../screen/engineerScreen/taskRecord/FakerTaskRecordProvider.dart';

class TaskRecordListWidget extends HookConsumerWidget {
  final ValueNotifier<int> currentTypeIndex;
  final TextEditingController controller;

  const TaskRecordListWidget({
    super.key,
    required this.currentTypeIndex,
    required this.controller,
  });

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final screenWidth = MediaQuery.of(context).size.width;
    final token = ref.read(userProvider).loginResponse?.token ?? "";
    final provider = (token == '@@@user@@@' || token == '@@@engineer@@@')
        ? fakerTaskRecordProvider
        : taskRecordProvider;

    final maintenanceState = ref.watch(provider);

    final taskRecordMap =
        useState<Map<String, List<EngineerWorkOrderResponse>>>({});
    final abnormalTaskRecords = useState<List<EngineerWorkOrderResponse>>([]);
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
      abnormalTaskRecords.value = [];
      taskRecordMap.value = {};

      // 過濾任務，根據 currentTypeIndex 和 controller.text 進行篩選
      List<EngineerWorkOrderResponse> filteredTasks =
          maintenanceState.taskRecordList.where((task) {
        // 判斷當前選擇任務類型
        bool matchesType =
            currentTypeIndex.value == 0 // 當 currentTypeIndex 為 0 時，顯示所有任務
                ? true
                : task.typeName ==
                    maintenanceState.taskTypeList[currentTypeIndex.value].name;

        // 根據 controller.text 進行篩選
        bool matchesSearch =
            task.mId.toString().contains(controller.value.text) ||
                task.name.contains(controller.value.text);

        return matchesType && matchesSearch; // 只有同時匹配類型和搜尋條件才顯示
      }).toList();

      // 先處理異常任務，不考慮 filterDate
      for (var task in filteredTasks) {
        // 當 continuance == 1 或 status == 4 時，將任務加入到異常任務列表
        if (task.continuance == 1 || task.status == 4) {
          abnormalTaskRecords.value.add(task);
        }
      }

      // 再處理正常任務，根據 filterDate 過濾並分類
      for (var task in filteredTasks) {
        DateTime? appointedTime = task.appointedDatetime != null
            ? DateTime.tryParse(task.appointedDatetime!)
            : null;

        // 過濾正常任務（不屬於異常任務的）
        if (!(task.continuance == 1 || task.status == 4)) {
          // 根據 filterDate 過濾任務，只顯示 appointedDatetime 在 filterDate 之後的
          if (appointedTime != null && appointedTime.isAfter(filterDate)) {
            String date = DateFormat('yyyy年MM月dd日').format(appointedTime);

            if (!taskRecordMap.value.containsKey(date)) {
              taskRecordMap.value[date] = [];
            }
            taskRecordMap.value[date]?.add(task);
          }
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
    }, [
      maintenanceState.taskRecordList,
      filterTimeIndex.value,
      currentTypeIndex.value,
      searchText.value
    ]);

    return (abnormalTaskRecords.value.isNotEmpty ||
            taskRecordMap.value.keys.isNotEmpty)
        ? ListView(
            children: [
              // 顯示異常任務
              ListView.builder(
                shrinkWrap: true, // 避免嵌套滾動衝突
                physics: NeverScrollableScrollPhysics(), // 禁止內部滾動
                itemCount: abnormalTaskRecords.value.length,
                itemBuilder: (context, index) {
                  EngineerWorkOrderResponse task =
                      abnormalTaskRecords.value[index];

                  TaskStatus taskStatus = getTaskStatus(task.status, task.continuance);
                  TaskListItemStyle taskListItemStyle = TaskListItemStyle.fromStatus(taskStatus: taskStatus,
                    appointedDatetime: task.appointedDatetime,);

                  return GestureDetector(
                    onTap: () {
                      AutoRouter.of(context).push(TaskInformationRoute(
                        mId: task.mId,
                      ));
                    },
                    child: Container(
                      padding: EdgeInsets.fromLTRB(8.sp, 8.sp, 16.sp, 8.sp),
                      margin: EdgeInsets.all(4.sp),
                      decoration: BoxDecoration(
                        color: AppColors.white,
                        borderRadius: BorderRadius.circular(8.sp),
                      ),
                      child: Row(
                        children: [
                          Column(
                            mainAxisAlignment: MainAxisAlignment.start,
                            children: [
                              customText(
                                DateFormat('HH:mm').format(
                                    DateTime.parse(task.appointedDatetime)),
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
                                ),
                                child: customText(
                                  taskListItemStyle.statusFont,
                                  fontSize: 14.sp,
                                  fontWeight: FontWeight.w500,
                                  color: taskListItemStyle.statusFontColor,
                                ),
                              ),
                            ],
                          ),
                          SizedBox(width: 8.sp),
                          Expanded(
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                customText(
                                  task.address ?? "無住址",
                                  fontWeight: FontWeight.w500,
                                  fontSize: 16.sp,
                                ),
                                SizedBox(height: 4.sp),
                                customText(
                                  task.name,
                                  fontWeight: FontWeight.w400,
                                  fontSize: 14.sp,
                                  color: AppColors.darkGrey,
                                ),
                                SizedBox(height: 4.sp),
                                customText(
                                  "${task.typeName} - ${task.mId}",
                                  fontWeight: FontWeight.w400,
                                  fontSize: 14.sp,
                                  color: AppColors.darkGrey,
                                ),
                              ],
                            ),
                          ),
                          assetImage(
                            'ic_arrow_right.png',
                            width: 24.sp,
                            height: 24.sp,
                            color: AppColors.primaryBlack,
                          ),
                        ],
                      ),
                    ),
                  );
                },
              ),
              Stack(
                children: [
                  ListView.builder(
                    shrinkWrap: true, // 避免嵌套滾動衝突
                    physics: NeverScrollableScrollPhysics(), // 禁止內部滾動
                    itemCount: taskRecordMap.value.keys.length,
                    itemBuilder: (context, index) {
                      String date = taskRecordMap.value.keys.elementAt(index);
                      List<EngineerWorkOrderResponse> tasksForDate =
                          taskRecordMap.value[date]!;

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
                            itemCount: tasksForDate.length,
                            itemBuilder: (context, taskIndex) {
                              EngineerWorkOrderResponse task =
                                  tasksForDate[taskIndex];

                              TaskStatus taskStatus = getTaskStatus(task.status, task.continuance);
                              TaskListItemStyle taskListItemStyle = TaskListItemStyle.fromStatus(taskStatus: taskStatus,
                                appointedDatetime: task.appointedDatetime,);

                              return GestureDetector(
                                onTap: () {
                                  AutoRouter.of(context)
                                      .push(TaskInformationRoute(
                                    mId: task.mId,
                                  ));
                                },
                                child: Container(
                                  padding: EdgeInsets.fromLTRB(
                                      8.sp, 8.sp, 16.sp, 8.sp),
                                  margin: EdgeInsets.all(4.sp),
                                  decoration: BoxDecoration(
                                    color: AppColors.white,
                                    borderRadius: BorderRadius.circular(8.sp),
                                  ),
                                  child: Row(
                                    children: [
                                      Column(
                                        mainAxisAlignment:
                                            MainAxisAlignment.start,
                                        children: [
                                          customText(
                                            DateFormat('HH:mm').format(
                                                DateTime.parse(
                                                    task.appointedDatetime)),
                                            fontWeight: FontWeight.w500,
                                            fontSize: 16.sp,
                                            color:
                                                AppColors.darkGrey,
                                          ),
                                          Container(
                                            constraints: BoxConstraints(
                                              minWidth: 52.sp,
                                            ),
                                            alignment: Alignment.center,
                                            padding: EdgeInsets.all(4.sp),
                                            decoration: BoxDecoration(
                                              color: taskListItemStyle
                                                  .statusBackground,
                                              borderRadius:
                                                  BorderRadius.circular(96.sp),
                                            ),
                                            child: customText(
                                              taskListItemStyle.statusFont,
                                              fontSize: 14.sp,
                                              fontWeight: FontWeight.w500,
                                              color: taskListItemStyle
                                                  .statusFontColor,
                                            ),
                                          ),
                                        ],
                                      ),
                                      SizedBox(width: 8.sp),
                                      Expanded(
                                        child: Column(
                                          crossAxisAlignment:
                                              CrossAxisAlignment.start,
                                          children: [
                                            customText(
                                              task.address ?? "無住址",
                                              fontWeight: FontWeight.w500,
                                              fontSize: 16.sp,
                                            ),
                                            SizedBox(height: 4.sp),
                                            customText(
                                              task.name,
                                              fontWeight: FontWeight.w400,
                                              fontSize: 14.sp,
                                              color: AppColors.darkGrey,
                                            ),
                                            SizedBox(height: 4.sp),
                                            customText(
                                              "${task.typeName} - ${task.mId}",
                                              fontWeight: FontWeight.w400,
                                              fontSize: 14.sp,
                                              color: AppColors.darkGrey,
                                            ),
                                          ],
                                        ),
                                      ),
                                      assetImage(
                                        'ic_arrow_right.png',
                                        width: 24.sp,
                                        height: 24.sp,
                                        color: AppColors.primaryBlack,
                                      ),
                                    ],
                                  ),
                                ),
                              );
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
                        defaultText:
                            taskRecordFilterTime[filterTimeIndex.value],
                        onFinishTap: (index) {
                          filterTimeIndex.value = index;
                          AutoRouter.of(context).popForced();
                        },
                      );
                    },
                    // 顯示正常任務
                    child: Align(
                        alignment: Alignment.topRight,
                        child: IntrinsicWidth(
                          child: Container(
                            padding: EdgeInsets.symmetric(
                                vertical: 6.sp, horizontal: 10.sp),
                            decoration: BoxDecoration(
                              color: AppColors.black,
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
                                assetImage('ic_triangle.png',
                                    width: 8.sp,
                                    height: 8.sp,
                                    color: AppColors.white)
                              ],
                            ),
                          ),
                        )),
                  ),
                ],
              ),
            ],
          )
        : Stack(
            children: [
              Container(
                width: double.infinity,
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    assetImage('img_empty.png',
                        width: screenWidth * 0.65,
                        height: screenWidth * 0.65 * 0.8),
                    customText(
                        (controller.text.isNotEmpty)
                            ? AppTexts.noMatchingContent
                            : AppTexts.noTaskRecordYet,
                        fontWeight: FontWeight.w500,
                        fontSize: 16.sp,
                        color: AppColors.lightGrey),
                  ],
                ),
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
                        padding: EdgeInsets.symmetric(
                            vertical: 6.sp, horizontal: 10.sp),
                        decoration: BoxDecoration(
                          color: AppColors.black,
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
                            assetImage('ic_triangle.png',
                                width: 8.sp,
                                height: 8.sp,
                                color: AppColors.white)
                          ],
                        ),
                      ),
                    )),
              )
            ],
          );
  }
}
