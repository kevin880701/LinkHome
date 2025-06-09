import 'package:auto_route/auto_route.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:haohsing_flutter/define.dart';
import 'package:haohsing_flutter/resources/AppResources.dart';
import 'package:haohsing_flutter/widgets/common/ButtonWidgets.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:haohsing_flutter/widgets/common/TextWidgets.dart';
import 'package:haohsing_flutter/widgets/common/ImageWidgets.dart';

class ErrorDialog extends HookConsumerWidget {
  const ErrorDialog({super.key, required this.title, this.content, this.buttonText = AppTexts.confirm, this.onTap});

  final String title;
  final String? content;
  final String buttonText;
  final Function()? onTap;

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    return Dialog(
      alignment: Alignment.center,
      insetPadding: EdgeInsets.symmetric(horizontal: 48.sp),
      child: Container(
        padding: EdgeInsets.fromLTRB(16.sp, 20.sp, 16.sp, 20.sp),
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(16),
          color: AppColors.white,
        ),
        child: Column(
          mainAxisSize: MainAxisSize.min,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            assetImage('ic_information.png', width: 32.sp, color: AppColors.errorRed),
            SizedBox(
              height: 4.sp,
            ),
            customText(title, fontWeight: FontWeight.w600, fontSize: 16.sp,
              overflow: null,textAlign: TextAlign.center),
            SizedBox(
              height: 16.sp,
            ),
            if (content != null) ...[
              customText(content!,
                  fontWeight: FontWeight.w400,
                  fontSize: 16.sp,
                  color: AppColors.grey,
                  overflow: null,
                  textAlign: TextAlign.center),
              SizedBox(
                height: 8.sp,
              ),
            ],
            roundedButton(
              radius: 12.sp,
              text: buttonText,
              onTap: () {
                if (onTap != null) {
                  onTap!();
                } else {
                  AutoRouter.of(context).popForced();
                }
              },
              bgColor: AppColors.primaryYellow,
              fontColor: AppColors.white,
            ),
          ],
        ),
      ),
    );
  }
}
