import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:haohsing_flutter/resources/AppResources.dart';
import 'package:haohsing_flutter/widgets/common/TextWidgets.dart';

class LoadingOverlay extends StatelessWidget {
  final String loadingText;
  final VoidCallback? onCancel;

  const LoadingOverlay({Key? key, this.loadingText = AppTexts.loading, this.onCancel})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    final screenWidth = MediaQuery.of(context).size.width;

    return Stack(
      children: [
        Opacity(
          opacity: 0.5,
          child: ModalBarrier(dismissible: false, color: AppColors.black),
        ),
        Center(
          child: Container(
            height: screenWidth * 0.36,
            width: screenWidth * 0.36,
            padding: EdgeInsets.all(8.sp),
            decoration: BoxDecoration(
              color: AppColors.black.withOpacity(0.6),
              borderRadius: BorderRadius.circular(16.sp),
            ),
            child: IntrinsicHeight(
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  ColorFiltered(
                    colorFilter: ColorFilter.mode(AppColors.primaryYellow, BlendMode.srcIn),
                    child: CupertinoActivityIndicator(
                      radius: 18.sp,
                    ),
                  ),
                  gapH12,
                  body1Text(loadingText, color: AppColors.white),
                  if (onCancel != null)
                    TextButton(
                      onPressed: onCancel,
                      child: body1Text(AppTexts.cancel, color: AppColors.grey),
                    ),
                ],
              ),
            ),
          ),
        ),
      ],
    );
  }
}
