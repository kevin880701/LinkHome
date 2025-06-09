import 'dart:io';

import 'package:email_validator/email_validator.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:haohsing_flutter/define.dart';
import 'package:haohsing_flutter/extensions/PageExtensions.dart';
import 'package:haohsing_flutter/model/response/user/login/LoginResponse.dart';
import 'package:haohsing_flutter/provider/UserProvider.dart';
import 'package:haohsing_flutter/resources/AppResources.dart';
import 'package:haohsing_flutter/route/AppRouter.dart';
import 'package:haohsing_flutter/route/AppRouter.gr.dart';
import 'package:haohsing_flutter/screen/base/BasePage.dart';
import 'package:haohsing_flutter/utils/ToastHelper.dart';
import 'package:haohsing_flutter/utils/dialog/DialogManager.dart';
import 'package:haohsing_flutter/utils/SharedPreferencesHelper.dart';
import 'package:haohsing_flutter/widgets/common/AppBarWidgets.dart';
import 'package:haohsing_flutter/widgets/common/ButtonWidgets.dart';
import 'package:haohsing_flutter/widgets/login/LoginInput.dart';
import 'package:haohsing_flutter/widgets/login/LoginTitlebar.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:auto_route/auto_route.dart';
import 'package:haohsing_flutter/widgets/common/TextWidgets.dart';
import 'package:haohsing_flutter/widgets/common/ImageWidgets.dart';

