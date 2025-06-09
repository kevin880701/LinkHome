import 'package:auto_route/auto_route.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:haohsing_flutter/define.dart';
import 'package:haohsing_flutter/model/deviceBlueResponse/DeviceBlueResponse.dart';
import 'package:haohsing_flutter/resources/AppResources.dart';
import 'package:haohsing_flutter/utils/dialog/widget/DialogTitleBar.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:haohsing_flutter/widgets/common/TextWidgets.dart';
import 'package:haohsing_flutter/widgets/common/ImageWidgets.dart';

class BottomWifiListDialog extends HookConsumerWidget {
  const BottomWifiListDialog({
    super.key,
    required this.list,
    required this.currentIndex,
    required this.onTap,
  });

  final List<WifiData> list;
  final int currentIndex;
  final void Function(int index) onTap;

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    double screenHeight = MediaQuery.of(context).size.height;

    return Dialog(
      alignment: Alignment.bottomCenter,
      insetPadding: EdgeInsets.zero,
      child: Container(
        padding: EdgeInsets.fromLTRB(16.sp, 20.sp, 16.sp, 20.sp),
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(16),
          color: AppColors.white,
        ),
        child: Column(
          mainAxisSize: MainAxisSize.min,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            DialogTitleBar(
              isBack: false,
            ),
            SizedBox(
              height: 16.sp,
            ),
            customText(AppTexts.chooseWifi,
                fontWeight: FontWeight.w600, fontSize: 16.sp, overflow: null, textAlign: TextAlign.center),
            SizedBox(
              height: 16.sp,
            ),
            Container(
              constraints: BoxConstraints(
                minHeight: 246.sp,
                maxHeight: screenHeight / 2,
              ),
              height: double.minPositive,
              child: ListView.builder(
                itemCount: list.length,
                itemBuilder: (context, index) {
                  return GestureDetector(
                    onTap: () {
                      onTap(index);
                      AutoRouter.of(context).popForced();
                    },
                    child: Container(
                      margin: EdgeInsets.symmetric(vertical: 4.sp),
                      decoration: BoxDecoration(
                        color: AppColors.lightGrey2,
                        borderRadius: BorderRadius.circular(8.sp),
                      ),
                      padding: EdgeInsets.symmetric(vertical: 16.sp, horizontal: 24.sp),
                      child: Container(
                        child: Row(
                          children: [
                            Expanded(
                                child: customText(
                              list[index].ssid,
                              fontWeight: FontWeight.w500,
                              fontSize: 16.sp,
                            )),
                            SizedBox(
                              width: 2.sp,
                            ),
                            if (list[index].rssi > -50) ...[
                              assetImage('ic_wifi_4.png', width: 28.sp)  // 信號非常強
                            ] else if (list[index].rssi > -60) ...[
                              assetImage('ic_wifi_3.png', width: 28.sp)  // 信號較強
                            ] else if (list[index].rssi > -70) ...[
                              assetImage('ic_wifi_2.png', width: 28.sp)  // 信號一般
                            ] else ...[
                              assetImage('ic_wifi_1.png', width: 28.sp)  // 信號較弱
                            ],
                          ],
                        ),
                      ),
                    ),
                  );
                },
              ),
            ),
          ],
        ),
      ),
    );
  }
}
