import 'package:auto_route/auto_route.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:haohsing_flutter/define.dart';
import 'package:haohsing_flutter/resources/AppResources.dart';
import 'package:haohsing_flutter/route/AppRouter.gr.dart';
import 'package:haohsing_flutter/widgets/common/ButtonWidgets.dart';
import 'package:haohsing_flutter/widgets/common/ImageWidgets.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:haohsing_flutter/widgets/common/TextWidgets.dart';

class StartSettingDialog extends HookConsumerWidget {
  const StartSettingDialog({
    super.key,
  });

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final screenWidth = MediaQuery.of(context).size.width;

    return Dialog(
      alignment: Alignment.bottomCenter,
      insetPadding: EdgeInsets.fromLTRB(0, 0, 0, 48),
      child: Container(
        width: screenWidth * 0.85,
        padding: EdgeInsets.fromLTRB(16.sp, 20.sp, 16.sp, 20.sp),
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(16),
          color: AppColors.white,
        ),
        child: Column(
          mainAxisSize: MainAxisSize.min,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Align(
              alignment: Alignment.centerRight,
              child: circleAssetsImage(
                  filename: 'ic_cancel.png',
                  color: AppColors.white,
                  bgColor: AppColors.grey,
                  height: 16,
                  width: 16,
                  insertPadding: EdgeInsets.all(8),
              onTap: (){
                    AutoRouter.of(context).popForced();
              }),
            ),
            assetImage('img_celebrate.png', width: 48, height: 72),
            gapH16,
            customText(AppTexts.welcomeJoin, fontWeight: FontWeight.w700, fontSize: 24.sp, overflow: null),
            gapH16,
            customText(AppTexts.welcomeJoinMsg, fontWeight: FontWeight.w400, fontSize: 14.sp, overflow: null),
            gapH64,
            roundedButton(
              radius: 12.sp,
              text: AppTexts.startSetting,
              onTap: () async {
                AutoRouter.of(context).popForced();
                AutoRouter.of(context).push(const UserInformationRoute());
              },
              bgColor: AppColors.primaryYellow,
              fontColor: AppColors.white,
            )
          ],
        ),
      ),
    );
  }
}
