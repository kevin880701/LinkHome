import 'dart:async';

import 'package:flutter/material.dart';
import 'package:flutter/scheduler.dart';
import 'package:flutter/services.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:haohsing_flutter/define.dart';
import 'package:haohsing_flutter/provider/BluetoothProvider.dart';
import 'package:haohsing_flutter/resources/AppResources.dart';
import 'package:haohsing_flutter/route/AppRouter.dart';
import 'package:haohsing_flutter/screen/base/BasePage.dart';
import 'package:haohsing_flutter/widgets/MainTitleBar.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:auto_route/auto_route.dart';
import 'package:haohsing_flutter/widgets/common/TextWidgets.dart';
import 'package:haohsing_flutter/widgets/common/ImageWidgets.dart';

@RoutePage()
class AddSuccessPage extends HookConsumerWidget {
  const AddSuccessPage({super.key, required this.deviceName});

  final String deviceName;

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final screenWidth = MediaQuery.of(context).size.width;
    final bluetoothNotifier = ref.read(bluetoothProvider.notifier);

    useEffect(() {
      SchedulerBinding.instance.addPostFrameCallback((_) {
        Timer(Duration(seconds: 2), () {
          bluetoothNotifier.disconnectFromDevice();
          goUserMain(context, ref);
        });
      });
      return null;
    }, []);

    return BasePage(
      onWillPop: () async {
        goUserMain(context, ref);
        return false;
      },
      child: SafeArea(
        child: Container(
          child: Column(
            children: [
              MainTitleBar(
                title: AppTexts.addSuccess,
                onBackTap: () {
                  goUserMain(context, ref);
                },
              ),
              Expanded(
                  child: Container(
                padding: EdgeInsets.fromLTRB(24.sp, 0.sp, 24.sp, 24.sp),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    SizedBox(height: 24.sp),
                    assetImage('ic_yellow_check.png', width: screenWidth * 0.256, height: screenWidth * 0.256, color: AppColors.primaryYellow),
                    customText(
                      AppTexts.addDeviceSuccessfully,
                      fontWeight: FontWeight.w500,
                      fontSize: 20.sp,
                      color: AppColors.primaryYellow,
                    ),
                    customText(
                      deviceName,
                      fontWeight: FontWeight.w500,
                      fontSize: 14.sp,
                      color: AppColors.grey,
                    ),
                  ],
                ),
              )),
            ],
          ),
        ),
      ),
    );
  }
}
