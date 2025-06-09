import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:haohsing_flutter/define.dart';
import 'package:haohsing_flutter/resources/AppResources.dart';
import 'package:haohsing_flutter/screen/base/BasePage.dart';
import 'package:haohsing_flutter/screen/userScreen/notify/NotifyProvider.dart';
import 'package:haohsing_flutter/widgets/MainTitleBar.dart';
import 'package:haohsing_flutter/widgets/notify/InviteWidget.dart';
import 'package:haohsing_flutter/widgets/notify/MsgWidget.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:auto_route/auto_route.dart';
import 'package:haohsing_flutter/widgets/common/TextWidgets.dart';

@RoutePage()
class EngineerNotifyPage extends HookConsumerWidget {
  const EngineerNotifyPage({
    super.key,
  });

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final notifyState = ref.watch(notifyProvider);
    final notifyNotifier = ref.read(notifyProvider.notifier);

    useEffect(() {
      WidgetsBinding.instance.addPostFrameCallback((_) {
        notifyNotifier.getShareList();
        notifyNotifier.getMsg();
      });
      return null;
    }, []);

    return BasePage(
      onWillPop: () async {
        return false;
      },
      child: SafeArea(
        bottom: false,
        child: Container(
          height: double.infinity,
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              MainTitleBar(
                title: AppTexts.notify,
                buttonText: AppTexts.markAllRead,
                onTextTap: () {
                  notifyNotifier.readAllMsg();
                  },
                buttonTextColor: AppColors.primaryYellow,
              ),
              Expanded(
                child: SingleChildScrollView(
                  child: Container(
                    padding: EdgeInsets.fromLTRB(18.sp, 24.sp, 18.sp, 12.sp),
                    child: Column(
                      children: [
                        if (notifyState.shareList.isNotEmpty) ...[
                          Container(
                            margin: EdgeInsets.only(bottom: 8.sp),
                            alignment: Alignment.centerLeft,
                            child: customText(
                              AppTexts.invite,
                              fontWeight: FontWeight.w500,
                              fontSize: 18.sp,
                            ),
                          ),
                          InviteListWidget(shareList: notifyState.shareList),
                        ],
                        MsgListWidget(
                          msgList: notifyState.msgList,
                        )
                      ],
                    ),
                  ),
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
