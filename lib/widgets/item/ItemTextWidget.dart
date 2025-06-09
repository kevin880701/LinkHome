import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:haohsing_flutter/define.dart';
import 'package:haohsing_flutter/resources/AppResources.dart';
import 'package:haohsing_flutter/widgets/common/TextWidgets.dart';
import 'package:haohsing_flutter/widgets/common/ImageWidgets.dart';

class ItemTextWidget extends HookWidget {
  final Widget? icon;
  final String fieldName;
  final Color fieldNameColor;
  final String value;
  final bool isEnabled;
  final Function()? onTap;
  final Color valueColor;
  final bool isOptional;

  const ItemTextWidget({
    super.key,
    this.icon,
    required this.fieldName,
    this.fieldNameColor = AppColors.primaryBlack,
    this.value = '',
    this.isEnabled = true,
    this.onTap,
    this.valueColor = AppColors.primaryBlack,
    this.isOptional = false,
  });

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: isEnabled
          ? () async {
              if (onTap != null) {
                await onTap!();
              }
            }
          : null,
      child: Container(
        margin: EdgeInsets.symmetric(vertical: 6.sp),
        padding: EdgeInsets.all(16.sp),
        width: double.infinity,
        decoration: BoxDecoration(
          color: AppColors.white,
          borderRadius: BorderRadius.circular(8.sp),
        ),
        child: Row(
          children: [
            if (icon != null) ...[
              icon!,
              SizedBox(
                width: 8.sp,
              )
            ],
            Expanded(
              child: Row(
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  customText(fieldName,
                      fontWeight: FontWeight.w500,
                      fontSize: 16.sp,
                      color: isEnabled ? fieldNameColor : AppColors.disableGrey),
                  if (isOptional) ...[
                    customText('(${AppTexts.optional})',
                        fontWeight: FontWeight.w400, fontSize: 14.sp, color: AppColors.disableGrey)
                  ],
                  Expanded(
                    child: customText(value,
                        fontWeight: FontWeight.w400, fontSize: 16.sp, color: valueColor, textAlign: TextAlign.end,
                        overflow: null),
                  ),
                  if (onTap != null) ...[
                    assetImage('ic_arrow_right.png',
                        width: 24.sp, color: isEnabled ? AppColors.primaryBlack : AppColors.disableGrey)
                  ]
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
