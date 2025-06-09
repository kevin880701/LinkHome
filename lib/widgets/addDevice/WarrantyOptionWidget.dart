import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:haohsing_flutter/define.dart';
import 'package:haohsing_flutter/resources/AppResources.dart';
import 'package:haohsing_flutter/widgets/common/TextWidgets.dart';
import 'package:haohsing_flutter/widgets/common/ImageWidgets.dart';

class WarrantyOptionWidget extends HookWidget {
  final String title;
  final String optionValue;
  final Function()? onTap;
  final Color fontColor;
  final bool isOptional;

  const WarrantyOptionWidget({
    super.key,
    required this.title,
    required this.optionValue,
    this.onTap,
    this.fontColor = AppColors.primaryBlack,
    this.isOptional = false,
  });

  @override
  Widget build(BuildContext context) {

    return GestureDetector(
      onTap: () async {
        if (onTap != null) {
          await onTap!();
        }
      },
      child: Container(
        margin: EdgeInsets.symmetric(vertical: 4.sp),
        padding: EdgeInsets.symmetric(vertical: 12.sp),
        width: double.infinity,
        decoration: BoxDecoration(
          color: AppColors.white,
          borderRadius: BorderRadius.circular(8.sp),
        ),
        child: Row(
          children: [
            Expanded(
                child: Column(
              children: [
                Row(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    customText(title,
                        fontWeight: FontWeight.w400,
                        fontSize: 16.sp,),if (isOptional) ...[
                      customText('(${AppTexts.optional})',
                          fontWeight: FontWeight.w400, fontSize: 14.sp, color: AppColors.disableGrey)
                    ],
                    SizedBox(width: 4.sp,),
                    Expanded(child: customText(optionValue,
                        fontWeight: FontWeight.w400, fontSize: 16.sp, color: fontColor, textAlign: TextAlign.end,
                        overflow: null,))
                    ,
                  ],
                ),
              ],
            )),
            if (onTap != null) ...[assetImage('ic_arrow_right.png', width: 24.sp)]
          ],
        ),
      ),
    );
  }
}
