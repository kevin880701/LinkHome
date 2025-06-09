
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:haohsing_flutter/provider/BluetoothProvider.dart';
import 'package:haohsing_flutter/provider/UserProvider.dart';
import 'package:haohsing_flutter/screen/base/BasePage.dart';
import 'package:haohsing_flutter/screen/userScreen/home/home/HomePage.dart';
import 'package:haohsing_flutter/screen/userScreen/notify/NotifyPage.dart';
import 'package:haohsing_flutter/screen/userScreen/setting/setting/SettingPage.dart';
import 'package:haohsing_flutter/utils/ToastHelper.dart';
import 'package:haohsing_flutter/utils/dialog/DialogManager.dart';
import 'package:haohsing_flutter/widgets/KeepAliveWrapper.dart';
import 'package:haohsing_flutter/widgets/common/AppBarWidgets.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import '../../define.dart';
import '../../model/response/msg/getMsgs/GetMsgResponse.dart';
import '../../resources/AppColors.dart';
import '../../resources/AppTexts.dart';
import 'package:auto_route/auto_route.dart';

import 'notify/NotifyProvider.dart';
import 'package:haohsing_flutter/widgets/common/ImageWidgets.dart';

@RoutePage()
class MainPage extends HookConsumerWidget {
  final bool isVerifyUserInfo;

  const MainPage({
    super.key,
    this.isVerifyUserInfo = true,
  });

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final TabController _tabController = useTabController(initialLength: 3);
    final _tabSelectedIndex = useState(0);
    final userState = ref.watch(userProvider);
    final notifyNotifier = ref.read(notifyProvider.notifier);
    final notifyState = ref.watch(notifyProvider);
    final bluetoothNotifier = ref.read(bluetoothProvider.notifier);
    DateTime? lastPressedTime;

    useEffect(() {
      WidgetsBinding.instance.addPostFrameCallback((_) {
        bluetoothNotifier.disconnectFromDevice();
        if(userState.userResponse!.name == null && isVerifyUserInfo == true){
          showStartSettingDialog(context);
        }
        notifyNotifier.getShareList();
        notifyNotifier.getMsg();
      });
      return null;
    }, []);

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
      child: Container(
        child: Column(
          children: [
            Expanded(
                child: TabBarView(
                  physics: NeverScrollableScrollPhysics(), // 禁用滑動
                  controller: _tabController,
                  children: const <Widget>[
                    KeepAliveWrapper(child: HomePage()),
                    KeepAliveWrapper(child: NotifyPage()),
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
                tabs: <Widget>[
                  Tab(
                    icon: _tabSelectedIndex.value == 0
                        ? assetImage('ic_home_active.png', width: 24.sp, height: 24.sp, color: AppColors.primaryYellow)
                        : assetImage('ic_home_inactive.png', width: 24.sp, height: 24.sp, color: AppColors.disableGrey),
                    text: AppTexts.home,
                  ),
                  Tab(
                    icon: notifyIcon(
                      notifyState.msgList,
                      _tabSelectedIndex.value == 1 ? 'ic_notify_active.png' : 'ic_notify_inactive.png',
                      _tabSelectedIndex.value == 1 ? AppColors.primaryYellow : AppColors.disableGrey,
                    ),
                    text: AppTexts.notify,
                  ),
                  Tab(
                    icon: _tabSelectedIndex.value == 2
                        ? assetImage('ic_personal_active.png', width: 24.sp, height: 24.sp, color: AppColors.primaryYellow)
                        : assetImage('ic_personal_inactive.png', width: 24.sp, height: 24.sp, color: AppColors.disableGrey),
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