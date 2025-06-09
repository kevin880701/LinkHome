import 'dart:io';

import 'package:file_picker/file_picker.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:haohsing_flutter/define.dart';
import 'package:haohsing_flutter/provider/UserProvider.dart';
import 'package:haohsing_flutter/resources/AppResources.dart';
import 'package:haohsing_flutter/route/AppRouter.dart';
import 'package:haohsing_flutter/screen/base/BasePage.dart';
import 'package:haohsing_flutter/utils/FileManager.dart';
import 'package:haohsing_flutter/utils/PermissionHelper.dart';
import 'package:haohsing_flutter/utils/Validators.dart';
import 'package:haohsing_flutter/utils/dialog/DialogManager.dart';
import 'package:haohsing_flutter/utils/AppLog.dart';
import 'package:haohsing_flutter/utils/SharedPreferencesHelper.dart';
import 'package:haohsing_flutter/widgets/MainTitleBar.dart';
import 'package:haohsing_flutter/widgets/common/ButtonWidgets.dart';
import 'package:haohsing_flutter/widgets/item/ItemTextWidget.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:auto_route/auto_route.dart';
import 'package:haohsing_flutter/widgets/common/TextWidgets.dart';
import 'package:haohsing_flutter/widgets/common/ImageWidgets.dart';

import 'PersonalInformationProvider.dart';

@RoutePage()
class PersonalInformationPage extends HookConsumerWidget {
  const PersonalInformationPage({
    super.key,
  });

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final userState = ref.watch(userProvider);
    final userNotifier = ref.read(userProvider.notifier);
    final personalInformationState = ref.watch(personalInformationProvider);
    final personalInformationNotifier = ref.read(personalInformationProvider.notifier);

    useEffect(() {
      personalInformationNotifier.getCities();
      return null;
    }, []);

