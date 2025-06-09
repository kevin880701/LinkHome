
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:haohsing_flutter/define.dart';
import 'package:haohsing_flutter/provider/BluetoothProvider.dart';
import 'package:haohsing_flutter/resources/AppResources.dart';
import 'package:haohsing_flutter/route/AppRouter.dart';
import 'package:haohsing_flutter/route/AppRouter.gr.dart';
import 'package:haohsing_flutter/screen/base/BasePage.dart';
import 'package:haohsing_flutter/widgets/MainTitleBar.dart';
import 'package:haohsing_flutter/widgets/common/ButtonWidgets.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:auto_route/auto_route.dart';
import 'package:haohsing_flutter/widgets/common/TextWidgets.dart';
import 'package:haohsing_flutter/widgets/common/ImageWidgets.dart';

@RoutePage()
class SearchDevicePage extends HookConsumerWidget {

  const SearchDevicePage({
    super.key,
  });

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final screenWidth = MediaQuery.of(context).size.width;
    final bluetoothState = ref.watch(bluetoothProvider);
    final bluetoothNotifier = ref.watch(bluetoothProvider.notifier);

    useEffect((){
      WidgetsBinding.instance.addPostFrameCallback((_) async {
        bluetoothNotifier.disconnectFromDevice();
      });
      return null;
      },[]);

    return BasePage(
      onWillPop: () async {
        goUserMain(context, ref);
        return false;
      },
      child: SafeArea(
        child: Container(
          child: Column(
            children: [
              MainTitleBar(title: AppTexts.searchDevice, onBackTap: (){
                goUserMain(context, ref);
              },),
              Expanded(child: Container(
                  padding: EdgeInsets.symmetric(horizontal: 24.sp, vertical: 24.sp),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      customText(AppTexts.plsScanPair, fontWeight: FontWeight.w500, fontSize: 16.sp),
                      SizedBox(height: 8.sp),
                      customText(AppTexts.plsScanPairIllustrate, fontWeight: FontWeight.w500, fontSize: 14.sp, color: AppColors.grey,
                          overflow: null),
                      SizedBox(height: 48.sp),
                      assetImage('img_qrcode_manual.png', width: screenWidth * 0.4, height: screenWidth * 0.4 * 1.3),
                      SizedBox(height: 16.sp),
                      customText(AppTexts.manual, fontWeight: FontWeight.w500, fontSize: 16.sp, overflow: null),
                      Spacer(),
                      roundedButton(
                          radius: 12.sp,
                          text: AppTexts.startScan,
                          onTap: () async {
                            if (await bluetoothNotifier.isBluetoothEnabled()) {
                              AutoRouter.of(context).push(const ScanQrRoute());
                            } else {
                              AutoRouter.of(context).push(const PlsTurnOnBluetoothRoute());
                            }
                          },
                          bgColor: AppColors.primaryYellow,
                          fontColor: AppColors.white,
                          borderColor: AppColors.primaryYellow),
                      gapH16,
                      roundedButton(
                          radius: 12.sp,
                          text: AppTexts.enterModelNumber,
                          onTap: () async {
                            AutoRouter.of(context).replace(const AddDeviceRoute());
                          },
                          bgColor: AppColors.transparent,
                          fontColor: AppColors.primaryYellow,
                          borderColor: AppColors.primaryYellow)
                    ],
                  )))
              ,
            ],
          ),
        ),
      ),
    );
  }
}
