import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:haohsing_flutter/define.dart';
import 'package:haohsing_flutter/resources/AppResources.dart';
import 'package:haohsing_flutter/widgets/common/TextWidgets.dart';
import 'package:haohsing_flutter/widgets/common/ImageWidgets.dart';

class ItemVerticalEditWidget extends HookWidget {
  final String fieldName;
  final Color fieldNameColor;
  final String value;
  final Color valueColor;
  final String? hintText;
  final TextEditingController? controller;
  final bool editEnabled;
  final bool isEnabled;
  final Function()? onTap;

  const ItemVerticalEditWidget({
    super.key,
    this.controller,
    required this.fieldName,
    this.fieldNameColor = AppColors.primaryBlack,
    required this.value,
    this.valueColor = AppColors.primaryBlack,
    this.hintText,
    this.onTap,
    this.isEnabled = true,
    this.editEnabled = false,
  });

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: isEnabled ? onTap : null,
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
            Expanded(
                child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                customText(
                  fieldName,
                  fontWeight: FontWeight.w500,
                  fontSize: 18.sp,
                  color: isEnabled ? fieldNameColor : AppColors.disableGrey,
                ),
                if (controller != null) ...[
                  TextFormField(
                    enabled: editEnabled,
                    cursorColor: AppColors.primaryYellow,
                    controller: controller,
                    style: TextStyle(
                      color: AppColors.darkGrey,
                      fontSize: 16.sp,
                      fontFamily: 'PingFang TC',
                      fontWeight: FontWeight.w400,
                    ),
                    maxLines: null,
                    minLines: 1,
                    decoration: InputDecoration(
                        filled: true,
                        fillColor: AppColors.white,
                        border: InputBorder.none,
                        hintText: hintText ?? "",
                        hintStyle: TextStyle(
                            fontSize: 14.sp,
                            fontFamily: 'PingFang TC',
                            fontWeight: FontWeight.w400,
                            color: valueColor)),
                  )
                ] else ...[
                  Padding(
                    padding: EdgeInsets.only(left: 16.sp),
                    child: customText(
                      value,
                      fontWeight: FontWeight.w400,
                      fontSize: 16.sp,
                      color: valueColor,
                      textAlign: TextAlign.start,
                      overflow: null,
                    ),
                  ),
                ]
              ],
            )),
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
