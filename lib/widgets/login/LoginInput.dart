import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:haohsing_flutter/define.dart';
import 'package:haohsing_flutter/resources/AppResources.dart';
import 'package:haohsing_flutter/widgets/common/ImageWidgets.dart';

Widget loginInput({
  String? fieldIcon,
  Function()? isVisibleTap,
  bool isPasswordVisible = false,
  String? initValue,
  String? Function(String?)? validator,
  String? hintText,
  bool useController = true,
  TextEditingController? textEditingController,
  int? maxLength,
  InputType inputType = InputType.ALPHANUMERIC,
  bool isAllowSymbols = false,
}) {
  var border = OutlineInputBorder(
    borderSide: BorderSide(width: 2.sp, color: AppColors.primaryBlack),
    borderRadius: BorderRadius.circular(96.sp),
  );
  var errBorder = OutlineInputBorder(
    borderSide: BorderSide(width: 2.sp, color: AppColors.errorRed),
    borderRadius: BorderRadius.circular(96.sp),
  );

  // 根據 InputType 設置 inputFormatters 和鍵盤類型，並處理 maxLength
  List<TextInputFormatter> inputFormatters;
  TextInputType keyboardType;

  // 設定默認 maxLength 值
  final effectiveMaxLength = (inputType == InputType.EMAIL)
      ? 96
      : (inputType == InputType.PHONENUMBER)
      ? 11
      : (maxLength ?? 20);

  switch (inputType) {
    case InputType.ALL:
      inputFormatters = [
        FilteringTextInputFormatter.deny(symbolsRegExp),
        FilteringTextInputFormatter.deny(emojiRegExp),
        LengthLimitingTextInputFormatter(effectiveMaxLength),
      ];
      keyboardType = TextInputType.name;
      break;
    case InputType.EMAIL:
      inputFormatters = [
        FilteringTextInputFormatter.allow(RegExp(r'[a-zA-Z0-9@.]')),
        LengthLimitingTextInputFormatter(effectiveMaxLength),
      ];
      keyboardType = TextInputType.emailAddress;
      break;
    case InputType.PHONENUMBER:
      inputFormatters = [
        FilteringTextInputFormatter.allow(RegExp(r'[0-9-]')),
        LengthLimitingTextInputFormatter(effectiveMaxLength),
      ];
      keyboardType = TextInputType.number;
      break;
    case InputType.NUMBER:
      inputFormatters = [
        FilteringTextInputFormatter.digitsOnly,
        FilteringTextInputFormatter.deny(emojiRegExp),
        LengthLimitingTextInputFormatter(effectiveMaxLength),
      ];
      keyboardType = TextInputType.number;
      break;
    default:
      inputFormatters = [
        FilteringTextInputFormatter.deny(symbolsRegExp),
        FilteringTextInputFormatter.deny(emojiRegExp),
        LengthLimitingTextInputFormatter(effectiveMaxLength),
      ];
      keyboardType = TextInputType.name;
  }

  return Container(
    width: double.infinity,
    alignment: Alignment.centerLeft,
    child: TextFormField(
      inputFormatters: inputFormatters,
      cursorColor: AppColors.primaryYellow,
      validator: validator,
      controller: (textEditingController != null) ? textEditingController : null,
      style: TextStyle(
        color: AppColors.primaryBlack,
        fontSize: 16.sp,
        fontFamily: 'PingFang TC',
        fontWeight: FontWeight.w400,
      ),
      obscureText: isVisibleTap == null ? false : !isPasswordVisible,
      keyboardType: keyboardType,
      autovalidateMode: AutovalidateMode.onUserInteraction,
      decoration: InputDecoration(
        contentPadding: EdgeInsets.fromLTRB(16.sp, 0.sp, 24.sp, 0.sp),
        suffixIcon: isVisibleTap != null
            ? IconButton(
          splashColor: Colors.transparent,
          icon: isPasswordVisible
              ? assetImage("ic_visibility.png", width: 24.sp, color: AppColors.grey)
              : assetImage("ic_invisibility.png", width: 24.sp, color: AppColors.grey),
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
        prefixIcon: (fieldIcon != null)
            ? Padding(
          padding: EdgeInsets.all(12.sp),
          child: assetImage(fieldIcon, width: 24.sp, height: 24.sp, color: AppColors.primaryBlack),
        )
            : null,
        hintStyle: TextStyle(
          fontSize: 14.sp,
          fontFamily: 'PingFang TC',
          fontWeight: FontWeight.w400,
          color: AppColors.grey,
        ),
        errorStyle: TextStyle(
          fontSize: 14.sp,
          fontFamily: 'PingFang TC',
          fontWeight: FontWeight.w400,
          color: AppColors.errorRed,
        ),
      ),
    ),
  );
}

class DashTextInputFormatter extends TextInputFormatter {
  @override
  TextEditingValue formatEditUpdate(
      TextEditingValue oldValue, TextEditingValue newValue) {
    // 清除之前輸入的'-'符號，並保留數字
    String newText = newValue.text.replaceAll('-', '');

    // 如果字串長度大於4，並且還沒有加上'-'符號，自動加上
    if (newText.length > 4) {
      newText = newText.substring(0, 4) + '-' + newText.substring(4);
    }

    return TextEditingValue(
      text: newText,
      selection: TextSelection.collapsed(offset: newText.length),
    );
  }
}
