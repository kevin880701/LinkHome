import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:haohsing_flutter/define.dart';
import 'package:haohsing_flutter/resources/AppResources.dart';
import 'package:haohsing_flutter/utils/dialog/DialogManager.dart';
import 'package:haohsing_flutter/utils/dialog/widget/DialogTitleBar.dart';
import 'package:haohsing_flutter/widgets/common/ButtonWidgets.dart';
import 'package:haohsing_flutter/widgets/login/LoginInput.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:haohsing_flutter/widgets/common/TextWidgets.dart';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:haohsing_flutter/define.dart';
import 'package:haohsing_flutter/resources/AppResources.dart';
import 'package:haohsing_flutter/utils/dialog/DialogManager.dart';
import 'package:haohsing_flutter/utils/dialog/widget/DialogTitleBar.dart';
import 'package:haohsing_flutter/widgets/common/ButtonWidgets.dart';
import 'package:haohsing_flutter/widgets/login/LoginInput.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:haohsing_flutter/widgets/common/TextWidgets.dart';

class BottomEditDialog extends HookConsumerWidget {
  const BottomEditDialog({
    super.key,
    required this.title,
    this.hintText,
    this.defaultText,
    required this.buttonText,
    this.onTap,
    this.isValid,
    this.invalidText = AppTexts.inputFieldCannotEmpty,
    this.wordLimit = 20,
    this.inputType = InputType.ALL,
  });

  final String title;
  final String? hintText;
  final String? defaultText;
  final String buttonText;
  final void Function(String text)? onTap;
  final bool Function(String text)? isValid;
  final String invalidText;
  final int? wordLimit;
  final InputType inputType;

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    List<TextInputFormatter> inputFormatters;
    final textController = useTextEditingController(text: defaultText);
    TextInputType keyboardType;

    // 自動設置 wordLimit 為 96 如果 inputType 是 EMAIL，否則使用傳入的值
    final int? effectiveMaxLength = (inputType == InputType.EMAIL)
        ? 96
        : (inputType == InputType.PHONENUMBER)
        ? 10
        : wordLimit;

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
          LengthLimitingTextInputFormatter(effectiveMaxLength),
        ];
        keyboardType = TextInputType.number;
        break;
      case InputType.ALPHANUMERIC:
        inputFormatters = [
          FilteringTextInputFormatter.allow(RegExp(r'[a-zA-Z0-9]')),
          LengthLimitingTextInputFormatter(effectiveMaxLength),
        ];
        keyboardType = TextInputType.visiblePassword;
        break;
      default:
        inputFormatters = [
          FilteringTextInputFormatter.deny(symbolsRegExp),
          FilteringTextInputFormatter.deny(emojiRegExp),
          LengthLimitingTextInputFormatter(effectiveMaxLength),
        ];
        keyboardType = TextInputType.name;
    }

    return Dialog(
      alignment: Alignment.bottomCenter,
      insetPadding: EdgeInsets.zero,
      child: Container(
        padding: EdgeInsets.fromLTRB(16.sp, 20.sp, 16.sp, 20.sp),
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(16),
          color: AppColors.white,
        ),
        child: Column(
          mainAxisSize: MainAxisSize.min,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            DialogTitleBar(),
            SizedBox(
              height: 16.sp,
            ),
            customText(title,
                fontWeight: FontWeight.w600, fontSize: 16.sp, overflow: null, textAlign: TextAlign.center),
            SizedBox(
              height: 16.sp,
            ),
            TextFormField(
              controller: textController,
              cursorColor: AppColors.primaryYellow,
              keyboardType: keyboardType,
              inputFormatters: inputFormatters,
              style: TextStyle(
                color: AppColors.primaryBlack,
                fontSize: 16.sp,
                fontFamily: 'PingFang TC',
                fontWeight: FontWeight.w400,
              ),
              decoration: InputDecoration(
                  contentPadding: EdgeInsets.fromLTRB(24.sp, 12.sp, 24.sp, 12.sp),
                  filled: true,
                  fillColor: AppColors.white,
                  focusedBorder: OutlineInputBorder(
                    borderSide: BorderSide(width: 1.sp, color: AppColors.primaryBlack),
                    borderRadius: BorderRadius.circular(96.sp),
                  ),
                  border: OutlineInputBorder(
                    borderSide: BorderSide(width: 1.sp, color: AppColors.primaryBlack),
                    borderRadius: BorderRadius.circular(96.sp),
                  ),
                  hintText: hintText ?? "",
                  hintStyle: TextStyle(
                      fontSize: 14.sp, fontFamily: 'PingFang TC', fontWeight: FontWeight.w400, color: AppColors.grey)),
            ),
            SizedBox(
              height: 32.sp,
            ),
            roundedButton(
              radius: 12.sp,
              text: buttonText,
              onTap: () {
                final trimmedText = textController.text.trim();

                if (trimmedText.isEmpty) {
                  showErrorDialog(context, title: '輸入不能為空或只有空格');
                } else if (isValid != null && !isValid!(trimmedText)) {
                  showErrorDialog(context, title: invalidText);
                } else if (wordLimit != null && trimmedText.length > wordLimit!) {
                  showErrorDialog(context, title: '最多只能輸入 $wordLimit 個字元');
                } else {
                  Navigator.pop(context, trimmedText);
                  if (onTap != null) {
                    onTap!(trimmedText);
                  }
                }
              },
              bgColor: AppColors.primaryYellow,
              fontColor: AppColors.white,
              borderColor: AppColors.primaryYellow,
            ),
          ],
        ),
      ),
    );
  }
}
