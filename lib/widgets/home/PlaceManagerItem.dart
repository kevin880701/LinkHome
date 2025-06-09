import 'dart:ui';
import 'package:auto_route/auto_route.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:haohsing_flutter/define.dart';
import 'package:haohsing_flutter/resources/AppResources.dart';
import 'package:haohsing_flutter/route/AppRouter.gr.dart';
import 'package:haohsing_flutter/screen/userScreen/home/placeManager/PlaceManagerProvider.dart';
import 'package:haohsing_flutter/utils/dialog/DialogManager.dart';
import 'package:haohsing_flutter/widgets/common/ButtonWidgets.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:haohsing_flutter/widgets/common/TextWidgets.dart';
import 'package:haohsing_flutter/widgets/common/ImageWidgets.dart';

class PlaceManagerItem extends HookConsumerWidget {
  final int index;

  const PlaceManagerItem({
    super.key,
    required this.index,
  });

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final placeManagerState = ref.watch(placeManagerProvider);
    final placeManagerNotifier = ref.read(placeManagerProvider.notifier);
    return Container(
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          customText('單位${index + 1}', fontSize: 18.sp, fontWeight: FontWeight.w500, color: AppColors.black),
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
                GestureDetector(
                  onTap: () {
                    showBottomEditDialog(
                      context,
                      title: AppTexts.editName,
                      hintText: AppTexts.plsEnterPlaceName,
                      defaultText: placeManagerState[index].name,
                      buttonText: AppTexts.save,
                      onTap: (text) {
                        placeManagerNotifier.changePlaceName(text, placeManagerState[index].placeId);
                      },
                    );
                  },
                  child: Container(
                      color: AppColors.transparent,
                      child: Row(
                        crossAxisAlignment: CrossAxisAlignment.center,
                        children: [
                          customText(AppTexts.placeName, fontWeight: FontWeight.w400, fontSize: 16.sp),
                          Expanded(
                              child: Align(
                            alignment: Alignment.centerRight,
                            child: customText(placeManagerState[index].name,
                                fontWeight: FontWeight.w400, fontSize: 16.sp, color: AppColors.darkGrey),
                          )),
                          assetImage('ic_arrow_right.png', width: 28.sp, color: AppColors.primaryBlack)
                        ],
                      )),
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
                    AutoRouter.of(context).push(AreaManagerRoute(
                      placeId: placeManagerState[index].placeId,
                    ));
                  },
                  child: Container(
                      color: Colors.transparent,
                      child: Row(
                        crossAxisAlignment: CrossAxisAlignment.center,
                        children: [
                          customText(AppTexts.area, fontWeight: FontWeight.w400, fontSize: 16.sp),
                          Expanded(
                              child: Align(
                            alignment: Alignment.centerRight,
                            child: customText("${placeManagerState[index].areaCount}個區域",
                                fontWeight: FontWeight.w400, fontSize: 16.sp, color: AppColors.darkGrey),
                          )),
                          assetImage('ic_arrow_right.png', width: 28.sp, color: AppColors.primaryBlack)
                        ],
                      )),
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
                    AutoRouter.of(context).push(DeviceShareRoute(
                      placeId: placeManagerState[index].placeId,
                    ));
                  },
                  child: Container(
                    color: AppColors.transparent,
                    child: Row(
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                        customText(AppTexts.deviceShare, fontWeight: FontWeight.w400, fontSize: 16.sp),
                        Expanded(
                            child: Align(
                          alignment: Alignment.centerRight,
                          child: customText("${placeManagerState[index].shareCount}個成員",
                              fontWeight: FontWeight.w400, fontSize: 16.sp, color: AppColors.darkGrey),
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
                title: AppTexts.deletePlaceMsg,
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
                      placeManagerNotifier.deletePlace(placeManagerState[index].placeId);
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
              child: customText(AppTexts.deleteThisPlace, fontWeight: FontWeight.w500, color: AppColors.errorRed),
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