@RoutePage()
class LoginPage extends HookConsumerWidget {
  const LoginPage({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final accountController = useTextEditingController();
    final passwordController = useTextEditingController();
    final isPasswordVisible = useState(false);
    final _isKeepLogin = useState<bool>(false);
    final userNotifier = ref.read(userProvider.notifier);
    final _isClickable = useState(false);

    void login(LoginResponse? loginResponse) async {
      ref.showLoading();
      if (loginResponse != null) {
        if (loginResponse.result == 10) {
          showErrorDialog(context, title: AppTexts.loginFailed, content: AppTexts.wrongAccountOrPassword);
        } else if (loginResponse.result == 15) {
          await showDefaultDialog(
            context,
            title: AppTexts.notVerifiedYet,
            content: AppTexts.goToMailActivateAccount,
            firstButton: roundedButton(
              radius: 12.sp,
              text: AppTexts.back,
              onTap: () {
                AutoRouter.of(context).popForced();
              },
              bgColor: AppColors.white,
              fontColor: AppColors.primaryYellow,
              borderColor: AppColors.primaryYellow,
            ),
            secondButton: roundedButton(
              radius: 12.sp,
              text: AppTexts.resentMail,
              onTap: () {
                AutoRouter.of(context).popForced();
                userNotifier.resendActiveMail(account: accountController.text);
              },
              bgColor: AppColors.errorRed,
              fontColor: AppColors.white,
            ),
          );
        } else {
          await userNotifier.getUserInfo().then((userResponse) async {
            if (userResponse != null) {
              if (_isKeepLogin.value == true) {
                SharedPreferencesHelper.instance.saveToken(loginResponse.token ?? "");
                SharedPreferencesHelper.instance.saveLoginType(loginResponse.loginType ?? "");
              }
              // await userNotifier.sentFcmToken();
              if (userResponse.rolesName == "一般使用者") {
                goUserMain(context, ref);
              } else {
                goEngineerMain(context, ref);
              }
            } else {
              showToast(context: context, text: AppTexts.loginFailed);
            }
          });
        }
      } else {
        // showErrorDialog(context, title: AppTexts.loginFailed, content: AppTexts.loginFailedMsg);
      }
      ref.hideLoading();
    }

    useEffect(() {
      void updateIsClickable() {
        _isClickable.value = EmailValidator.validate(accountController.text) && passwordController.text.isNotEmpty;
      }

      accountController.addListener(updateIsClickable);
      passwordController.addListener(updateIsClickable);

      updateIsClickable();

      return () {
        accountController.removeListener(updateIsClickable);
        passwordController.removeListener(updateIsClickable);
      };
    }, [accountController.value, passwordController.text]);

    useEffect(() {
      WidgetsBinding.instance.addPostFrameCallback((_) async {
        ref.showLoading();
        bool? isKeepLogin = await SharedPreferencesHelper.instance.getKeepLogin();
        String? recordToken = await SharedPreferencesHelper.instance.getToken();
        String? loginType = await SharedPreferencesHelper.instance.getLoginType();
          if (isKeepLogin == true && recordToken?.isNotEmpty == true && loginType?.isNotEmpty == true) {
              await userNotifier.longtime(recordToken!, loginType!).then((longtimeResponse) async {
                if (longtimeResponse != null) {
                  await userNotifier.getUserInfo().then((userResponse) async {
                    if (userResponse != null) {
                      SharedPreferencesHelper.instance.saveToken(longtimeResponse.token ?? "");
                      if (userResponse.rolesName == "一般使用者") {
                        goUserMain(context, ref);
                      } else {
                        goEngineerMain(context, ref);
                      }
                    }
                  });
                }
              });
          }
        ref.hideLoading();
      });
      return null;
    }, []);

    useValueChanged(_isKeepLogin.value, (_, __) {
      var result = SharedPreferencesHelper.instance.saveKeepLogin(_isKeepLogin.value);

      return result;
    });

    return BasePage(
        onWillPop: () async {
          SystemNavigator.pop();
          return false;
        },
        appBar: bgDarkAppBar(),
        statusBarColor: AppColors.bgColor,
        child: Container(
          padding: EdgeInsets.all(24.sp),
          child: SingleChildScrollView(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  LoginTitlebar(title: AppTexts.login, context: context),
                  SizedBox(
                    height: 36.sp,
                  ),
                  loginInput(
                    fieldIcon: 'ic_email.png',
                    inputType: InputType.EMAIL,
                    hintText: AppTexts.mail,
                    textEditingController: accountController,
                    validator: (msg) {
                      return (msg == null || msg.isEmpty || !EmailValidator.validate(msg) ? AppTexts.emailFailed : null);
                    },
                  ),
                  SizedBox(
                    height: 24.sp,
                  ),
                  loginInput(
                      fieldIcon: 'ic_password.png',
                      isVisibleTap: () {
                        isPasswordVisible.value = !isPasswordVisible.value;
                      },
                      isPasswordVisible: isPasswordVisible.value,
                      hintText: AppTexts.password,
                      textEditingController: passwordController),
                  Row(
                    children: [
                      Checkbox(
                        side: BorderSide(color: AppColors.primaryYellow, width: 2.sp),
                        checkColor: Colors.white,
                        activeColor: AppColors.primaryYellow,
                        value: _isKeepLogin.value,
                        onChanged: (bool? value) {
                          _isKeepLogin.value = value ?? false;
                        },
                      ),
                      GestureDetector(
                        onTap: () {
                          _isKeepLogin.value = !_isKeepLogin.value;
                        },
                        child: customText(AppTexts.keepLoginState, fontWeight: FontWeight.w400, fontSize: 16.sp),
                      ),
                      Spacer(),
                      GestureDetector(
                        onTap: () {
                          showBottomEditDialog(context,
                              title: AppTexts.forgotPassword2,
                              hintText: AppTexts.plsEnterEmail,
                              buttonText: AppTexts.send, onTap: (text) async {
                                ref.showLoading();
                                await userNotifier.forgetPassword(text).then((isSent) {
                                  ref.hideLoading();
                                  if (isSent) {
                                    AutoRouter.of(context).push(ForgotPasswordRoute(email: text));
                                  } else {
                                    showErrorDialog(context, title: AppTexts.sendPasswordChangeLinkFailed);
                                  }
                                });
                              }, isValid: (text) {
                                return (EmailValidator.validate(text));
                              },
                              inputType: InputType.EMAIL, invalidText: AppTexts.emailFailed, wordLimit: null);
                        },
                        child: customText(
                          AppTexts.forgotPassword,
                          fontWeight: FontWeight.w400,
                          fontSize: 16.sp,
                        ),
                      ),
                    ],
                  ),
                  SizedBox(height: 24.sp),
                  roundedButton(
                    radius: 12.sp,
                    text: AppTexts.login,
                    onTap: () async {
                      if (_isClickable.value) {
                        await userNotifier
                            .login(accountController.text, passwordController.text)
                            .then((loginResponse) async {
                          login(loginResponse);
                        });
                      }
                    },
                    bgColor: _isClickable.value ? AppColors.primaryYellow : AppColors.disableGrey,
                    fontColor: AppColors.white,
                  ),
                  SizedBox(height: 24.sp),
                  Row(
                    children: [
                      customText(AppTexts.notRegister, fontWeight: FontWeight.w400),
                      GestureDetector(
                        onTap: () {
                          AutoRouter.of(context).push(const CreateAccountRoute());
                        },
                        child: customText(AppTexts.register, fontWeight: FontWeight.w600, color: AppColors.primaryYellow),
                      )
                    ],
                  ),
                  SizedBox(height: 24.sp),
                  Row(
                    children: [
                      const Expanded(
                        child: Divider(
                          color: Colors.grey,
                          thickness: 1,
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.symmetric(horizontal: 8.0),
                        child: customText(AppTexts.or, fontWeight: FontWeight.w400, fontSize: 16.sp),
                      ),
                      Expanded(
                        child: Divider(
                          color: Colors.grey,
                          thickness: 1,
                        ),
                      ),
                    ],
                  ),
                  SizedBox(height: 16),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      GestureDetector(
                        onTap: () {
                          userNotifier.googleLogin().then((loginResponse) async {
                            login(loginResponse);
                          });
                        },
                        child: CircleAvatar(
                          radius: 26.sp,
                          backgroundColor: Colors.white,
                          child: assetImage('ic_google.png', width: 32.sp),
                        ),
                      ),
                      if (Platform.isIOS) ...[
                        SizedBox(width: 48.sp),
                        GestureDetector(
                          onTap: () {
                            userNotifier.signInWithApple().then((loginResponse) async {
                              if (loginResponse != null) {
                                login(loginResponse);
                              } else {
                                showToast(context: context, text: AppTexts.loginFailed);
                              }
                            });
                          },
                          child: CircleAvatar(
                            radius: 26.sp,
                            backgroundColor: Colors.white,
                            child: assetImage('ic_apple.png', width: 32.sp),
                          ),
                        ),
                      ],
                    ],
                  ),
                ],
              )),
        ));
  }
}

