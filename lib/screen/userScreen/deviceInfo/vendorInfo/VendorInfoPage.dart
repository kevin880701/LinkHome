import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:haohsing_flutter/define.dart';
import 'package:haohsing_flutter/resources/AppResources.dart';
import 'package:haohsing_flutter/screen/base/BasePage.dart';
import 'package:haohsing_flutter/widgets/MainTitleBar.dart';
import 'package:haohsing_flutter/widgets/item/ItemSubTitleWidget.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:auto_route/auto_route.dart';
import 'package:haohsing_flutter/widgets/common/TextWidgets.dart';

@RoutePage()
class VendorInfoPage extends HookConsumerWidget {
  final String? vendorName;
  final String? vendorPhone;

  const VendorInfoPage({
    super.key,
    required this.vendorName,
    required this.vendorPhone,
  });

  @override
  Widget build(BuildContext context, WidgetRef ref) {

    return BasePage(
      child: SafeArea(
        child: Container(
          child: Column(
            children: [
              MainTitleBar(title: AppTexts.vendorInformation, isBack: true),
              Container(
                  padding: EdgeInsets.symmetric(horizontal: 24.sp),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      ItemSubTitleWidget(title: AppTexts.information),
                      Container(
                        padding: EdgeInsets.all(16.sp),
                        width: double.infinity,
                        decoration: BoxDecoration(
                          color: AppColors.white,
                          borderRadius: BorderRadius.circular(16.sp),
                        ),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            customText(AppTexts.vendorInformation, fontWeight: FontWeight.w500, fontSize: 16.sp),
                            SizedBox(height: 4.sp,),
                            Row(
                              children: [
                                customText(AppTexts.place, fontWeight: FontWeight.w500, fontSize: 16.sp, color: AppColors.grey),
                                Spacer(),
                                customText(vendorName ?? "豪星總公司",
                                    fontWeight: FontWeight.w500, fontSize: 16.sp, color: AppColors.grey),
                              ],
                            ),
                            SizedBox(height: 4.sp,),
                            Row(
                              children: [
                                customText(AppTexts.contactNumber, fontWeight: FontWeight.w500, fontSize: 16.sp, color: AppColors
                                    .grey),
                                Spacer(),
                                customText(vendorPhone ?? "--",
                                    fontWeight: FontWeight.w500, fontSize: 16.sp, color: AppColors.primaryYellow),
                              ],
                            )
                          ],
                        ),
                      )
                    ],
                  )),
            ],
          ),
        ),
      ),
    );
  }
}
