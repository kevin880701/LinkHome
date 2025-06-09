import 'package:email_validator/email_validator.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:haohsing_flutter/define.dart';
import 'package:haohsing_flutter/resources/AppResources.dart';
import 'package:haohsing_flutter/route/AppRouter.gr.dart';
import 'package:haohsing_flutter/screen/base/BasePage.dart';
import 'package:haohsing_flutter/screen/userScreen/home/home/HomeProvider.dart';
import 'package:haohsing_flutter/utils/dialog/DialogManager.dart';
import 'package:haohsing_flutter/widgets/MainTitleBar.dart';
import 'package:haohsing_flutter/widgets/common/ButtonWidgets.dart';
import 'package:haohsing_flutter/widgets/home/DeviceShareItem.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:auto_route/auto_route.dart';
import 'DeviceShareProvider.dart';
import 'package:haohsing_flutter/widgets/common/TextWidgets.dart';
import 'package:haohsing_flutter/widgets/common/ImageWidgets.dart';

@RoutePage()
class DeviceSharePage extends HookConsumerWidget {
  const DeviceSharePage({super.key, required this.placeId});

  final int placeId;

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final screenWidth = MediaQuery.of(context).size.width;
    final homeState = ref.watch(homeProvider);
    final deviceShareState = ref.watch(deviceShareProvider);
    final deviceShareNotifier = ref.read(deviceShareProvider.notifier);

    useEffect(() {
      WidgetsBinding.instance.addPostFrameCallback((_) async {
        int countDevicesWithPlaceId = homeState.deviceList.where((device) => device.placeId == placeId).length;
        if (countDevicesWithPlaceId <= 0) {
          showDefaultDialog(
            context,
            iconColor: AppColors.errorRed,
            title: AppTexts.noDeviceRegisteredYet,
            content: AppTexts.plsRegisterDeviceFirst,
            barrierDismissible: false,
            canPop: false,
            firstButton: roundedButton(
                radius: 12.sp,
                text: AppTexts.cancel,
                onTap: () {
                  AutoRouter.of(context).popUntil((route) => route.settings.name == PlaceManagerRoute.name);
                },
                bgColor: AppColors.white,
                fontColor: AppColors.primaryYellow,
                borderColor: AppColors.primaryYellow),
            secondButton: roundedButton(
                radius: 12.sp,
                text: AppTexts.register,
                onTap: () {
                  AutoRouter.of(context).pushAndPopUntil(
                    SearchDeviceRoute(),
                    predicate: (route) => route.settings.name == MainRoute.name,
                  );
                },
                bgColor: AppColors.primaryYellow,
                fontColor: AppColors.white,
                borderColor: AppColors.primaryYellow),
          );
        } else {
          await deviceShareNotifier.updatePlaceId(placeId: placeId).then((_) async {
            await deviceShareNotifier.getDeviceMembers();
          });
        }
      });
      return null;
    }, []);

    return BasePage(
      child: SafeArea(
        child: Container(
          height: double.infinity,
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              MainTitleBar(title: AppTexts.deviceShare, isBack: true),
              Expanded(
                child: Container(
                  padding: EdgeInsets.fromLTRB(18.sp, 24.sp, 18.sp, 12.sp),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          customText(AppTexts.memberList, fontWeight: FontWeight.w500, fontSize: 18.sp),
                          customText(AppTexts.addMemberPlus,
                              fontWeight: FontWeight.w500, fontSize: 14.sp, color: AppColors.primaryYellow, onTap: () {
                            if (deviceShareState.deviceMemberList.length < 6) {
                              showBottomEditDialog(context,
                                  barrierDismissible: false,
                                  title: AppTexts.addMember,
                                  hintText: AppTexts.enterEmail,
                                  buttonText: AppTexts.invite, onTap: (text) {
                                deviceShareNotifier.addDeviceMember(account: text, placeId: placeId);
                              }, isValid: (text) {
                                return EmailValidator.validate(text);
                              },
                                  inputType: InputType.EMAIL, invalidText: AppTexts.emailFailed, wordLimit: null);
                            } else {
                              showErrorDialog(context, title: AppTexts.deviceBeenSharedMax, content: AppTexts.deviceSharedUpSix);
                            }
                          }),
                        ],
                      ),
                      if (deviceShareState.deviceMemberList.isEmpty)
                        Expanded(
                          child: Column(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              assetImage('img_empty.png', width: screenWidth * 0.65, height: screenWidth * 0.65 * 0.8),
                              customText(AppTexts.noMemberYet,
                                  fontWeight: FontWeight.w500, color: AppColors.lightGrey, fontSize: 16.sp),
                            ],
                          ),
                        )
                      else ...[
                        SizedBox(
                          height: 8.sp,
                        ),
                        Expanded(
                          child: ListView.builder(
                            itemCount: deviceShareState.deviceMemberList.length,
                            itemBuilder: (context, index) {
                              return DeviceShareItem(
                                index: index,
                                deviceMemberResponse: deviceShareState.deviceMemberList[index],
                                placeId: placeId,
                                onDelete: () {
                                  deviceShareNotifier.deleteDeviceMember(
                                      placeId: placeId, userId: deviceShareState.deviceMemberList[index].userId);
                                },
                              );
                            },
                          ),
                        )
                      ]
                    ],
                  ),
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
