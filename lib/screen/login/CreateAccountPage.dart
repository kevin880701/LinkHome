import 'package:email_validator/email_validator.dart';
import 'package:flutter/material.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:haohsing_flutter/define.dart';
import 'package:haohsing_flutter/provider/UserProvider.dart';
import 'package:haohsing_flutter/resources/AppResources.dart';
import 'package:haohsing_flutter/route/AppRouter.dart';
import 'package:haohsing_flutter/route/AppRouter.gr.dart';
import 'package:haohsing_flutter/screen/base/BasePage.dart';
import 'package:haohsing_flutter/utils/dialog/DialogManager.dart';
import 'package:haohsing_flutter/widgets/common/AppBarWidgets.dart';
import 'package:haohsing_flutter/widgets/common/ButtonWidgets.dart';
import 'package:haohsing_flutter/widgets/login/LoginInput.dart';
import 'package:haohsing_flutter/widgets/login/LoginTitlebar.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:auto_route/auto_route.dart';
import 'package:haohsing_flutter/widgets/common/TextWidgets.dart';

@RoutePage()
class CreateAccountPage extends HookConsumerWidget {
  const CreateAccountPage({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final emailController = useTextEditingController();
    final _isClickable = useState(false);
    final userNotifier = ref.read(userProvider.notifier);

    useEffect(() {
      void updateIsClickable() {
        _isClickable.value = EmailValidator.validate(emailController.text);
      }

      emailController.addListener(updateIsClickable);

      updateIsClickable();

      return () {
        emailController.removeListener(updateIsClickable);
      };
    }, [emailController.text]);

    return BasePage(
      appBar: bgDarkAppBar(),
      statusBarColor: AppColors.bgColor,
      onWillPop: () async {
        goLogin(context, ref);
        return false;
      },
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
                    LoginTitlebar(title: AppTexts.createAccount, context: context, isBack: true),
                    SizedBox(
                      height: 36.sp,
                    ),
                    customText(AppTexts.plsEnterAccount, fontWeight: FontWeight.w400, fontSize: 18.sp),
                    SizedBox(
                      height: 24.sp,
                    ),
                    loginInput(
                        fieldIcon: 'ic_email.png',
                        inputType: InputType.EMAIL,
                        hintText: AppTexts.mail,
                        validator: (msg) {
                          return (msg == null || msg.isEmpty || !EmailValidator.validate(msg)
                              ? AppTexts.emailFailed
                              : null);
                        },
                        textEditingController: emailController),
                    Spacer(),
                    roundedButton(
                      radius: 12.sp,
                      text: AppTexts.register,
                      onTap: () {
                        if (_isClickable.value == true) {
                          userNotifier.isUserExist(account: emailController.text).then((isExist) {
                            if (!isExist) {
                              AutoRouter.of(context).push(SetPasswordRoute(
                                account: emailController.text,
                              ));
                            } else {
                              showErrorDialog(context, title: AppTexts.accountAlreadyUsed);
                            }
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
