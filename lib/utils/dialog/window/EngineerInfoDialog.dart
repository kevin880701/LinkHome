import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:haohsing_flutter/define.dart';
import 'package:haohsing_flutter/provider/UserProvider.dart';
import 'package:haohsing_flutter/resources/AppResources.dart';
import 'package:haohsing_flutter/utils/dialog/widget/DialogTitleBar.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:haohsing_flutter/widgets/common/TextWidgets.dart';
import 'package:haohsing_flutter/widgets/common/ImageWidgets.dart';

class EngineerInfoDialog extends HookConsumerWidget {
  const EngineerInfoDialog({
    super.key,
  });

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final userState = ref.watch(userProvider);

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
            const DialogTitleBar(
              isBack: false,
            ),
            SizedBox(
              height: 8.sp,
            ),
            customText(
              AppTexts.engineerInfo,
              fontWeight: FontWeight.w600,
              fontSize: 16.sp,
            ),
            SizedBox(
              height: 16.sp,
            ),
            Container(
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
                  userState?.userResponse?.headshot ?? "",
                  fit: BoxFit.cover,
                  width: 64.sp,
                  height: 64.sp,
                  defaultImage: 'default_avatar.png',
                ),
              ),
            ),
            SizedBox(
              height: 8.sp,
            ),
            customText(
              userState?.userResponse?.name ?? "",
              fontWeight: FontWeight.w500,
              fontSize: 24.sp,
            ),
            SizedBox(
              height: 8.sp,
            ),
            customText("${AppTexts.employeeNumberField}${userState?.userResponse?.userId}",
                fontWeight: FontWeight.w400, fontSize: 16.sp, color: AppColors.grey),
            SizedBox(
              height: 8.sp,
            ),
            Container(
              padding: EdgeInsets.all(16.sp),
              decoration: BoxDecoration(color: AppColors.lightGrey2, borderRadius: BorderRadius.circular(16)),
              child: Row(
                children: [
                  customText(
                    AppTexts.serviceUnit,
                    fontWeight: FontWeight.w400,
                    fontSize: 16.sp,
                  ),
                  SizedBox(
                    width: 8.sp,
                  ),
                  Expanded(
                      child: customText(userState?.userResponse?.vendorName ?? '',
                          fontWeight: FontWeight.w400, fontSize: 16.sp, color: AppColors.grey, textAlign: TextAlign.end))
                ],
              ),
            ),
            SizedBox(
              height: 8.sp,
            ),
            Container(
              padding: EdgeInsets.all(16.sp),
              decoration: BoxDecoration(color: AppColors.lightGrey2, borderRadius: BorderRadius.circular(16)),
              child: Row(
                children: [
                  customText(
                    AppTexts.phone,
                    fontWeight: FontWeight.w400,
                    fontSize: 16.sp,
                  ),
                  SizedBox(
                    width: 12.sp,
                  ),
                  Expanded(
                      child: customText(formatPhoneNumber(userState.userResponse?.tel ?? ''),
                          fontWeight: FontWeight.w400, fontSize: 16.sp, color: AppColors.grey, textAlign: TextAlign.end))
                ],
              ),
            ),
            SizedBox(
              height: 32.sp,
            ),
          ],
        ),
      ),
    );
  }
}
