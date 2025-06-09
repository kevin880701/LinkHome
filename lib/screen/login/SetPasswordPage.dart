import 'package:flutter/material.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:haohsing_flutter/define.dart';
import 'package:haohsing_flutter/extensions/PageExtensions.dart';
import 'package:haohsing_flutter/provider/UserProvider.dart';
import 'package:haohsing_flutter/resources/AppResources.dart';
import 'package:haohsing_flutter/route/AppRouter.gr.dart';
import 'package:haohsing_flutter/screen/base/BasePage.dart';
import 'package:haohsing_flutter/utils/ToastHelper.dart';
import 'package:haohsing_flutter/widgets/common/AppBarWidgets.dart';
import 'package:haohsing_flutter/widgets/common/ButtonWidgets.dart';
import 'package:haohsing_flutter/widgets/login/LoginInput.dart';
import 'package:haohsing_flutter/widgets/login/LoginTitlebar.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:auto_route/auto_route.dart';
import 'package:haohsing_flutter/widgets/common/TextWidgets.dart';

@RoutePage()
class SetPasswordPage extends HookConsumerWidget {
  const SetPasswordPage({super.key, required this.account});

  final String account;

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final passwordController = useTextEditingController();
    final checkPasswordController = useTextEditingController();
    final userNotifier = ref.read(userProvider.notifier);
    final isPasswordVisible = useState(false);
    final isCheckPasswordVisible = useState(false);
    final _isAgree = useState(false);
    final _isClickable = useState(false);

    useEffect(() {
      void validatePassword() {
        if (passwordController.text.length >= 6 &&
            passwordController.text.length <= 18 &&
            passwordController.text == checkPasswordController.text &&
            _isAgree.value == true) {
          _isClickable.value = true;
        } else {
          _isClickable.value = false;
        }
      }

      passwordController.addListener(validatePassword);
      checkPasswordController.addListener(validatePassword);

      validatePassword();

      return () {
        passwordController.removeListener(validatePassword);
        checkPasswordController.removeListener(validatePassword);
      };
    }, [_isAgree.value, passwordController.text, checkPasswordController.text]);

    return BasePage(
      appBar: bgDarkAppBar(),
      statusBarColor: AppColors.bgColor,
      child: SafeArea(
          child: Container(
            padding: EdgeInsets.all(24.sp),
            child: SingleChildScrollView(
                child: Container(
                    height: MediaQuery.of(context).size.height -
                        MediaQuery.of(context).padding.top -
                        MediaQuery.of(context).padding.bottom -
                        AppBar().preferredSize.height,
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        LoginTitlebar(title: AppTexts.setPassword, context: context, isBack: true),
                        SizedBox(
                          height: 36.sp,
                        ),
                        customText(AppTexts.plsEnterPassword, fontWeight: FontWeight.w400, fontSize: 18.sp),
                        SizedBox(
                          height: 24.sp,
                        ),
                        loginInput(
                          textEditingController: passwordController,
                            fieldIcon: 'ic_password.png',
                            isVisibleTap: () {
                              isPasswordVisible.value = !isPasswordVisible.value;
                            },
                            isPasswordVisible: isPasswordVisible.value,
                            hintText: AppTexts.plsEnterPassword2,
                            maxLength: 18,
                            validator: (msg) {
                              if (msg == null || msg.isEmpty) {
                                return "";
                              } else if (msg.length < 6 || msg.length > 18) {
                                return AppTexts.passwordErrorMsg;
                              }
                              return null;
                            },),
                        SizedBox(
                          height: 28.sp,
                        ),
                        loginInput(
                          textEditingController: checkPasswordController,
                            fieldIcon: 'ic_password.png',
                            isVisibleTap: () {
                              isCheckPasswordVisible.value = !isCheckPasswordVisible.value;
                            },
                            isPasswordVisible: isCheckPasswordVisible.value,
                            hintText: AppTexts.plsReEnterPassword,
                            maxLength: 18,
                            validator: (msg) {
                              if (msg == null || msg.isEmpty) {
                                return "";
                              } else if (passwordController.text != checkPasswordController.text) {
                                return AppTexts.passwordNotMatch;
                              } else if (msg.length < 6 || msg.length > 18) {
                                return AppTexts.passwordErrorMsg;
                              }
                              return null;
                            },),
                        Row(
                          children: [
                            Checkbox(
                              side: BorderSide(color: AppColors.primaryYellow, width: 2.sp),
                              checkColor: Colors.white,
                              activeColor: AppColors.primaryYellow,
                              value: _isAgree.value,
                              onChanged: (bool? value) {
                                _isAgree.value = value ?? false;
                              },
                            ),
                            GestureDetector(
                                onTap: () {
                                  _isAgree.value = !_isAgree.value;
                                },
                                child: Row(
                                  children: [
                                    customText(AppTexts.iAgree, fontWeight: FontWeight.w400, fontSize: 14.sp),
                                  ],
                                )),
                            SizedBox(
                              width: 4.sp,
                            ),
                            customText(
                              AppTexts.privacyPolicy,
                              fontWeight: FontWeight.w400,
                              fontSize: 14.sp,
                              color: AppColors.primaryYellow,
                              underline: true,
                              onTap: () async {
                                final result = await AutoRouter.of(context).push(const RegisterPrivacyPolicyRoute());
                                if (result == true) {
                                  _isAgree.value = true;
                                }
                              },
                            ),
                          ],
                        ),
                        Spacer(),
                        roundedButton(
                          radius: 12.sp,
                          text: AppTexts.confirm,
                          onTap: () async {
                            if (_isClickable.value) {
                              ref.showLoading();
                              userNotifier
                                  .userAdd(account: account, password: passwordController.text)
                                  .then((response) {
                                    if(response != null){
                                      if (response.result == 0) {
                                        AutoRouter.of(context).push(RegisterSuccessRoute(account: account));
                                      }else if (response.result == 10) {
                                        userNotifier.forgetPassword(account).then((_){
                                          AutoRouter.of(context).push(ForgotPasswordRoute(email: account));
                                        });
                                      }else{
                                        showErrorToast(context: context, text: '註冊失敗！');
                                      }
                                    }
                                ref.hideLoading();
                              });
                            }
                          },
                          bgColor: _isClickable.value ? AppColors.primaryYellow : AppColors.disableGrey,
                          fontColor: AppColors.white,
                        ),
                      ],
                    ))),
          )),
    );
  }
}
