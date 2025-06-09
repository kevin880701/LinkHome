import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:haohsing_flutter/define.dart';
import 'package:haohsing_flutter/resources/AppResources.dart';
import 'package:haohsing_flutter/route/AppRouter.dart';
import 'package:haohsing_flutter/screen/base/BasePage.dart';
import 'package:haohsing_flutter/widgets/common/AppBarWidgets.dart';
import 'package:haohsing_flutter/widgets/common/ButtonWidgets.dart';
import 'package:haohsing_flutter/widgets/login/LoginTitlebar.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:auto_route/auto_route.dart';
import 'package:haohsing_flutter/widgets/common/TextWidgets.dart';
import 'package:haohsing_flutter/widgets/common/ImageWidgets.dart';

@RoutePage()
class RegisterSuccessPage extends HookConsumerWidget {
  const RegisterSuccessPage({super.key, required this.account});

  final String account;

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final screenWidth = MediaQuery.of(context).size.width;

    return BasePage(
      appBar: bgDarkAppBar(),
      onWillPop: () async {
        goLogin(context, ref);
        return false;
      },
      statusBarColor: AppColors.bgColor,
      child:  SafeArea(
          child: Container(
        padding: EdgeInsets.all(24.sp),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            LoginTitlebar(title: AppTexts.registerSuccess, context: context, showLogo: false),
            SizedBox(
              height: 36.sp,
            ),
            assetImage('img_received_mail.png', width: screenWidth * 0.4, height: screenWidth * 0.4 * 0.66,),
            SizedBox(
              height: 32.sp,
            ),
            customText(AppTexts.registerSuccessMsg1, fontWeight: FontWeight.w700, fontSize: 16.sp),
            SizedBox(
              height: 16.sp,
            ),
            customText(account, fontWeight: FontWeight.w700, fontSize: 16.sp, color: AppColors.grey),
            SizedBox(
              height: 16.sp,
            ),
            customText(AppTexts.registerSuccessMsg2, fontWeight: FontWeight.w700, fontSize: 16.sp),
            Spacer(),
            roundedButton(
              radius: 12.sp,
              text: AppTexts.backLoginPage,
              onTap: () {
                goLogin(context, ref);
              },
              bgColor: AppColors.primaryYellow,
              fontColor: AppColors.white,
            ),
          ],
        ),
      )),
    );
  }
}
