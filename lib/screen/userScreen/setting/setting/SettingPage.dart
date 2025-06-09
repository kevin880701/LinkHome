import 'dart:async';

import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:haohsing_flutter/define.dart';
import 'package:haohsing_flutter/provider/UserProvider.dart';
import 'package:haohsing_flutter/provider/VersionInfoProvider.dart';
import 'package:haohsing_flutter/resources/AppResources.dart';
import 'package:haohsing_flutter/route/AppRouter.gr.dart';
import 'package:haohsing_flutter/screen/base/BasePage.dart';
import 'package:haohsing_flutter/utils/ToastHelper.dart';
import 'package:haohsing_flutter/widgets/MainTitleBar.dart';
import 'package:haohsing_flutter/widgets/item/ItemTextWidget.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:auto_route/auto_route.dart';
import 'package:haohsing_flutter/widgets/common/TextWidgets.dart';
import 'package:haohsing_flutter/widgets/common/ImageWidgets.dart';

@RoutePage()
class SettingPage extends HookConsumerWidget {
  const SettingPage({
    super.key,
  });

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final screenWidth = MediaQuery.of(context).size.width;
    final userState = ref.watch(userProvider);
    final userNotifier = ref.read(userProvider.notifier);
    final versionInfo = ref.watch(versionInfoProvider);
    final clickCount = useState(0);
    final timer = useState<Timer?>(null);

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
              MainTitleBar(title: AppTexts.settings),
              Expanded(
                child: Container(
                  padding: EdgeInsets.fromLTRB(18.sp, 24.sp, 18.sp, 12.sp),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      GestureDetector(
                        onTap: () {
                          AutoRouter.of(context).push(const PersonalInformationRoute());
                        },
                        child: Row(
                          children: [
                            Container(
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
                            SizedBox(
                              width: 12.sp,
                            ),
                            Expanded(
                                child: customText(
                              userState?.userResponse?.name ?? AppTexts.user,
                              fontWeight: FontWeight.w500,
                              fontSize: 24.sp,
                            )),
                            assetImage('ic_arrow_right.png', width: 24.sp)
                          ],
                        ),
                      ),
                      SizedBox(height: 18.sp,),
                      ItemTextWidget(
                        icon: assetImage('ic_privacy.png', width: 24.sp, color: AppColors.primaryYellow),
                        fieldName: AppTexts.privacyPolicy,
                        onTap: () {
                          AutoRouter.of(context).push(const PrivacyPolicyRoute());
                        },
                      ),
                      Spacer(),
                      assetImage('img_linkhome_logo.png', width: screenWidth * 0.384, height: screenWidth * 0.384 *
                          0.4375),
                      SizedBox(height: 8.sp,),
                      customText('${AppTexts.ver} ${versionInfo.releaseVersion}',
                          fontWeight: FontWeight.w500, fontSize: 14.sp, color: AppColors.lightGrey, onTap: () {
                          clickCount.value++;

                          if (clickCount.value == 5) {
                            showToast(context: context, text: versionInfo.debugVersion);
                            clickCount.value = 0; // 重置點擊計數
                          }

                          timer.value?.cancel();
                          timer.value = Timer(const Duration(seconds: 2), () {
                            clickCount.value = 0;
                          });
                        },),
                      SizedBox(height: 24.sp,),
                    ],
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
