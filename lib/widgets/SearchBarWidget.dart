import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:haohsing_flutter/resources/AppResources.dart';
import 'package:haohsing_flutter/widgets/common/ImageWidgets.dart';

class SearchBarWidget extends HookWidget {
  final TextEditingController controller;
  final String hintText;

  const SearchBarWidget({
    super.key,
    required this.controller,
    required this.hintText,
  });

  @override
  Widget build(BuildContext context) {
    var border = OutlineInputBorder(
      borderSide: BorderSide(width: 2.sp, color: AppColors.grey),
      borderRadius: BorderRadius.circular(96.sp),
    );

    return Container(
      width: double.infinity,
      alignment: Alignment.centerLeft,
      child: TextFormField(
        cursorColor: AppColors.primaryYellow,
        controller: controller,
        style: TextStyle(
          color: AppColors.primaryBlack,
          fontSize: 16.sp,
          fontFamily: 'PingFang TC',
          fontWeight: FontWeight.w400,
        ),
        autovalidateMode: AutovalidateMode.onUserInteraction,
        decoration: InputDecoration(
          contentPadding: EdgeInsets.fromLTRB(8.sp, 0.sp, 24.sp, 0.sp),
          filled: true,
          fillColor: AppColors.transparent,
          enabledBorder: border,
          focusedBorder: border,
          errorBorder: border,
          focusedErrorBorder: border,
          border: InputBorder.none,
          hintText: hintText,
          prefixIcon: Padding(
            padding: EdgeInsets.all(16.sp),
            child: assetImage('ic_search.png',
                width: 16.sp, height: 16.sp, color: AppColors.lightGrey),
          ),
          hintStyle: TextStyle(
              fontSize: 14.sp,
              fontFamily: 'PingFang TC',
              fontWeight: FontWeight.w400,
              color: AppColors.grey),
          errorStyle: TextStyle(fontSize: 14.sp,fontFamily: 'PingFang TC',
              fontWeight: FontWeight.w400,color: AppColors.errorRed),),

      ),
    );
  }
}