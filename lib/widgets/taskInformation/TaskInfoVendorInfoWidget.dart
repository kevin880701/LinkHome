import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:haohsing_flutter/define.dart';
import 'package:haohsing_flutter/provider/UserProvider.dart';
import 'package:haohsing_flutter/resources/AppResources.dart';
import 'package:haohsing_flutter/widgets/common/TextWidgets.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';

class TaskInfoVendorInfoWidget extends HookConsumerWidget {
  final String? engineerName;
  final String? vendorName;
  final String? vendorTel;

  const TaskInfoVendorInfoWidget({
    super.key,
    required this.engineerName,
    required this.vendorName,
    required this.vendorTel,
  });

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final userState = ref.watch(userProvider);

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
            AppTexts.vendorInformation,
            fontWeight: FontWeight.w500,
            fontSize: 16.sp,
          ),
          SizedBox(
            height: 4.sp,
          ),
          Row(
            children: [
              customText(AppTexts.place, fontWeight: FontWeight.w500, fontSize: 16.sp, color: AppColors.darkGrey),
              Expanded(
                  child: Container(
                      margin: EdgeInsets.only(left: 8.sp),
                      alignment: Alignment.centerRight,
                      child: customText(vendorName ?? '',
                          fontWeight: FontWeight.w400, fontSize: 16.sp, color: AppColors.darkGrey)))
            ],
          ),
          SizedBox(
            height: 4.sp,
          ),
          Row(
            children: [
              customText(AppTexts.serviceTechnician, fontWeight: FontWeight.w500, fontSize: 16.sp, color: AppColors.darkGrey),
              Expanded(
                  child: Container(
                      margin: EdgeInsets.only(left: 8.sp),
                      alignment: Alignment.centerRight,
                      child: GestureDetector(
                        onTap: () {},
                        child: customText(
                          engineerName ?? '',
                          fontWeight: FontWeight.w400,
                          fontSize: 16.sp,
                          color: AppColors.darkGrey,
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
              customText(AppTexts.contactNumber, fontWeight: FontWeight.w500, fontSize: 16.sp, color: AppColors.darkGrey),
              Expanded(
                  child: Container(
                    margin: EdgeInsets.only(left: 8.sp),
                      alignment: Alignment.centerRight,
                      child: GestureDetector(
                        onTap: () {},
                        child: customText(
                            vendorTel ?? '',
                          fontWeight: FontWeight.w400,
                          fontSize: 16.sp,
                          color: AppColors.primaryYellow,
                          overflow: null,
                          textAlign: TextAlign.end
                        ),
                      )))
            ],
          ),
        ],
      ),
    );
  }
}
