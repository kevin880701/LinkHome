import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:haohsing_flutter/resources/AppResources.dart';
import 'package:haohsing_flutter/widgets/common/TextWidgets.dart';

class ItemSwitchWidget extends HookWidget {
  final String title;
  final String? value;
  final bool isEnabled;
  final void Function(bool value) onSwitch;

  const ItemSwitchWidget({
    super.key,
    required this.title,
    required this.value,
    this.isEnabled = true,
    required this.onSwitch,
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
        children: [
          Row(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              customText(
                title,
                fontWeight: FontWeight.w500,
                fontSize: 16.sp,
                color: isEnabled ? AppColors.primaryBlack : AppColors.disableGrey,
              ),
              Spacer(),
              Container(
                width: 36.sp,
                height: 20.sp,
                child: Switch(
                  value: isEnabled ?value == '1' :false,
                  onChanged: isEnabled ? (newValue) async {
                    onSwitch(newValue);
                  } : null,
                  activeColor: AppColors.white,
                  activeTrackColor: AppColors.green,
                  inactiveThumbColor: AppColors.white,
                  inactiveTrackColor: AppColors.grey,
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }
}
