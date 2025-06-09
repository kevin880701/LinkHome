import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:haohsing_flutter/define.dart';
import 'package:haohsing_flutter/resources/AppResources.dart';
import 'package:haohsing_flutter/widgets/common/TextWidgets.dart';
import 'package:haohsing_flutter/widgets/common/ImageWidgets.dart';

class DialogTitleBar extends HookWidget {
  final bool isBack;
  final VoidCallback? finishOnTap;
  final String buttonText;

  const DialogTitleBar({
    super.key,
    this.isBack = true,
    this.finishOnTap,
    this.buttonText = AppTexts.finish,
  });

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        Align(
          alignment: Alignment.center,
          child: Container(
            height: 4.sp,
            width: 64.sp,
            decoration: BoxDecoration(
              color: AppColors.lightGrey,
              borderRadius: BorderRadius.circular(16.sp),
            ),
          ),
        ),
        if (isBack) ...[
          Align(
            alignment: Alignment.centerRight,
            child: GestureDetector(
              onTap: () {
                AutoRouter.of(context).popForced();
              },
              child: assetImage('ic_cancel.png', width: 16.sp, color: AppColors.primaryBlack),
            ),
          )
        ],
        if (finishOnTap != null) ...[
          Align(
            alignment: Alignment.centerRight,
            child: GestureDetector(
              onTap: () {
                finishOnTap!();
              },
              child: customText(buttonText, fontWeight: FontWeight.w500, fontSize: 18.sp, color: AppColors.primaryYellow),
            ),
          ),
        ],
      ],
    );
  }
}
