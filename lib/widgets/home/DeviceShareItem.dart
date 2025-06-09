import 'dart:ui';

import 'package:auto_route/auto_route.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:haohsing_flutter/define.dart';
import 'package:haohsing_flutter/model/response/device/deviceMember/DeviceMemberResponse.dart';
import 'package:haohsing_flutter/resources/AppResources.dart';
import 'package:haohsing_flutter/route/AppRouter.gr.dart';
import 'package:haohsing_flutter/screen/userScreen/home/deviceShare/DeviceShareProvider.dart';
import 'package:haohsing_flutter/utils/dialog/DialogManager.dart';
import 'package:haohsing_flutter/widgets/common/ButtonWidgets.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:haohsing_flutter/widgets/common/TextWidgets.dart';
import 'package:haohsing_flutter/widgets/common/ImageWidgets.dart';

class DeviceShareItem extends HookConsumerWidget {
  final int index;
  final DeviceMemberResponse deviceMemberResponse;
  final VoidCallback onDelete;
  final int placeId;

  const DeviceShareItem({
    super.key,
    required this.index,
    required this.deviceMemberResponse,
    required this.onDelete,
    required this.placeId,
  });

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final isInvite = useState<bool>(false);
    final deviceShareNotifier = ref.read(deviceShareProvider.notifier);

    useEffect(() {
      isInvite.value = deviceMemberResponse.invite;
      return null;
    }, [deviceMemberResponse]);

    return Container(
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          customText('${AppTexts.member}${index + 1}',
              fontSize: 18.sp, fontWeight: FontWeight.w500, color: AppColors.primaryBlack),
          Container(
            margin: EdgeInsets.symmetric(vertical: 8.sp),
            padding: EdgeInsets.all(16.sp),
            decoration: BoxDecoration(
              color: AppColors.white,
              borderRadius: BorderRadius.circular(16.sp),
            ),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Row(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    customText(AppTexts.memberName, fontWeight: FontWeight.w400, fontSize: 16.sp),
                    SizedBox(
                      width: 8.sp,
                    ),
                    Expanded(
                        child: Align(
                      alignment: Alignment.centerRight,
                      child: customText(
                          !isInvite.value
                              ? (deviceMemberResponse.name != null)
                                  ? deviceMemberResponse.name!
                                  : AppTexts.user
                              : AppTexts.waitingInvitation,
                          fontWeight: FontWeight.w400,
                          fontSize: 16.sp,
                          color: !isInvite.value ? AppColors.lightGrey : AppColors.darkGrey),
                    )),
                  ],
                ),
                SizedBox(
                  height: 16.sp,
                ),
                Divider(
                  height: 1.sp,
                  color: AppColors.borderGrey,
                ),
                SizedBox(
                  height: 16.sp,
                ),
                GestureDetector(
                  onTap: () {
                    if (isInvite.value) {
                      showBottomEditDialog(
                        context,
                        title: AppTexts.changeEmail,
                        hintText: AppTexts.plsEnterEmail,
                        defaultText: deviceMemberResponse.account,
                        buttonText: AppTexts.reSentInvite,
                        inputType: InputType.EMAIL,
                        wordLimit: null,
                        onTap: (text){
                          deviceShareNotifier.resentInvite(placeId: placeId,
                            userId: deviceMemberResponse.userId,
                            account: text,);
                        }
                      );
                    }
                  },
                  child: Row(
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      customText(AppTexts.email, fontWeight: FontWeight.w400, fontSize: 16.sp),
                      SizedBox(
                        width: 8.sp,
                      ),
                      Expanded(
                          child: Align(
                        alignment: Alignment.centerRight,
                        child: customText(deviceMemberResponse.account,
                            fontWeight: FontWeight.w400,
                            fontSize: 16.sp,
                            color: isInvite.value ? AppColors.darkGrey : AppColors.lightGrey),
                      )),
                      isInvite.value
                          ? assetImage('ic_arrow_right.png', width: 28.sp, color: AppColors.primaryBlack)
                          : SizedBox()
                    ],
                  ),
                ),
                SizedBox(
                  height: 16.sp,
                ),
                Divider(
                  height: 1.sp,
                  color: AppColors.borderGrey,
                ),
                SizedBox(
                  height: 16.sp,
                ),
                GestureDetector(
                  onTap: () {
                    if(!isInvite.value){
                      AutoRouter.of(context).push(PermissionShareRoute(
                        placeId: placeId,
                        userId: deviceMemberResponse.userId,
                      ));
                    }
                  },
                  child: Container(
                    color: AppColors.transparent,
                    child: Row(
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                        customText(AppTexts.deviceShare, fontWeight: FontWeight.w400, fontSize: 16.sp),
                        SizedBox(
                          width: 8.sp,
                        ),
                        Expanded(
                            child: Align(
                          alignment: Alignment.centerRight,
                          child: customText(!isInvite.value ? "${deviceMemberResponse.deviceNum}台飲水機" : "--",
                              fontWeight: FontWeight.w400, fontSize: 16.sp, color: AppColors.primaryYellow),
                        )),
                        assetImage('ic_arrow_right.png', width: 28.sp, color: AppColors.primaryBlack)
                      ],
                    ),
                  ),
                ),
              ],
            ),
          ),
          SizedBox(
            height: 8.sp,
          ),
          GestureDetector(
            onTap: () {
              showDefaultDialog(
                context,
                iconColor: AppColors.errorRed,
                title: AppTexts.checkRemovePermissionTitle,
                content: AppTexts.checkRemovePermissionContent,
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
                      onDelete();
                      AutoRouter.of(context).popForced();
                    },
                    bgColor: AppColors.errorRed,
                    fontColor: AppColors.white,
                    borderColor: AppColors.errorRed),
              );
            },
            child: Container(
              width: double.infinity,
              alignment: Alignment.center,
              padding: EdgeInsets.all(8.sp),
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(8.sp),
                border: Border.all(
                  color: AppColors.errorRed,
                  width: 1.sp,
                ),
              ),
              child: customText(AppTexts.removeShare, fontWeight: FontWeight.w500, color: AppColors.errorRed),
            ),
          ),
          SizedBox(
            height: 16.sp,
          ),
          Divider(
            height: 1.sp,
            color: AppColors.borderGrey,
          )
        ],
      ),
    );
  }
}
