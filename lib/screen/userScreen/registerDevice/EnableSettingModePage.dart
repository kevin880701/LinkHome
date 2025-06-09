import 'dart:async';
import 'dart:convert';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:haohsing_flutter/define.dart';
import 'package:haohsing_flutter/extensions/PageExtensions.dart';
import 'package:haohsing_flutter/model/deviceBlueResponse/DeviceBlueResponse.dart';
import 'package:haohsing_flutter/provider/BluetoothProvider.dart';
import 'package:haohsing_flutter/provider/UserProvider.dart';
import 'package:haohsing_flutter/resources/AppResources.dart';
import 'package:haohsing_flutter/route/AppRouter.dart';
import 'package:haohsing_flutter/route/AppRouter.gr.dart';
import 'package:haohsing_flutter/screen/base/BasePage.dart';
import 'package:haohsing_flutter/utils/ToastHelper.dart';
import 'package:haohsing_flutter/utils/dialog/DialogManager.dart';
import 'package:haohsing_flutter/utils/AppLog.dart';
import 'package:haohsing_flutter/utils/navigation_helper.dart';
import 'package:haohsing_flutter/widgets/MainTitleBar.dart';
import 'package:haohsing_flutter/widgets/common/ButtonWidgets.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:auto_route/auto_route.dart';
import 'package:haohsing_flutter/widgets/common/TextWidgets.dart';
import 'package:haohsing_flutter/widgets/common/ImageWidgets.dart';

@RoutePage()
class EnableSettingModePage extends HookConsumerWidget {
  final DeviceBlueResponse deviceBlueResponse;

  const EnableSettingModePage({
    super.key,
    required this.deviceBlueResponse,
  });

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final passwordEditingController = useTextEditingController();
    final isButtonEnabled = useState(false);
    final _wifiIndex = useState<int>(0);
    final bluetoothNotifier = ref.read(bluetoothProvider.notifier);
    final bluetoothState = ref.watch(bluetoothProvider);
    final userState = ref.watch(userProvider);
    final countActive = useState(0);
    final hasReceivedProvResponse = useState(false);
    final timer = useState<Timer?>(null);

    // 在按鈕點擊後，啟動計時器，並且寫入藍牙命令
    void startProvisioning() {
      ref.showLoading();
      // 設置 45 秒的計時器
      timer.value = Timer(const Duration(seconds: 45), () {
        ref.hideLoading();
        showErrorDialog(
          context,
          canPop: false,
          title: AppTexts.wifiConnectedError,
          content: '裝置啟動失敗!',
          onTap: () {
            goUserMain(context, ref);
          },
        );
      });
    }

    useEffect(() {
      WidgetsBinding.instance.addPostFrameCallback((_) {
        passwordEditingController.addListener(() {
          if (passwordEditingController.text.isNotEmpty) {
            isButtonEnabled.value = true;
          } else {
            isButtonEnabled.value = false;
          }
        });
      });
      return () {
        passwordEditingController.dispose;
      };
    }, [passwordEditingController]);

