import 'package:flutter/material.dart';
import 'package:haohsing_flutter/define.dart';
import 'package:haohsing_flutter/resources/AppColors.dart';

Widget radiusButton({
  double radius = 96,
  required String text,
  VoidCallback? tap,
  double verticalPadding = 12,
  Color bgColor = AppColors.primaryYellow,
  Color fontColor = AppColors.primaryBlack,
  Color borderColor = AppColors.transparent,
}) {
  return GestureDetector(
    onTap: tap,
    child: Container(
      decoration: BoxDecoration(
        color: bgColor,
        borderRadius: BorderRadius.circular(radius),
        border: Border.all(
          color: borderColor,
          width: 1.sp,
        ),
      ),
      padding: EdgeInsets.symmetric(vertical: verticalPadding, horizontal: 24.sp),
      child: Center(
        child: Text(
          text,
          style: TextStyle(
            color: fontColor,
            fontSize: 16.0,
            fontWeight: FontWeight.bold,
          ),
        ),
      ),
    ),
  );
}
