import 'package:auto_route/auto_route.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:haohsing_flutter/define.dart';
import 'package:haohsing_flutter/resources/AppResources.dart';
import 'package:haohsing_flutter/widgets/common/TextWidgets.dart';
import 'package:haohsing_flutter/widgets/common/ImageWidgets.dart';

class MainTitleBar extends HookWidget {
  final bool isBack;
  final VoidCallback? onBackTap;
  final VoidCallback? onTextTap;
  final String buttonText;
  final Color buttonTextColor;
  final bool isInformation;
  final String title;

  const MainTitleBar({
    super.key,
    this.isBack = false,
    this.onBackTap,
    this.onTextTap,
    this.buttonText = AppTexts.cancel,
    this.buttonTextColor = AppColors.white,
    this.isInformation = false,
    required this.title,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      color: AppColors.black,
      padding: EdgeInsets.fromLTRB(16.sp, 16.sp, 16.sp, 16.sp),
      child: Stack(
        children: [
          Container(
            alignment: Alignment.center,
            padding: EdgeInsets.symmetric(horizontal: 28.sp),
            child: customText(title, fontWeight: FontWeight.w600, fontSize: 18.sp, color: AppColors.white),
          ),
          if (isBack || onBackTap != null) ...[
            Align(
              alignment: Alignment.centerLeft,
              child: GestureDetector(
                  onTap: () {
                    if(onBackTap != null){
                      onBackTap!();
                    }else{
                      AutoRouter.of(context).popForced();
                    }
                  },
                  child: assetImage('ic_back.png', width: 24.sp, height: 24.sp, color: AppColors.white)),
            )
          ],
          if (isInformation) ...[
            Align(
              alignment: Alignment.centerRight,
              child: GestureDetector(
                  onTap: () {
                    AutoRouter.of(context).popForced();
                  },
                  child: assetImage('ic_information.png', width: 24.sp, height: 24.sp, color: AppColors.primaryYellow)),
            )
          ],
          if (onTextTap != null) ...[
            Align(
              alignment: Alignment.centerRight,
              child: GestureDetector(
                  onTap: () {
                    onTextTap!();
                  },
                  child: customText(
                    buttonText,
                    fontWeight: FontWeight.w500,
                    fontSize: 14.sp,
                    color: buttonTextColor,
                  )),
            )
          ],
        ],
      ),
    );
  }
}
