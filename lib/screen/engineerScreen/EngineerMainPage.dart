import 'dart:convert';

import 'package:firebase_messaging/firebase_messaging.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:haohsing_flutter/define.dart';
import 'package:haohsing_flutter/model/notification/engineerTask/EngineerTaskResponse.dart';
import 'package:haohsing_flutter/provider/UpdateStateProvider.dart';
import 'package:haohsing_flutter/provider/UserProvider.dart';
import 'package:haohsing_flutter/resources/AppResources.dart';
import 'package:haohsing_flutter/screen/base/BasePage.dart';
import 'package:haohsing_flutter/screen/engineerScreen/taskRecord/TaskRecordPage.dart';
import 'package:haohsing_flutter/screen/userScreen/notify/NotifyProvider.dart';
import 'package:haohsing_flutter/screen/userScreen/setting/setting/SettingPage.dart';
import 'package:haohsing_flutter/utils/NotificationService.dart';
import 'package:haohsing_flutter/utils/ToastHelper.dart';
import 'package:haohsing_flutter/widgets/KeepAliveWrapper.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'engineerHome/home/EngineerHomePage.dart';
import 'engineerNotify/EngineerNotifyPage.dart';
import 'package:auto_route/auto_route.dart';
import 'package:haohsing_flutter/widgets/common/ImageWidgets.dart';

@RoutePage()
class EngineerMainPage extends HookConsumerWidget {
  const EngineerMainPage({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final TabController _tabController = useTabController(initialLength: 4);
    final _tabSelectedIndex = useState(0);
    final notifyNotifier = ref.read(notifyProvider.notifier);
    final notifyState = ref.watch(notifyProvider);
    final userNotifier = ref.read(userProvider.notifier);
    DateTime? lastPressedTime;

    useEffect((){
      WidgetsBinding.instance.addPostFrameCallback((_) async {
        notifyNotifier.getShareList();
        notifyNotifier.getMsg();

        userNotifier.sentFcmToken();
        NotificationService notificationService = NotificationService();
        notificationService.init();
        fcmSubscription = FirebaseMessaging.onMessage.listen((RemoteMessage message) async {
          Future.delayed(Duration(seconds: 5), () {
            ref.read(updateStateProvider.notifier).maintenanceUpdated();
            ref.read(updateStateProvider.notifier).msgUpdated();
          });

          EngineerTaskResponse fcmResponse = EngineerTaskResponse.fromJson(message.data);
          await NotificationService().showNotification(
            title: fcmResponse.title,
            body: fcmResponse.body,
            payload: jsonEncode(message.data),
            type: NotificationType.engineer,
          );
        });
      });

      return null;},[]);

    return BasePage(
      onWillPop: () async {
        DateTime now = DateTime.now();
        if (lastPressedTime == null ||
            now.difference(lastPressedTime!) > Duration(seconds: 2)) {
          // 如果兩次按返回按鈕的時間間隔超過 2 秒，則不退出，並顯示提示
          lastPressedTime = now;
          showToast(context: context, text: "再按一次退出應用");
          return false;
        }
        SystemNavigator.pop();
        return true;
      },
      backgroundColor: AppColors.black,
      child: Container(
        child: Column(
          children: [
            Expanded(
                child: TabBarView(
              physics: NeverScrollableScrollPhysics(), // 禁用滑動
              controller: _tabController,
              children: const <Widget>[
                KeepAliveWrapper(child: EngineerHomePage()),
                KeepAliveWrapper(child: TaskRecordPage()),
                KeepAliveWrapper(child: EngineerNotifyPage()),
                KeepAliveWrapper(child: SettingPage()),
              ],
            )),
            Container(
              color: AppColors.white,
              child: TabBar(
                controller: _tabController,
                indicatorColor: AppColors.transparent,
                labelColor: AppColors.primaryYellow,
                unselectedLabelColor: AppColors.disableGrey,
                dividerColor: AppColors.transparent,
                labelStyle: TextStyle(fontSize: 10.sp),
                tabs: <Widget>[
                  Tab(
                    icon: _tabSelectedIndex.value == 0
                        ? assetImage('ic_home_active.png', width: 24.sp, height: 24.sp, color: AppColors.primaryYellow)
                        : assetImage('ic_home_inactive.png', width: 24.sp, height: 24.sp, color: AppColors.disableGrey),
                    text: AppTexts.home,
                  ),
                  Tab(
                    icon: _tabSelectedIndex.value == 1
                        ? assetImage('mission_record_active.png',
                            width: 24.sp, height: 24.sp, color: AppColors.primaryYellow)
                        : assetImage('mission_record_inactive.png',
                            width: 24.sp, height: 24.sp, color: AppColors.disableGrey),
                    text: AppTexts.taskRecord,
                  ),
                  Tab(
                    icon: notifyIcon(
                      notifyState.msgList,
                      _tabSelectedIndex.value == 2 ? 'ic_notify_active.png' : 'ic_notify_inactive.png',
                      _tabSelectedIndex.value == 2 ? AppColors.primaryYellow : AppColors.disableGrey,
                    ),
                    text: AppTexts.notify,
                  ),
                  Tab(
                    icon: _tabSelectedIndex.value == 3
                        ? assetImage('ic_personal_active.png',
                            width: 24.sp, height: 24.sp, color: AppColors.primaryYellow)
                        : assetImage('ic_personal_inactive.png',
                            width: 24.sp, height: 24.sp, color: AppColors.disableGrey),
                    text: AppTexts.account,
                  ),
                ],
                onTap: (index) {
                  _tabSelectedIndex.value = index;
                },
              ),
            ),
          ],
        ),
      ),
    );
  }
}