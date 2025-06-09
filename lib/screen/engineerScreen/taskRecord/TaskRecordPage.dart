import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:haohsing_flutter/define.dart';
import 'package:haohsing_flutter/model/response/maintenance/engineerWorkOrder/EngineerWorkOrderResponse.dart';
import 'package:haohsing_flutter/resources/AppResources.dart';
import 'package:haohsing_flutter/screen/base/BasePage.dart';
import 'package:haohsing_flutter/screen/engineerScreen/taskRecord/TaskRecordProvider.dart';
import 'package:haohsing_flutter/widgets/MainTitleBar.dart';
import 'package:haohsing_flutter/widgets/SearchBarWidget.dart';
import 'package:haohsing_flutter/widgets/taskRecord/TaskRecordListWidget.dart';
import 'package:haohsing_flutter/widgets/taskRecord/TaskTypeWidget.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:intl/intl.dart';
import 'package:auto_route/auto_route.dart';

@RoutePage()
class TaskRecordPage extends HookConsumerWidget {
  const TaskRecordPage({
    super.key,
  });

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final maintenanceState = ref.watch(taskRecordProvider);
    final maintenanceNotifier = ref.read(taskRecordProvider.notifier);
    final taskRecordMap = useState<Map<String, List<EngineerWorkOrderResponse>>>({});
    final currentTypeIndex = useState<int>(0);

    final searchController = useTextEditingController();

    Future<void> updateTaskRecorder() async {
      await maintenanceNotifier.getTaskRecord();

      for (var task in maintenanceState.taskRecordList) {
        String date = DateFormat('yyyy年MM月dd日').format(DateTime.parse(task.appointedDatetime));

        if (!taskRecordMap.value.containsKey(date)) {
          taskRecordMap.value[date] = [];
        }

        taskRecordMap.value[date]?.add(task);
      }
    }

    useEffect(() {
      WidgetsBinding.instance.addPostFrameCallback((_) {
        maintenanceNotifier.getTaskType();
        updateTaskRecorder();
      });
    },[]);

    Future<void> _refresh() async {
      updateTaskRecorder();
    }

    return BasePage(
      child: SafeArea(
          bottom: false,
          child: RefreshIndicator(
            onRefresh: _refresh,
            child: Container(
              height: double.infinity,
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  MainTitleBar(
                    title: AppTexts.taskRecord,
                  ),
                  Expanded(
                    child: Container(
                      child: Column(
                        children: [
                          Padding(
                            padding: EdgeInsets.fromLTRB(0.sp, 24.sp, 0.sp, 0.sp),
                            child: TaskTypeWidget(
                              typeList: maintenanceState.taskTypeList,
                              currentTypeIndex: currentTypeIndex,
                            ),
                          ),
                          Expanded(child: Padding(
                            padding: EdgeInsets.fromLTRB(18.sp, 24.sp, 18.sp, 12.sp),
                            child: Column(
                              children: [
                                SearchBarWidget(
                                  controller: searchController, hintText: AppTexts.searchOrderNumberName,
                                ),
                                SizedBox(
                                  height: 24.sp,
                                ),
                                Expanded(
                                    child: TaskRecordListWidget(
                                      currentTypeIndex: currentTypeIndex,
                                      controller: searchController,
                                    ))
                              ],
                            ),
                          ))

                        ],
                      ),
                    ),
                  )
                ],
              ),
            ),
          )),
    );
  }
}
