import 'package:flutter/cupertino.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:haohsing_flutter/define.dart';
import 'package:haohsing_flutter/resources/AppColors.dart';
import 'package:haohsing_flutter/resources/AppTexts.dart';
import 'package:haohsing_flutter/widgets/common/ButtonWidgets.dart';
import 'package:haohsing_flutter/widgets/common/TextWidgets.dart';

enum DeviceStatus {
  notSupportWifi,
  connect,
  error,
  notConnect,
  shutDown,
}

DeviceStatus getDeviceStatus({
  required int? online,
  required int? power,
  required int? error,
}) {
  if (online == null) {
    return DeviceStatus.notSupportWifi;
  } else if (online == 0) {
    return DeviceStatus.notConnect;
  } else if (power == 0) {
    return DeviceStatus.shutDown;
  } else if (error == 1) {
    return DeviceStatus.error;
  } else {
    return DeviceStatus.connect;
  }
}

Widget getHomeDeviceStatusWidget(DeviceStatus status) {
  switch (status) {
    case DeviceStatus.notSupportWifi:
      return SizedBox();
    case DeviceStatus.connect:
      return Container(
        width: 8.sp,
        height: 8.sp,
        decoration: BoxDecoration(
          color: AppColors.green,
          borderRadius: BorderRadius.circular(96.sp),
        ),
      );
    case DeviceStatus.error:
      return Container(
        padding: EdgeInsets.fromLTRB(4.sp, 4.sp, 4.sp, 4.sp),
        decoration: BoxDecoration(
          color: AppColors.errorRed,
          borderRadius: BorderRadius.circular(96.sp),
        ),
        child: customText(AppTexts.abnormal, fontWeight: FontWeight.w400, fontSize: 10.sp, color: AppColors.white),
      );
    case DeviceStatus.notConnect:
      return Container(
        padding: EdgeInsets.fromLTRB(4.sp, 4.sp, 4.sp, 4.sp),
        decoration: BoxDecoration(
          color: AppColors.darkGrey,
          borderRadius: BorderRadius.circular(96.sp),
        ),
        child: customText(AppTexts.notConnect, fontWeight: FontWeight.w400, fontSize: 10.sp, color: AppColors.white),
      );
    case DeviceStatus.shutDown:
      return Container(
        width: 8.sp,
        height: 8.sp,
        decoration: BoxDecoration(
          color: AppColors.lightGrey,
          borderRadius: BorderRadius.circular(96.sp),
        ),
      );
  }
}

Widget getDeviceInfoStatusWidget(int? type, DeviceStatus status, int? h2e, String? h2eN, VoidCallback onTap) {
  if (status == DeviceStatus.notSupportWifi || status == DeviceStatus.notConnect || status == DeviceStatus.shutDown) {
    return Container(
      margin: EdgeInsets.symmetric(vertical: 8.sp),
      decoration: BoxDecoration(
        color: AppColors.lightGrey,
        borderRadius: BorderRadius.circular(96.sp),
      ),
      padding: EdgeInsets.symmetric(vertical: 4.sp, horizontal: 8.sp),
      child: customText(
        AppTexts.notConnect,
        fontWeight: FontWeight.w400,
        fontSize: 14.sp,
        color: AppColors.white,
      ),
    );
  } else if (h2e != 0) {
    return Column(
      children: [
        Container(
          margin: EdgeInsets.only(top: 8.sp),
          decoration: BoxDecoration(
            color: AppColors.errorRed,
            borderRadius: BorderRadius.circular(96.sp),
          ),
          padding: EdgeInsets.symmetric(vertical: 4.sp, horizontal: 8.sp),
          child: customText(
            AppTexts.fault,
            fontWeight: FontWeight.w400,
            fontSize: 14.sp,
            color: AppColors.white,
          ),
        ),
        customText(
          '#${h2eN.toString()}',
          fontWeight: FontWeight.w500,
          fontSize: 16.sp,
          color: AppColors.errorRed,
        ),
        if (type == 0) ...[
          SizedBox(
            height: 8.sp,
          ),
          roundedButton(
            radius: 12.sp,
            text: AppTexts.notifyManufacturer,
            onTap: onTap,
            borderColor: AppColors.errorRed,
            bgColor: AppColors.white,
            fontColor: AppColors.errorRed,
          )
        ]
      ],
    );
  } else {
    return Container(
      margin: EdgeInsets.symmetric(vertical: 8.sp),
      decoration: BoxDecoration(
        color: AppColors.primaryYellow,
        borderRadius: BorderRadius.circular(96.sp),
      ),
      padding: EdgeInsets.symmetric(vertical: 4.sp, horizontal: 8.sp),
      child: customText(
        AppTexts.drinkable,
        fontWeight: FontWeight.w400,
        fontSize: 14.sp,
        color: AppColors.white,
      ),
    );
  }
}
