import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:haohsing_flutter/define.dart';
import 'package:haohsing_flutter/resources/AppResources.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:haohsing_flutter/widgets/common/TextWidgets.dart';
import 'package:haohsing_flutter/widgets/common/ImageWidgets.dart';

class DefaultDialog extends HookConsumerWidget {
  const DefaultDialog({
    super.key,
    this.icon = "ic_information.png",
    this.iconColor = AppColors.primaryYellow,
    this.title,
    this.content,
    required this.firstButton,
    this.secondButton,
  });

  final String? icon;
  final Color? iconColor;
  final String? title;
  final String? content;
  final Widget firstButton;
  final Widget? secondButton;

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    return Dialog(
      alignment: Alignment.center,
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
            assetImage(icon!, width: 32.sp, color: iconColor!),
            SizedBox(
              height: 4.sp,
            ),
            title != null?
            customText(title!, fontWeight: FontWeight.w600, fontSize: 16.sp, overflow: null, textAlign: TextAlign
                .center)
                : SizedBox(),
            SizedBox(
              height: 8.sp,
            ),
            content != null
                ? customText(content!,
                    fontWeight: FontWeight.w400, fontSize: 16.sp, overflow: null, color: AppColors.grey, textAlign: TextAlign.center)
                : SizedBox(),
            SizedBox(
              height: 8.sp,
            ),
            Row(
              children: [
                if (secondButton == null)
                  Expanded(
                    child: firstButton,
                  )
                else ...[
                  Expanded(
                    child: firstButton,
                  ),
                  SizedBox(width: 8.sp),
                  Expanded(
                    child: secondButton!,
                  ),
                ],
              ],
            ),
          ],
        ),
      ),
    );
  }
}
