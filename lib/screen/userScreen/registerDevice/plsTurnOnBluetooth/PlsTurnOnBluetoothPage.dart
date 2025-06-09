 import 'dart:io';
 import 'package:flutter/services.dart';
import 'package:haohsing_flutter/screen/base/BasePage.dart';
import 'package:haohsing_flutter/widgets/common/TextWidgets.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:haohsing_flutter/define.dart';
import 'package:haohsing_flutter/resources/AppResources.dart';
import 'package:haohsing_flutter/widgets/MainTitleBar.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:auto_route/auto_route.dart';
 import 'package:haohsing_flutter/widgets/common/ImageWidgets.dart';

@RoutePage()
class PlsTurnOnBluetoothPage extends HookConsumerWidget {
  const PlsTurnOnBluetoothPage({
    super.key,
  });

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final screenWidth = MediaQuery.of(context).size.width;

    return BasePage(
      child: SafeArea(
        child: Container(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              MainTitleBar(
                title: AppTexts.enableSettingMode,
                isBack: true,
              ),
              SizedBox(
                height: 48.sp,
              ),
              customText(AppTexts.plsTurnOnBluetooth, fontWeight: FontWeight.w500, fontSize: 18.sp),
              SizedBox(
                height: 8.sp,
              ),
              customText(AppTexts.plsTurnOnBluetoothMsg, fontWeight: FontWeight.w400, fontSize: 16.sp),
              SizedBox(
                height: 48.sp,
              ),
              assetImage((Platform.isAndroid)?'img_bluetooth_android.png':'img_bluetooth_ios.png', width: screenWidth * 0.8, height:
              screenWidth * 0.8 * 0.7)
            ],
          ),
        ),
      ),
    );
  }
}
