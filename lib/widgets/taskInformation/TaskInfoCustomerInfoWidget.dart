import 'dart:io';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:haohsing_flutter/define.dart';
import 'package:haohsing_flutter/resources/AppResources.dart';
import 'package:haohsing_flutter/utils/ToastHelper.dart';
import 'package:haohsing_flutter/utils/Validators.dart';
import 'package:haohsing_flutter/widgets/common/TextWidgets.dart';
import 'package:url_launcher/url_launcher.dart';

class TaskInfoCustomerInfoWidget extends HookWidget {
  final String? customerName;
  final String? phone;
  final String? address;

  const TaskInfoCustomerInfoWidget({
    super.key,
    required this.customerName,
    required this.phone,
    required this.address,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.symmetric(vertical: 6.sp),
      padding: EdgeInsets.all(16.sp),
      width: double.infinity,
      decoration: BoxDecoration(
        color: AppColors.white,
        borderRadius: BorderRadius.circular(8.sp),
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          customText(
            AppTexts.customerInformation,
            fontWeight: FontWeight.w500,
            fontSize: 16.sp,
          ),
          SizedBox(
            height: 4.sp,
          ),
          SizedBox(
            height: 4.sp,
          ),
          Row(
            children: [
              customText(AppTexts.name3,
                  fontWeight: FontWeight.w500,
                  fontSize: 16.sp,
                  color: AppColors.darkGrey),
              Expanded(
                  child: Container(
                      margin: EdgeInsets.only(left: 8.sp),
                      alignment: Alignment.centerRight,
                      child: customText(customerName ?? "",
                          fontWeight: FontWeight.w400,
                          fontSize: 16.sp,
                          color: AppColors.darkGrey)))
            ],
          ),
          SizedBox(
            height: 4.sp,
          ),
          Row(
            children: [
              customText(AppTexts.contactNumber,
                  fontWeight: FontWeight.w500,
                  fontSize: 16.sp,
                  color: AppColors.darkGrey),
              Expanded(
                  child: Container(
                      margin: EdgeInsets.only(left: 8.sp),
                      alignment: Alignment.centerRight,
                      child: GestureDetector(
                        onTap: () async {
                          if (phone.toString().tryInt()) {
                            final Uri phoneUri = Uri(
                              scheme: 'tel',
                              path: phone.toString(),
                            );

                            if (await canLaunchUrl(phoneUri)) {
                              await launchUrl(phoneUri);
                            } else {
                              showErrorToast(context: context, text: AppTexts.invalidPhoneNumber);
                              throw 'Could not launch $phone';
                            }
                          } else {
                            showErrorToast(context: context, text: AppTexts.invalidPhoneNumber);
                          }
                        },
                        child: customText(
                          phone ?? "",
                          fontWeight: FontWeight.w400,
                          fontSize: 16.sp,
                          color: AppColors.primaryYellow,
                        ),
                      )))
            ],
          ),
          SizedBox(
            height: 4.sp,
          ),
          Row(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              customText(AppTexts.address,
                  fontWeight: FontWeight.w500,
                  fontSize: 16.sp,
                  color: AppColors.darkGrey),
              Expanded(
                  child: Container(
                      margin: EdgeInsets.only(left: 8.sp),
                      alignment: Alignment.centerRight,
                      child: GestureDetector(
                        onTap: () async {
                          Uri mapUri;

                          if (Platform.isIOS) {
                            // 使用 Apple Maps
                            mapUri = Uri.parse('http://maps.apple.com/?q=${Uri.encodeComponent(address??"")}');
                          } else {
                            // 使用 Google Maps
                            mapUri = Uri.parse('https://www.google.com/maps/search/?api=1&query=${Uri.encodeComponent(address??"")}');
                          }

                          // 檢查設備上有無可打開地圖連結的app
                          if (await canLaunchUrl(mapUri)) {
                            await launchUrl(mapUri, mode: LaunchMode.externalApplication);
                          } else {
                            showErrorToast(context: context, text: AppTexts.cantOpenMap);
                            throw 'Could not launch map for $address';
                          }
                        },
                        child: customText(address ?? "",
                            fontWeight: FontWeight.w400,
                            fontSize: 16.sp,
                            color: AppColors.primaryYellow,
                            overflow: null,
                            textAlign: TextAlign.end),
                      )))
            ],
          ),
        ],
      ),
    );
  }
}
