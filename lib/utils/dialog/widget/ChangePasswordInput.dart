import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:haohsing_flutter/resources/AppResources.dart';
import 'package:haohsing_flutter/widgets/common/ImageWidgets.dart';

Widget ChangePasswordInput({
  String? fieldIcon,
  Function()? isVisibleTap,
  bool isPasswordVisible = false,
  String? initValue,
  Function(String?)? onChanged,
  Function(String?)? onSaved,
  keyboardType = TextInputType.text,
  String? hintText,
  bool useController = true,
  TextEditingController? textEditingController,
}) {
  var border = OutlineInputBorder(
    borderSide: BorderSide(width: 1.sp, color: AppColors.primaryBlack),
    borderRadius: BorderRadius.circular(96.sp),
  );
  var errBorder = OutlineInputBorder(
    borderSide: BorderSide(width: 1.sp, color: AppColors.errorRed),
    borderRadius: BorderRadius.circular(96.sp),
  );

  return Container(
    width: double.infinity,
    alignment: Alignment.centerLeft,
    child: TextFormField(
      inputFormatters: [
        FilteringTextInputFormatter.allow(RegExp(r'[a-zA-Z0-9]')), // 僅允許輸入英文和數字
      ],
      cursorColor: AppColors.primaryYellow,
      // onChanged: (text) {
      //   if (onChanged != null) onChanged(text);
      //
      //   // 檢查長度是否在6-18之間
      //   if (text.length < 6 || text.length > 18) {
      //     print("Password must be between 6 and 18 characters");
      //   }
      // },
      onSaved: onSaved,
      controller: textEditingController,
      style: TextStyle(
        color: AppColors.primaryBlack,
        fontSize: 16.sp,
        fontFamily: 'PingFang TC',
        fontWeight: FontWeight.w400,
      ),
      obscureText: isVisibleTap == null ? false : !isPasswordVisible,
      keyboardType: keyboardType,
      decoration: InputDecoration(
          contentPadding: EdgeInsets.fromLTRB(16.sp, 0.sp, 24.sp, 0.sp),
          suffixIcon: isVisibleTap != null
              ? IconButton(
            splashColor: Colors.transparent,
            icon: isPasswordVisible
                ? assetImage("ic_visibility.png",
                width: 24.sp, color: AppColors.grey)
                : assetImage("ic_invisibility.png",
                width: 24.sp, color: AppColors.grey),
            onPressed: isVisibleTap,
          )
              : null,
          filled: true,
          fillColor: AppColors.white,
          enabledBorder: border,
          focusedBorder: border,
          errorBorder: errBorder,
          focusedErrorBorder: errBorder,
          border: InputBorder.none,
          hintText: hintText,
          hintStyle: TextStyle(
              fontSize: 14.sp,
              fontFamily: 'PingFang TC',
              fontWeight: FontWeight.w400,
              color: AppColors.grey),
          errorStyle: TextStyle(fontSize: 14.sp,fontFamily: 'PingFang TC',
          fontWeight: FontWeight.w400,color: AppColors.errorRed),),
      validator: (value) {
        if (value == null || value.isEmpty) {
          return AppTexts.plsEnterPassword;
        } else if (value.length < 6 || value.length > 18) {
          return AppTexts.passwordErrorMsg;
        }
        return null;
      },
    ),
  );
}

