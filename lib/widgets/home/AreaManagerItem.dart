import 'dart:ui';
import 'package:auto_route/auto_route.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:haohsing_flutter/define.dart';
import 'package:haohsing_flutter/model/response/place/areaList/AreaListResponse.dart';
import 'package:haohsing_flutter/resources/AppResources.dart';
import 'package:haohsing_flutter/utils/dialog/DialogManager.dart';
import 'package:haohsing_flutter/widgets/common/ButtonWidgets.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:haohsing_flutter/widgets/common/TextWidgets.dart';
import 'package:haohsing_flutter/widgets/common/ImageWidgets.dart';

class AreaManagerItem extends HookConsumerWidget {
  final AreaListResponse areaListResponse;
  final VoidCallback onTap;
  final VoidCallback onChangeName;

  const AreaManagerItem({
    super.key,
    required this.areaListResponse,
    required this.onChangeName,
    required this.onTap,
  });

  @override
  Widget build(BuildContext context, WidgetRef ref) {

    return Container(
      margin: EdgeInsets.symmetric(vertical: 8.sp),
      width: double.infinity,
      child: Row(
        children: [
          SizedBox(
            width: 20.sp,
          ),
          GestureDetector(
            onTap: () {
              showDefaultDialog(
                context,
                iconColor: AppColors.errorRed,
                title: AppTexts.deleteAreaMsg,
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
                    text: AppTexts.delete,
                    onTap: () {
                      AutoRouter.of(context).popForced();
                      onTap();
                    },
                    bgColor: AppColors.errorRed,
                    fontColor: AppColors.white,
                    borderColor: AppColors.errorRed),
              );
            },
            child: assetImage('ic_cancel.png', width: 16.sp, color: AppColors.primaryBlack),
          ),
          SizedBox(
            width: 24.sp,
          ),
          Expanded(
              child: GestureDetector(
            onTap: () {
              onChangeName();
            },
            child: Container(
              padding: EdgeInsets.all(16.sp),
              decoration: BoxDecoration(
                color: AppColors.white,
                borderRadius: BorderRadius.circular(16.sp),
              ),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Expanded(child: customText(areaListResponse.name, fontWeight: FontWeight.w400, fontSize: 16.sp)),
                  assetImage('ic_arrow_right.png', width: 28.sp, color: AppColors.primaryBlack)
                ],
              ),
            ),
          )),
        ],
      ),
    );
  }
}
