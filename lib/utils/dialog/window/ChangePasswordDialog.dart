import 'package:auto_route/auto_route.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:haohsing_flutter/define.dart';
import 'package:haohsing_flutter/resources/AppResources.dart';
import 'package:haohsing_flutter/widgets/common/ButtonWidgets.dart';
import 'package:haohsing_flutter/widgets/login/LoginInput.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:haohsing_flutter/widgets/common/TextWidgets.dart';

class ChangePasswordDialog extends HookConsumerWidget {
  const ChangePasswordDialog({
    super.key,
    required this.onConfirmTap,
  });

  final Function(String, String) onConfirmTap;

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final screenHeight = MediaQuery.of(context).size.height;
    final oldPasswordController = useTextEditingController();
    final newPasswordController = useTextEditingController();
    final checkNewPasswordController = useTextEditingController();

    final isOldPasswordVisible = useState(false);
    final isNewPasswordVisible = useState(false);
    final isCheckNewPasswordVisible = useState(false);

    final isButtonClick = useState<bool>(false);

    useEffect(() {
      void validatePassword() {
        String oldPassword = oldPasswordController.text;
        String newPassword = newPasswordController.text;
        String checkNewPassword = checkNewPasswordController.text;

        if (oldPassword.isNotEmpty &&
            newPassword.isNotEmpty &&
            checkNewPassword.isNotEmpty &&
            oldPassword.length >= 6 && oldPassword.length <= 18 &&
            newPassword.length >= 6 && newPassword.length <= 18 &&
            checkNewPassword.length >= 6 && checkNewPassword.length <= 18 &&
            newPassword == checkNewPassword) {
          isButtonClick.value = true;
        } else {
          isButtonClick.value = false;
        }
      }

      oldPasswordController.addListener(validatePassword);
      newPasswordController.addListener(validatePassword);
      checkNewPasswordController.addListener(validatePassword);

      return () {
        oldPasswordController.removeListener(validatePassword);
        newPasswordController.removeListener(validatePassword);
        checkNewPasswordController.removeListener(validatePassword);
      };
    }, []);

    return Dialog(
      backgroundColor: AppColors.white,
      alignment: Alignment.center,
      child: Container(
        height: screenHeight * 0.45,
        alignment: Alignment.center,
        padding: EdgeInsets.only( left: 16, right: 16, top: 20, bottom: 16, ),
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(16),
            color: AppColors.white,
          ),
          child: SingleChildScrollView(child:Column(
            mainAxisSize: MainAxisSize.min,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              customText(AppTexts.changePassword, fontWeight: FontWeight.w500, fontSize: 18.sp),
              SizedBox(height: 16.sp),
              loginInput(
                isVisibleTap: () {
                  isOldPasswordVisible.value = !isOldPasswordVisible.value;
                },
                isPasswordVisible: isOldPasswordVisible.value,
                hintText: AppTexts.plsEnterOldPassword,
                textEditingController: oldPasswordController,
                maxLength: 18,
                validator: (msg) {
                  if (msg == null || msg.isEmpty) {
                    return "";
                  } else if (msg.length < 6 || msg.length > 18) {
                    return AppTexts.passwordErrorMsg;
                  }
                  return null;
                },
              ),
              SizedBox(height: 16.sp),
              loginInput(
                isVisibleTap: () {
                  isNewPasswordVisible.value = !isNewPasswordVisible.value;
                },
                isPasswordVisible: isNewPasswordVisible.value,
                hintText: AppTexts.plsEnterNewPassword,
                textEditingController: newPasswordController,
                maxLength: 18,
                validator: (msg) {
                  if (msg == null || msg.isEmpty) {
                    return "";
                  } else if (msg.length < 6 || msg.length > 18) {
                    return AppTexts.passwordErrorMsg;
                  }
                  return null;
                },
              ),
              SizedBox(height: 16.sp),
              loginInput(
                isVisibleTap: () {
                  isCheckNewPasswordVisible.value = !isCheckNewPasswordVisible.value;
                },
                isPasswordVisible: isCheckNewPasswordVisible.value,
                hintText: AppTexts.plsReEnterNewPassword,
                textEditingController: checkNewPasswordController,
                maxLength: 18,
                validator: (msg) {
                  if (msg == null || msg.isEmpty) {
                    return "";
                  } else if (newPasswordController.text != checkNewPasswordController.text) {
                    return AppTexts.passwordNotMatch;
                  } else if (msg.length < 6 || msg.length > 18) {
                    return AppTexts.passwordErrorMsg;
                  }
                  return null;
                },
              ),
              SizedBox(height: 24.sp),
              Row(
                children: [
                  Expanded(
                    child: Container(
                      padding: EdgeInsets.only(right: 4.sp),
                      child: roundedButton(
                        radius: 12.sp,
                        text: AppTexts.cancel,
                        onTap: () {
                          AutoRouter.of(context).popForced();
                        },
                        bgColor: AppColors.white,
                        fontColor: AppColors.primaryYellow,
                        borderColor: AppColors.primaryYellow,
                      ),
                    ),
                  ),
                  Expanded(
                    child: Container(
                      padding: EdgeInsets.only(left: 4.sp),
                      child: roundedButton(
                        radius: 12.sp,
                        text: AppTexts.confirm,
                        onTap: () {
                          if (isButtonClick.value) {
                            onConfirmTap(newPasswordController.text, oldPasswordController.text);
                            AutoRouter.of(context).popForced();
                          }
                        },
                        bgColor: isButtonClick.value ? AppColors.primaryYellow : AppColors.lightGrey,
                        fontColor: AppColors.white,
                      ),
                    ),
                  ),
                ],
              ),
            ],
          ),),
        ),
    );
  }
}
