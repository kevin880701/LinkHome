import 'package:auto_route/auto_route.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:haohsing_flutter/define.dart';
import 'package:haohsing_flutter/resources/AppResources.dart';
import 'package:haohsing_flutter/utils/AppLog.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:signature/signature.dart';
import 'package:haohsing_flutter/widgets/common/TextWidgets.dart';
import 'package:haohsing_flutter/widgets/common/ImageWidgets.dart';

class SignatureDialog extends HookConsumerWidget {
  const SignatureDialog({
    super.key,
    required this.fee,
    required this.controller,
  });

  final String fee;
  final ValueNotifier<SignatureController> controller;

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    double screenHeight = MediaQuery.of(context).size.height;

    return Dialog(
      alignment: Alignment.center,
      child: Container(
        height: screenHeight / 2,
        padding: EdgeInsets.fromLTRB(16.sp, 20.sp, 16.sp, 20.sp),
        color: AppColors.white,
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Row(
              children: [
                customText(AppTexts.signaturePad, fontWeight: FontWeight.w500, fontSize: 20.sp),
                Spacer(),
                GestureDetector(
                  onTap: () {
                    controller.value.clear();
                    AutoRouter.of(context).popForced();
                  },
                  child: assetImage('ic_cancel.png', width: 12.sp, height: 12.sp, color: AppColors.grey),
                )
              ],
            ),
            customText('費用：${fee} 元', fontWeight: FontWeight.w400, fontSize: 16.sp, color: AppColors.primaryYellow),
            Expanded(
              child: Signature(
                controller: controller.value,
                backgroundColor: Colors.white,
              ),
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.end,
              children: [
                GestureDetector(
                  onTap: () {
                    controller.value.clear();
                  },
                  child: customText(AppTexts.cancel, fontWeight: FontWeight.w400, fontSize: 16.sp, color: AppColors.grey),
                ),
                SizedBox(
                  width: 24.sp,
                ),
                GestureDetector(
                  onTap: () async {
                    if (controller.value.isNotEmpty) {
                      AppLog.e("${controller.value.isNotEmpty}");
                      final signatureImage = await controller.value.toPngBytes();
                      if (signatureImage != null) {
                        AppLog.v("簽名已確認");
                        AutoRouter.of(context).popForced();
                      }
                    }
                  },
                  child: customText(AppTexts.confirm,
                      fontWeight: FontWeight.w400, fontSize: 16.sp, color: AppColors.primaryYellow),
                ),
                SizedBox(
                  width: 24.sp,
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