    useEffect(() {
      WidgetsBinding.instance.addPostFrameCallback((_) {
        if (bluetoothState.receivedMessage.isNotEmpty) {
          hasReceivedProvResponse.value = true;
          try {
            final deviceBlueResponse = DeviceBlueResponse.fromJson(jsonDecode(bluetoothState.receivedMessage));

            switch (deviceBlueResponse.cmd) {
              case 'prov':
                if (deviceBlueResponse.result == 0) {
                  Future.delayed(Duration(seconds: 5), () {
                    bluetoothNotifier.writeToCharacteristic('{"cmd":"info"}');
                  });
                }
                break;
              case 'info':
                if (deviceBlueResponse.ip != null) {
                  if (deviceBlueResponse.ip!.isNotEmpty) {
                    showSuccessToast(context: context, text: '${deviceBlueResponse.ssid}連線成功!');
                    // WIFI連線成功
                    Future.delayed(Duration(seconds: 5), () {
                      bluetoothNotifier
                          .writeToCharacteristic('{"cmd":"activeDevice", "name":"${deviceBlueResponse.id}", "token'
                              '":"${userState?.loginResponse?.token}", "homeid":""}');
                    });
                  } else {
                    // WIFI連線失敗
                    timer.value?.cancel();
                    showErrorDialog(
                      context,
                      canPop: false,
                      title: AppTexts.wifiConnectedError,
                      content: 'wifi連線失敗\n${AppTexts.plsReset}',
                      onTap: () {
                        goUserMain(context, ref);
                      },
                    );
                  }
                }
                break;
              case 'activeDevice':
                if (deviceBlueResponse.result == 0) {
                  ref.hideLoading();
                  timer.value?.cancel();
                  AutoRouter.of(context).replace(const AddDeviceRoute());
                } else {
                  if (countActive.value < 5) {
                    showToast(context: context, text: '第${countActive.value + 1}次裝置啟動中...');
                    countActive.value = countActive.value +1;
                    Future.delayed(Duration(seconds: 5), () {
                      bluetoothState.copyWith(receivedMessage: "");
                      bluetoothNotifier.writeToCharacteristic(
                          '{"cmd":"activeDevice", "name":"${deviceBlueResponse.id}", "token":"${userState?.loginResponse?.token}", "homeid":""}');
                    });
                  } else {
                    timer.value?.cancel();
                    showErrorDialog(context,
                        canPop: false, title: AppTexts.scanFailed, content: AppTexts.qrCodeCannotRead, onTap: () {
                      bluetoothNotifier.disconnectFromDevice();
                      goUserMain(context, ref);
                    }, barrierDismissible: false);
                  }
                }
                break;
              default:
                AppLog.w('Unknown cmd: ${deviceBlueResponse.cmd}');
                break;
            }
          } catch (e) {
            AppLog.e('Error parsing received message: $e');
          }
        }
      });
      return null;
    }, [bluetoothState.updateCounter]);

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
                title: AppTexts.enableSettingMode,
                onBackTap: () {
                  registerDeviceBack(context, ref);
                },
              ),
              Expanded(
                child: SingleChildScrollView(
                  child: Container(
                    height: MediaQuery.of(context).size.height -
                        MediaQuery.of(context).padding.top -
                        MediaQuery.of(context).padding.bottom -
                        AppBar().preferredSize.height -
                        9.6,
                    padding: EdgeInsets.all(24.sp),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                        customText(
                          AppTexts.enableSettingModeTitle,
                          fontWeight: FontWeight.w500,
                          fontSize: 18.sp,
                          overflow: null,
                        ),
                        SizedBox(
                          height: 8.sp,
                        ),
                        customText(
                          AppTexts.enableSettingModeMsg,
                          fontWeight: FontWeight.w400,
                          fontSize: 14.sp,
                          overflow: null,
                        ),
                        customText(
                          AppTexts.wifi24Ghz,
                          fontWeight: FontWeight.w400,
                          fontSize: 14.sp,
                          color: AppColors.primaryYellow,
                        ),
                        GestureDetector(
                          onTap: () async {
                            showBottomWifiListDialog(
                              context,
                              list: deviceBlueResponse.data!,
                              currentIndex: _wifiIndex.value,
                              onTap: (index) {
                                _wifiIndex.value = index;
                              },
                            );
                          },
                          child: Container(
                            margin: EdgeInsets.symmetric(vertical: 6.sp),
                            padding: EdgeInsets.all(16.sp),
                            width: double.infinity,
                            decoration: BoxDecoration(
                              color: AppColors.white,
                              borderRadius: BorderRadius.circular(8.sp),
                            ),
                            child: Row(
                              children: [
                                assetImage('ic_wifi.png', width: 24.sp, color: AppColors.primaryBlack),
                                SizedBox(
                                  width: 8.sp,
                                ),
                                Expanded(
                                  child: customText(
                                    deviceBlueResponse.data![_wifiIndex.value].ssid,
                                    fontWeight: FontWeight.w400,
                                    fontSize: 16.sp,
                                  ),
                                ),
                                assetImage('ic_arrow_right.png', width: 24.sp),
                              ],
                            ),
                          ),
                        ),
                        Container(
                          margin: EdgeInsets.symmetric(vertical: 6.sp),
                          padding: EdgeInsets.symmetric(horizontal: 12.sp, vertical: 8.sp),
                          decoration: BoxDecoration(
                            color: AppColors.white,
                            borderRadius: BorderRadius.circular(8.sp),
                          ),
                          child: Row(
                            children: [
                              assetImage('ic_wifi_password.png', width: 24.sp, color: AppColors.primaryBlack),
                              SizedBox(
                                width: 8.sp,
                              ),
                              Expanded(
                                child: TextFormField(
                                  cursorColor: AppColors.primaryYellow,
                                  controller: passwordEditingController,
                                  style: TextStyle(
                                    color: AppColors.primaryBlack,
                                    fontSize: 16.sp,
                                    fontFamily: 'PingFang TC',
                                    fontWeight: FontWeight.w400,
                                  ),
                                  obscureText: true,
                                  decoration: InputDecoration(
                                      contentPadding: EdgeInsets.fromLTRB(0.sp, 0.sp, 0.sp, 0.sp),
                                      filled: true,
                                      fillColor: AppColors.white,
                                      border: InputBorder.none,
                                      hintText: AppTexts.enterPassword,
                                      hintStyle: TextStyle(
                                          fontSize: 14.sp,
                                          fontFamily: 'PingFang TC',
                                          fontWeight: FontWeight.w400,
                                          color: AppColors.grey)),
                                ),
                              ),
                            ],
                          ),
                        ),
                        Spacer(),
                        ValueListenableBuilder<bool>(
                          valueListenable: isButtonEnabled,
                          builder: (context, value, child) {
                            return roundedButton(
                              radius: 12.sp,
                              text: AppTexts.next,
                              onTap: value
                                  ? () {
                                      ref.showLoading();
                                      var sendData =
                                          '{"cmd":"prov","ssid":"${deviceBlueResponse.data![_wifiIndex.value].ssid}","passwd":"${passwordEditingController.text}"}';
                                      bluetoothNotifier.writeToCharacteristic(sendData);

                                      // 啟動超時檢測
                                      startProvisioning();
                                    }
                                  : null,
                              bgColor: value ? AppColors.primaryYellow : AppColors.lightGrey,
                              fontColor: AppColors.white,
                              borderColor: value ? AppColors.primaryYellow : AppColors.lightGrey,
                            );
                          },
                        ),
                      ],
                    ),
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