    return BasePage(
      child: SafeArea(
        bottom: false,
        child: Container(
          height: double.infinity,
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              MainTitleBar(
                title: AppTexts.personalInformation,
                isBack: true,
              ),
              Expanded(
                child: Container(
                  padding: EdgeInsets.fromLTRB(18.sp, 24.sp, 18.sp, 12.sp),
                  child: SingleChildScrollView(
                      child: Column(
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      GestureDetector(
                        onTap: () async {
                          bool hasPermission = await checkStoragePermission(context);

                          if (hasPermission) {
                            List<File> selectedFiles = await pickMedia(
                              context: context,
                              sizeLimitMB: 10,
                              fileType: FileType.image,
                            );

                            if (selectedFiles.isNotEmpty) {
                              for (File file in selectedFiles) {
                                userNotifier.updateAvatar(avatarImage: file);
                              }
                            } else {
                              AppLog.i('No files selected');
                            }
                          } else {
                            AppLog.i('Storage permission denied');
                          }
                        },
                        child: Container(
                          width: 64.sp,
                          height: 64.sp,
                          decoration: BoxDecoration(
                            shape: BoxShape.circle,
                            border: Border.all(
                              color: AppColors.primaryYellow,
                              width: 2.sp,
                            ),
                          ),
                          child: ClipOval(
                            child: netImage(
                              userState.userResponse?.headshot ?? "",
                              fit: BoxFit.cover,
                              width: 64.sp,
                              height: 64.sp,
                              defaultImage: 'default_avatar.png',
                            ),
                          ),
                        ),
                      ),
                      SizedBox(
                        height: 4.sp,
                      ),
                      customText(
                        userState.userResponse?.name ?? AppTexts.user,
                        fontWeight: FontWeight.w500,
                        fontSize: 24.sp,
                      ),
                      SizedBox(
                        height: 4.sp,
                      ),
                      customText(
                        (userState.userResponse?.rolesName == "一般使用者")
                            ? userState.userResponse?.account ?? ""
                            : "${AppTexts.employeeNumberField}${userState.userResponse?.userId}",
                        fontWeight: FontWeight.w400,
                        fontSize: 14.sp,
                      ),
                      SizedBox(
                        height: 8.sp,
                      ),
                      ItemTextWidget(
                        fieldName: AppTexts.name2,
                        value: userState.userResponse?.name ?? AppTexts.plsEnter,
                        valueColor: AppColors.grey,
                        onTap: () async {
                          showBottomEditDialog(
                            context,
                            title: AppTexts.modifyName,
                            hintText: AppTexts.plsEnterName,
                            defaultText: userState.userResponse?.name ?? "",
                            buttonText: AppTexts.save,
                            onTap: (text) {
                              userNotifier.changeUserName(text);
                            },
                          );
                        },
                      ),
                      ItemTextWidget(
                        fieldName: AppTexts.email,
                        value: userState.userResponse?.account ?? "",
                        valueColor: AppColors.grey,
                      ),
                      if (userState.userResponse?.rolesName == "一般使用者" &&
                          userState.loginResponse?.loginType == 'platform') ...[
                        ItemTextWidget(
                          fieldName: AppTexts.changePassword,
                          value: '',
                          onTap: () {
                            showChangePasswordDialog(
                              context,
                              barrierDismissible: false,
                              onConfirmTap: (newPassword, oldPassword) {
                                userNotifier.changePassword(newPassword: newPassword, password: oldPassword);
                              },
                            );
                          },
                        )
                      ],
                      ItemTextWidget(
                        fieldName: AppTexts.phone,
                        value: (userState.userResponse?.tel != null)
                            ? formatPhoneNumber((userState!.userResponse!.tel!))
                            : AppTexts.plsEnter,
                        valueColor: AppColors.grey,
                        onTap: () {
                          showBottomEditDialog(
                            context,
                            title: AppTexts.modifyPhone,
                            hintText: AppTexts.plsEnterPhone,
                            defaultText: userState.userResponse?.tel ?? "",
                            inputType: InputType.PHONENUMBER,
                            buttonText: AppTexts.save,
                            onTap: (text) {
                              userNotifier.changeUserPhone(text);
                            },
                            isValid: (text) {
                              return (text.isValidPhoneNumber());
                            },
                            invalidText: AppTexts.phoneFailed,
                          );
                        },
                      ),
                      if (userState.userResponse?.rolesName == "一般使用者") ...[
                        ItemTextWidget(
                          fieldName: AppTexts.region,
                          value: (userState.userResponse?.city != null && userState.userResponse?.region != null)
                              ? '${userState.userResponse?.city}${userState.userResponse?.region}'
                              : AppTexts.plsChoose,
                          valueColor: AppColors.grey,
                          onTap: () async {
                            if (personalInformationState.cities.isNotEmpty) {
                              showBottomListDialog(
                                context,
                                title: AppTexts.city,
                                defaultText: userState.userResponse?.city,
                                list: personalInformationState.cities,
                                buttonText: AppTexts.next,
                                onFinishTap: (cityIndex) async {
                                  AutoRouter.of(context).popForced();
                                  await personalInformationNotifier
                                      .getRegions(countyName: personalInformationState.cities[cityIndex])
                                      .then((getRegionsResponse) {
                                    if (getRegionsResponse != null) {
                                      showBottomListDialog(
                                        context,
                                        title: AppTexts.region,
                                        defaultText: userState.userResponse?.city,
                                        list: getRegionsResponse.regions.toList(),
                                        onFinishTap: (regionIndex) async {
                                          await userNotifier
                                              .changeUserRegion(
                                                  city: personalInformationState.cities[cityIndex],
                                                  region: getRegionsResponse.regions[regionIndex])
                                              .then((isChangeSuccess) {
                                            if (isChangeSuccess) {
                                              userNotifier.getUserInfo();
                                            }
                                          });
                                          AutoRouter.of(context).popForced();
                                        },
                                      );
                                    }
                                  });
                                },
                              );
                            }
                          },
                        )
                      ],
                      SizedBox(
                        height: 24.sp,
                      ),
                      roundedButton(
                          radius: 12.sp,
                          text: AppTexts.logout,
                          onTap: () {
                            showDefaultDialog(
                              context,
                              iconColor: AppColors.errorRed,
                              title: AppTexts.checkLogout,
                              firstButton: roundedButton(
                                  radius: 12.sp,
                                  text: AppTexts.cancel,
                                  onTap: () {
                                    AutoRouter.of(context).popForced();
                                  },
                                  bgColor: AppColors.white,
                                  fontColor: AppColors.primaryYellow,
                                  borderColor: AppColors.primaryYellow),
                              secondButton: roundedButton(
                                radius: 12.sp,
                                text: AppTexts.confirm,
                                onTap: () {
                                  userNotifier.logout();
                                  goLogin(context, ref);
                                },
                                bgColor: AppColors.primaryYellow,
                                fontColor: AppColors.white,
                              ),
                            );
                          },
                          bgColor: AppColors.transparent,
                          fontColor: AppColors.errorRed,
                          borderColor: AppColors.errorRed),
                      SizedBox(
                        height: 16.sp,
                      ),
                      roundedButton(
                          radius: 12.sp,
                          text: AppTexts.deleteAccount,
                          onTap: () {
                            showDefaultDialog(
                              context,
                              iconColor: AppColors.errorRed,
                              title: AppTexts.checkDeleteAccount,
                              content: AppTexts.checkDeleteAccountMsg,
                              firstButton: roundedButton(
                                  radius: 12.sp,
                                  text: AppTexts.cancel,
                                  onTap: () {
                                    AutoRouter.of(context).popForced();
                                  },
                                  bgColor: AppColors.white,
                                  fontColor: AppColors.primaryYellow,
                                  borderColor: AppColors.primaryYellow),
                              secondButton: roundedButton(
                                  radius: 12.sp,
                                  text: AppTexts.confirm,
                                  onTap: () {
                                    userNotifier.deleteAccount(account: userState!.userResponse!.account).then((_) {
                                      SharedPreferencesHelper.instance.saveToken("");
                                      goLogin(context, ref);
                                    });
                                  },
                                  bgColor: AppColors.errorRed,
                                  fontColor: AppColors.white,
                                  borderColor: AppColors.errorRed),
                            );
                          },
                          bgColor: AppColors.lightGrey,
                          fontColor: AppColors.errorRed,
                          borderColor: AppColors.lightGrey),
                    ],
                  )),
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
