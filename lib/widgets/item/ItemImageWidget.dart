import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:haohsing_flutter/define.dart';
import 'package:haohsing_flutter/resources/AppResources.dart';
import 'package:haohsing_flutter/widgets/common/TextWidgets.dart';
import 'package:haohsing_flutter/widgets/common/ImageWidgets.dart';

class ItemImageWidget extends HookWidget {
  final String fieldName;
  final Color fieldNameColor;
  final String imageUrl;
  final bool isEnabled;
  final Function()? onTap;

  const ItemImageWidget({
    super.key,
    required this.fieldName,
    required this.imageUrl,
    this.fieldNameColor = AppColors.primaryBlack,
    this.isEnabled = true,
    this.onTap,
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
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            customText(fieldName,
                fontWeight: FontWeight.w500,
                fontSize: 16.sp,
                color: isEnabled ? fieldNameColor : AppColors.disableGrey),
            netImage(
              imageUrl,
              fit: BoxFit.cover,
              height: 24.sp,
              defaultImage: 'default_avatar.png',
            ),
            if (onTap != null) ...[
              assetImage('ic_arrow_right.png',
                  width: 24.sp, color: isEnabled ? AppColors.primaryBlack : AppColors.disableGrey)
            ]
          ],
        ),
      ),
    );
  }
}
