import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:haohsing_flutter/define.dart';
import 'package:haohsing_flutter/resources/AppResources.dart';
import 'package:signature/signature.dart';
import 'dart:typed_data';
import 'package:haohsing_flutter/widgets/common/TextWidgets.dart';
import 'package:haohsing_flutter/widgets/common/ImageWidgets.dart';

class SignatureWidget extends HookWidget {
  final String fieldName;
  final String value;
  final Function()? onTap;
  final Color fontColor;
  final ValueNotifier<SignatureController> controller;

  const SignatureWidget({
    super.key,
    required this.fieldName,
    required this.value,
    this.onTap,
    this.fontColor = AppColors.primaryBlack,
    required this.controller,
  });

  @override
  Widget build(BuildContext context) {
    final signatureImage = useState<Uint8List?>(null);

    useEffect(() {
      void updateSignatureImage() async {
        if (controller.value.isNotEmpty) {
          final imageBytes = await controller.value.toPngBytes();
          signatureImage.value = imageBytes;
        } else {
          signatureImage.value = null;
        }
      }

      controller.value.addListener(updateSignatureImage);
      updateSignatureImage();

      return () => controller.value.removeListener(updateSignatureImage);
    }, [controller.value]);

    return GestureDetector(
      onTap: () async {
        if (onTap != null) {
          await onTap!();
        }
      },
      child: Container(
        margin: EdgeInsets.symmetric(vertical: 6.sp),
        padding: EdgeInsets.all(16.sp),
        width: double.infinity,
        decoration: BoxDecoration(
          color: AppColors.white,
          borderRadius: BorderRadius.circular(8.sp),
        ),
        child: Row(
          children: [
            Expanded(
              child: Row(
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  customText(
                    fieldName,
                    fontWeight: FontWeight.w500,
                    fontSize: 16.sp,
                  ),
                  Expanded(
                    // 显示签名图片
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.end,
                      children: [
                        if (signatureImage.value != null) ...[
                          Image.memory(
                            signatureImage.value!,
                            height: 24.sp,
                            width: 24.sp,
                          )
                        ]
                      ],
                    ),
                  ),
                  if (onTap != null) assetImage('ic_arrow_right.png', width: 24.sp),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
