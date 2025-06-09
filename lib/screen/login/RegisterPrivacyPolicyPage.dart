import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:haohsing_flutter/resources/AppResources.dart';
import 'package:haohsing_flutter/screen/base/BasePage.dart';
import 'package:haohsing_flutter/widgets/common/AppBarWidgets.dart';
import 'package:haohsing_flutter/widgets/common/ButtonWidgets.dart';
import 'package:haohsing_flutter/widgets/login/LoginTitlebar.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:webview_flutter/webview_flutter.dart';
import 'package:auto_route/auto_route.dart';

@RoutePage()
class RegisterPrivacyPolicyPage extends HookConsumerWidget {
  const RegisterPrivacyPolicyPage({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final controller = WebViewController()
      ..setBackgroundColor(const Color(0x00000000))
      ..loadFlutterAsset('assets/other/privacy.html');
    return BasePage(
      appBar: bgDarkAppBar(),
      statusBarColor: AppColors.bgColor,
      child: SafeArea(
        bottom: false,
        child: Container(
          child: Column(
            children: [
              Padding(
                padding: EdgeInsets.all(24.sp),
                child: LoginTitlebar(title: AppTexts.privacyPolicy, context: context, isBack: true,),
              ),
              Expanded(
                child: WebViewWidget(controller: controller),
              ),
              Padding(padding: EdgeInsets.all(24.sp),child: roundedButton(
                radius: 12.sp,
                text: AppTexts.agree,
                onTap: () {
                  Navigator.of(context).pop(true);
                },
                bgColor: AppColors.primaryYellow,
                fontColor: AppColors.white,
              ),)
              ,
            ],
          ),
        ),
      ),
    );
  }
}
