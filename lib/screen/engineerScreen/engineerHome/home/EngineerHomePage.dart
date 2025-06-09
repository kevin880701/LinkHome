import 'dart:ui';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:haohsing_flutter/define.dart';
import 'package:haohsing_flutter/model/response/maintenance/engineerWorkOrder/EngineerWorkOrderResponse.dart';
import 'package:haohsing_flutter/provider/UpdateStateProvider.dart';
import 'package:haohsing_flutter/provider/UserProvider.dart';
import 'package:haohsing_flutter/resources/AppColors.dart';
import 'package:haohsing_flutter/resources/AppResources.dart';
import 'package:haohsing_flutter/screen/base/BasePage.dart';
import 'package:haohsing_flutter/screen/engineerScreen/engineerHome/home/EngineerHomeProvider.dart';
import 'package:haohsing_flutter/utils/dialog/DialogManager.dart';
import 'package:haohsing_flutter/widgets/common/ImageWidgets.dart';
import 'package:haohsing_flutter/widgets/engineerHome/DatePickerWidget.dart';
import 'package:haohsing_flutter/widgets/engineerHome/OrderStatusListWidget.dart';
import 'package:haohsing_flutter/widgets/engineerHome/WorkOrderListWidget.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:intl/intl.dart';
import 'package:auto_route/auto_route.dart';
import 'package:haohsing_flutter/widgets/common/TextWidgets.dart';

import 'FakerEngineerHomeNotifier.dart';

@RoutePage()
class EngineerHomePage extends HookConsumerWidget {
  const EngineerHomePage({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final userState = ref.watch(userProvider);
    final updateState = ref.watch(updateStateProvider);

    final token = ref.read(userProvider).loginResponse?.token ?? "";
    final provider = (token == '@@@user@@@' || token == '@@@engineer@@@')
        ? fakerEngineerHomeProvider
        : engineerHomeProvider;

    final engineerHomeNotifier = ref.read(provider.notifier);
    final engineerHomeState = ref.watch(provider);

    final DateTime today = DateTime.now();
    final _selectDate = useState<DateTime?>(today);
    final _selectMonth = useState<DateTime>(today);
    final currentStatusIndex = useState(0);

    Future<void> maintenanceUpdate() async {
      WidgetsBinding.instance.addPostFrameCallback((_) async {

        await engineerHomeNotifier
          .getEngineerWorkOrder(year: _selectMonth.value.year, month: _selectMonth.value.month);

      if (_selectDate.value != null) {
        await engineerHomeNotifier.getEngineerWorkOrder(
          year: _selectDate.value!.year,
          month: _selectDate.value!.month,
          day: _selectDate.value!.day,
        );
      }
      });
    }

    useValueChanged(_selectMonth.value, (_, __) async {
      WidgetsBinding.instance.addPostFrameCallback((_) async {
      await engineerHomeNotifier.getEngineerWorkOrder(year: _selectMonth.value.year, month: _selectMonth.value.month);
      });
      return false;
    });

    useValueChanged(_selectDate.value, (_, __) async {
      WidgetsBinding.instance.addPostFrameCallback((_) async {
      if (_selectDate.value != null) {
        await engineerHomeNotifier.getEngineerWorkOrder(
          year: _selectDate.value!.year,
          month: _selectDate.value!.month,
          day: _selectDate.value!.day,
        );
      }
      });
      return false;
    });

    useEffect(() {
      maintenanceUpdate();
    }, [updateState.maintenanceUpdated]);

    // 下拉刷新功能
    Future<void> _refresh() async {
      maintenanceUpdate();
    }

    return BasePage(
      onWillPop: () async {
        return false;
      },
      backgroundColor: AppColors.black,
      child: SafeArea(
        bottom: false,
        child: RefreshIndicator(
          onRefresh: _refresh,
          child: Container(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Container(
                  padding: EdgeInsets.fromLTRB(16.sp, 16.sp, 16.sp, 0.sp),
                  child: Column(
                    children: [
                      Row(
                        children: [
                          GestureDetector(
                            onTap: () {
                              showEngineerInfoDialog(context);
                            },
                            child: Container(
                              width: 64.sp,
                              height: 64.sp,
                              decoration: BoxDecoration(
                                shape: BoxShape.circle,
                                border: Border.all(
                                  color: AppColors.primaryYellow,
                                  width: 2.sp,
                                ),
                              ),
                              child: ClipOval(
                                child: netImage(
                                  userState?.userResponse?.headshot ?? "",
                                  fit: BoxFit.cover,
                                  width: 64.sp,
                                  height: 64.sp,
                                  defaultImage: 'default_avatar.png',
                                ),
                              ),
                            ),
                          ),
                          SizedBox(width: 10.sp),
                          Expanded(
                            child: customText('Hello, ${userState?.userResponse?.name}',
                                fontWeight: FontWeight.w600, color: AppColors.white, fontSize: 20.sp),
                          ),
                        ],
                      ),
                      SizedBox(
                        height: 12.sp,
                      ),
                      DatePickerWidget(
                        groupedWorkOrders: engineerHomeState.monthWorkOrders,
                        selectDate: _selectDate,
                        selectMonth: _selectMonth,
                      ),
                    ],
                  ),
                ),
                SizedBox(
                  height: 12.sp,
                ),
                Expanded(
                    child: Container(
                  padding: EdgeInsets.symmetric(horizontal: 18.sp, vertical: 12.sp),
                  decoration: BoxDecoration(
                    color: AppColors.bgColor,
                    borderRadius: BorderRadius.only(topLeft: Radius.circular(16.sp), topRight: Radius.circular(16.sp)),
                  ),
                  child: Column(
                    children: [
                      OrderStatusListWidget(
                        currentIndex: currentStatusIndex,
                      ),
                      SizedBox(
                        height: 16.sp,
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          customText(AppTexts.taskList, fontWeight: FontWeight.w500, fontSize: 18.sp),
                          customText(DateFormat('yyyy.MM.dd').format(_selectDate.value ?? today),
                              fontWeight: FontWeight.w400, color: AppColors.darkGrey, fontSize: 16.sp)
                        ],
                      ),
                      SizedBox(
                        height: 16.sp,
                      ),
                      Expanded(
                          child: WorkOrderListWidget(
                              engineerWorkOrders: filterWorkOrders(
                        workOrders: engineerHomeState.dayWorkOrders,
                        currentStatusIndex: currentStatusIndex.value,
                      )))
                    ],
                  ),
                ))
              ],
            ),
          ),
        ),
      ),
    );
  }
}

List<EngineerWorkOrderResponse> filterWorkOrders({
  required List<EngineerWorkOrderResponse> workOrders,
  required int currentStatusIndex,
}) {
  return workOrders.where((order) {
    if (currentStatusIndex == 2) {
      return order.continuance == 1 || order.status == 4;
    } else if (currentStatusIndex == 1) {
      return order.continuance == 0 && (order.status == 3 || order.status == 2);
    } else if (currentStatusIndex == 0) {
      return order.continuance == 0 && (order.status == 1 || order.status == 0);
    }
    return false;
  }).toList();
}
