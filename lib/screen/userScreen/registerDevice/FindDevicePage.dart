import 'dart:async';
import 'dart:convert';
import 'package:firebase_crashlytics/firebase_crashlytics.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:haohsing_flutter/define.dart';
import 'package:haohsing_flutter/extensions/PageExtensions.dart';
import 'package:haohsing_flutter/model/deviceBlueResponse/DeviceBlueResponse.dart';
import 'package:haohsing_flutter/provider/BluetoothProvider.dart';
import 'package:haohsing_flutter/resources/AppResources.dart';
import 'package:haohsing_flutter/route/AppRouter.dart';
import 'package:haohsing_flutter/route/AppRouter.gr.dart';
import 'package:haohsing_flutter/screen/base/BasePage.dart';
import 'package:haohsing_flutter/utils/dialog/DialogManager.dart';
import 'package:haohsing_flutter/utils/AppLog.dart';
import 'package:haohsing_flutter/utils/navigation_helper.dart';
import 'package:haohsing_flutter/widgets/MainTitleBar.dart';
import 'package:haohsing_flutter/widgets/common/ButtonWidgets.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:auto_route/auto_route.dart';
import 'package:haohsing_flutter/widgets/common/TextWidgets.dart';
import 'package:haohsing_flutter/utils/ToastHelper.dart';
import 'package:haohsing_flutter/widgets/common/ImageWidgets.dart';

@RoutePage()
class FindDevicePage extends HookConsumerWidget {
  const FindDevicePage({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final bluetoothState = ref.watch(bluetoothProvider);
    final bluetoothNotifier = ref.read(bluetoothProvider.notifier);
    Timer? timeoutTimer;

    void pairDevice() async {
      // 停止先前的掃描
      bluetoothNotifier.stopScan();
      ref.showLoading();
      final deviceName =
          "HAOHSING-IoT-${bluetoothState.deviceScanQr!.id.substring(bluetoothState.deviceScanQr!.id.length - 6)}";

      // 設定7秒的逾時未找到裝置
      final timeoutFuture = Future.delayed(Duration(seconds: 7), () => null);

      // 開始掃描裝置
      final scanFuture = bluetoothNotifier.startScan(deviceName: deviceName);


      void startTimeoutTimer() {
        // 如果有之前的計時器，先取消
        timeoutTimer?.cancel();

        timeoutTimer = Timer(Duration(seconds: 12), () {
          if (bluetoothState.receivedMessage.isEmpty) {
            showErrorDialog(
              context,
              canPop: false,
              title: AppTexts.noDeviceMessageReceive,
              content: '${AppTexts.plsReset}',
              onTap: () {
                bluetoothNotifier.disconnectFromDevice();
                goUserMain(context, ref);
              },
            );
          }
        });
      }

      // 等待掃描或超時其中一個先完成
      Future.any([scanFuture, timeoutFuture]).then((device) {
        if (device != null) {
          // 成功找到裝置
          showSuccessToast(context: context, text: "裝置配對成功!");
          showToast(context: context, text: "查詢WIFI中...");
          bluetoothNotifier.writeToCharacteristic('{"cmd":"scan"}');
          // 在成功配對並發送命令後，啟動秒計時
          startTimeoutTimer();
        } else {
          // 如果7秒後沒找到裝置，隱藏loading並顯示提示對話框
          ref.hideLoading();
          showDefaultDialog(
            context,
            canPop: false,
            iconColor: AppColors.errorRed,
            title: AppTexts.noBluetoothDeviceFound,
            firstButton: roundedButton(
                radius: 12.sp,
                text: AppTexts.cancel,
                onTap: () {
                  // 關閉當前對話框
                  AutoRouter.of(context).popForced();
                },
                bgColor: AppColors.white,
                fontColor: AppColors.primaryYellow,
                borderColor: AppColors.primaryYellow),
            secondButton: roundedButton(
                radius: 12.sp,
                text: AppTexts.rescan,
                onTap: () {
                  AutoRouter.of(context).popForced();
                  pairDevice();
                },
                bgColor: AppColors.primaryYellow,
                fontColor: AppColors.white,
                borderColor: AppColors.primaryYellow),
          );
        }
      });
    }

    useEffect(() {
      Future.microtask(() async {
        pairDevice();
      });
      return bluetoothNotifier.stopScan;
    }, []);

    useEffect(() {

      WidgetsBinding.instance.addPostFrameCallback((_) {
        try {
          ref.hideLoading();

          if (bluetoothState.receivedMessage.isNotEmpty) {
            // 收到訊息後取消計時器
            timeoutTimer?.cancel();

            if (bluetoothState.receivedMessage == "No writable characteristic") {
              showErrorDialog(
                context,
                canPop: false,
                title: AppTexts.wifiConnectedError,
                content: '${AppTexts.plsReset}\nNo writable characteristic',
                onTap: () {
                  bluetoothNotifier.disconnectFromDevice();
                  goUserMain(context, ref);
                },
              );
            } else {
              var deviceBlueResponse = DeviceBlueResponse.fromJson(jsonDecode(bluetoothState.receivedMessage));
              deviceBlueResponse = sortWifiDataInDeviceResponse(deviceBlueResponse);

              AutoRouter.of(context).replace(EnableSettingModeRoute(
                deviceBlueResponse: deviceBlueResponse,
              ));
            }
          }
        } catch (e, stackTrace) {
          timeoutTimer?.cancel();
          FirebaseCrashlytics.instance.recordError('Error parsing received message: $e', stackTrace);
          AppLog.e('Error parsing received message: $e');
          showErrorDialog(
            context,
            canPop: false,
            title: AppTexts.wifiConnectedError,
            content: '${AppTexts.plsReset}\n$e',
            onTap: () {
              bluetoothNotifier.disconnectFromDevice();
              goUserMain(context, ref);
            },
          );
        }
      });

      return () {
        timeoutTimer?.cancel();
      };
    }, [bluetoothState.receivedMessage]);

    return BasePage(
      onWillPop: () async {
        registerDeviceBack(context, ref);
        return false;
      },
      child: SafeArea(
        child: Container(
          child: Column(
            children: [
              MainTitleBar(
                title: AppTexts.findDevice,
                onBackTap: () {
                  registerDeviceBack(context, ref);
                },
              ),
              Container(
                  padding: EdgeInsets.symmetric(horizontal: 24.sp),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      SizedBox(height: 48.sp),
                      assetImage('device.png', height: 136.sp),
                      SizedBox(
                        height: 8.sp,
                      ),
                      customText(
                        "${AppTexts.macField}${bluetoothState.deviceScanQr!.id}",
                        fontWeight: FontWeight.w400,
                        fontSize: 14.sp,
                        color: AppColors.grey,
                      ),
                    ],
                  )),
            ],
          ),
        ),
      ),
    );
  }
}
