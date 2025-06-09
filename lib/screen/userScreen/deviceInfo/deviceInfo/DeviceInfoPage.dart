import 'dart:async';

import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:haohsing_flutter/define.dart';
import 'package:haohsing_flutter/net/ApiEndPoint.dart';
import 'package:haohsing_flutter/resources/AppResources.dart';
import 'package:haohsing_flutter/route/AppRouter.dart';
import 'package:haohsing_flutter/route/AppRouter.gr.dart';
import 'package:haohsing_flutter/screen/base/BasePage.dart';
import 'package:haohsing_flutter/utils/dialog/DialogManager.dart';
import 'package:haohsing_flutter/utils/manager/DeviceStatusManager.dart';
import 'package:haohsing_flutter/widgets/MainTitleBar.dart';
import 'package:haohsing_flutter/widgets/common/ButtonWidgets.dart';
import 'package:haohsing_flutter/widgets/item/ItemSubTitleWidget.dart';
import 'package:haohsing_flutter/widgets/item/ItemSwitchWidget.dart';
import 'package:haohsing_flutter/widgets/item/ItemTextWidget.dart';
import 'package:haohsing_flutter/widgets/item/ItemVerticalEditWidget.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:url_launcher/url_launcher.dart';
import 'package:auto_route/auto_route.dart';
import '../../../../provider/UserProvider.dart';
import 'BaseDeviceInfoNotifier.dart';
import 'DeviceInfoProvider.dart';
import 'package:haohsing_flutter/widgets/common/TextWidgets.dart';
import 'package:haohsing_flutter/widgets/common/ImageWidgets.dart';

import 'FakerDeviceInfoProvider.dart';

@RoutePage()
class DeviceInfoPage extends HookConsumerWidget {
  final int deviceId;

  const DeviceInfoPage({
    super.key,
    required this.deviceId,
  });

  @override
  Widget build(BuildContext context, WidgetRef ref) {

    final token = ref.read(userProvider).loginResponse?.token ?? "";

    final provider = (token == '@@@user@@@' || token == '@@@engineer@@@')
        ? fakerDeviceInfoProvider
        : deviceInfoProvider;

    final deviceInfoState = ref.watch(provider);
    final deviceInfoNotifier = ref.read(provider.notifier);
    final deviceStatus = useState<DeviceStatus>(DeviceStatus.connect);

    useEffect(() {
      WidgetsBinding.instance.addPostFrameCallback((_) {
        deviceInfoNotifier.updateDeviceId(deviceId: deviceId);
        deviceInfoNotifier.getDeviceInfo(deviceId);
      });
      return null;
    }, []);

    useEffect(() {
      if (deviceInfoState.deviceInfo != null) {
        deviceStatus.value = getDeviceStatus(
          online: deviceInfoState.deviceInfo!.online ?? 0,
          power: deviceInfoState.deviceInfo!.power ?? 0,
          error: deviceInfoState.deviceInfo!.error ?? 0,
        );
      }
      return null;
    }, [deviceInfoState.deviceInfo]);

    return BasePage(
      child: SafeArea(
        bottom: false,
        child: Container(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              if (deviceInfoState.deviceInfo != null) ...[
                MainTitleBar(title: deviceInfoState.deviceInfo?.name ?? "", isBack: true),
                Expanded(
                  child: SingleChildScrollView(
                    child: Container(
                      color: AppColors.white,
                      padding: EdgeInsets.only(top: 24.sp),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.center,
                        children: [
                          Padding(
                            padding: EdgeInsets.symmetric(horizontal: 18.sp),
                            child: Column(
                              children: [
                                netImage(
                                  width: 136.sp,
                                  height: 136.sp,
                                  deviceInfoState.deviceInfo?.modelImageUrl ?? "",
                                  fit: BoxFit.cover,
                                  defaultImage: 'device.png',
                                ),
                                SizedBox(
                                  height: 8.sp,
                                ),
                                customText(deviceInfoState.deviceInfo?.modelName ?? "",
                                    fontWeight: FontWeight.w500, fontSize: 14.sp, color: AppColors.black),
                                getDeviceInfoStatusWidget(
                                  deviceInfoState.deviceInfo?.type,
                                  deviceStatus.value,
                                  deviceInfoState.deviceInfo?.statistics?.h2e,
                                  deviceInfoState.deviceInfo?.statistics?.h2eN,
                                  () {
                                    AutoRouter.of(context).push(RepairAndMaintenanceRoute(
                                      deviceInfo: deviceInfoState.deviceInfo,
                                      isErrorCode: true,
                                    ));
                                  },
                                ),
                                Container(
                                  padding: EdgeInsets.symmetric(horizontal: 48.sp, vertical: 24.sp),
                                  width: double.infinity,
                                  child: IntrinsicHeight(
                                    child: Row(
                                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                      children: [
                                        Expanded(
                                          child: Column(
                                            children: [
                                              customText(AppTexts.waterLevel,
                                                  fontWeight: FontWeight.w400,
                                                  fontSize: 16.sp.sp,
                                                  color: AppColors.grey),
                                              customText(
                                                  (deviceStatus.value == DeviceStatus.notConnect ||
                                                          deviceStatus.value == DeviceStatus.shutDown ||
                                                          (deviceInfoState.deviceInfo?.statistics?.h12a
                                                                      ?.toString()
                                                                      .length ??
                                                                  0) >
                                                              1)
                                                      ? "--"
                                                      : deviceInfoState.deviceInfo?.statistics?.h12a?.toString() ??
                                                          "--",
                                                  fontWeight: FontWeight.w500,
                                                  fontSize: 24.sp.sp,
                                                  color: AppColors.black)
                                            ],
                                          ),
                                        ),
                                        Container(
                                          width: 1.sp,
                                          color: AppColors.grey,
                                        ),
                                        Expanded(
                                          child: Column(
                                            children: [
                                              customText(AppTexts.purifiedWater,
                                                  fontWeight: FontWeight.w400,
                                                  fontSize: 16.sp.sp,
                                                  color: AppColors.grey),
                                              SizedBox(
                                                height: 12.sp,
                                              ),
                                              customText(AppTexts.notSupport,
                                                  fontWeight: FontWeight.w500,
                                                  fontSize: 12.sp.sp,
                                                  color: AppColors.grey),
                                            ],
                                          ),
                                        ),
                                        Container(
                                          width: 1.sp,
                                          color: AppColors.grey,
                                        ),
                                        Expanded(
                                            child: Column(
                                          children: [
                                            customText(AppTexts.waterSource,
                                                fontWeight: FontWeight.w400, fontSize: 16.sp.sp, color: AppColors.grey),
                                            SizedBox(
                                              height: 12.sp,
                                            ),
                                            customText(AppTexts.notSupport,
                                                fontWeight: FontWeight.w500, fontSize: 12.sp.sp, color: AppColors.grey),
                                          ],
                                        )),
                                      ],
                                    ),
                                  ),
                                ),
                                Container(
                                  width: double.infinity,
                                  margin: EdgeInsets.only(bottom: 24.sp),
                                  decoration: BoxDecoration(
                                    color: AppColors.lightGrey2,
                                    borderRadius: BorderRadius.circular(8.sp),
                                  ),
                                  padding: EdgeInsets.symmetric(vertical: 12.sp, horizontal: 12.sp),
                                  child: Row(
                                    children: [
                                      Expanded(
                                          child: Row(
                                        children: [
                                          circleAssetsImage(
                                              filename: 'img_cold.png',
                                              width: 20.sp,
                                              height: 20.sp,
                                              bgColor: AppColors.white,
                                              insertPadding: EdgeInsets.all(12.sp)),
                                          SizedBox(
                                            width: 8.sp,
                                          ),
                                          customText(
                                            (deviceStatus.value == DeviceStatus.notConnect ||
                                                    deviceStatus.value == DeviceStatus.shutDown)
                                                ? "--"
                                                : deviceInfoState.deviceInfo?.statistics?.h0a.toString() ?? "--",
                                            fontWeight: FontWeight.w500,
                                            fontSize: 18.sp,
                                            color: AppColors.primaryBlack,
                                          ),
                                          SizedBox(
                                            width: 8.sp,
                                          ),
                                          customText(
                                            AppTexts.celsius,
                                            fontWeight: FontWeight.w500,
                                            fontSize: 14.sp,
                                            color: AppColors.disableGrey,
                                          )
                                        ],
                                      )),
                                      Expanded(
                                          child: Row(
                                        children: [
                                          circleAssetsImage(
                                              filename: 'img_hot.png',
                                              width: 20.sp,
                                              height: 20.sp,
                                              bgColor: AppColors.white,
                                              insertPadding: EdgeInsets.all(12.sp)),
                                          SizedBox(
                                            width: 8.sp,
                                          ),
                                          customText(
                                            (deviceStatus.value == DeviceStatus.notConnect ||
                                                    deviceStatus.value == DeviceStatus.shutDown)
                                                ? "--"
                                                : deviceInfoState.deviceInfo?.statistics?.h08.toString() ?? "--",
                                            fontWeight: FontWeight.w500,
                                            fontSize: 18.sp,
                                            color: AppColors.primaryBlack,
                                          ),
                                          SizedBox(
                                            width: 4.sp,
                                          ),
                                          customText(
                                            AppTexts.celsius,
                                            fontWeight: FontWeight.w500,
                                            fontSize: 14.sp,
                                            color: AppColors.disableGrey,
                                          )
                                        ],
                                      )),
                                      Expanded(
                                          child: Row(
                                        children: [
                                          circleAssetsImage(
                                              filename: 'img_warm.png',
                                              width: 20.sp,
                                              height: 20.sp,
                                              bgColor: AppColors.white,
                                              insertPadding: EdgeInsets.all(12.sp)),
                                          SizedBox(
                                            width: 8.sp,
                                          ),
                                          customText(
                                            (deviceStatus.value == DeviceStatus.notConnect ||
                                                    deviceStatus.value == DeviceStatus.shutDown)
                                                ? "--"
                                                : deviceInfoState.deviceInfo?.statistics?.h09.toString() ?? "--",
                                            fontWeight: FontWeight.w500,
                                            fontSize: 18.sp,
                                            color: AppColors.primaryBlack,
                                          ),
                                          SizedBox(
                                            width: 4.sp,
                                          ),
                                          customText(
                                            AppTexts.celsius,
                                            fontWeight: FontWeight.w500,
                                            fontSize: 14.sp,
                                            color: AppColors.disableGrey,
                                          )
                                        ],
                                      )),
                                    ],
                                  ),
                                ),
                              ],
                            ),
                          ),
                          IntrinsicHeight(
                            child: Container(
                              width: double.infinity,
                              padding: EdgeInsets.fromLTRB(16.sp, 0.sp, 16.sp, 24.sp),
                              decoration: BoxDecoration(
                                color: AppColors.bgColor,
                                borderRadius: BorderRadius.only(
                                  topLeft: Radius.circular(24.sp),
                                  topRight: Radius.circular(24.sp),
                                ),
                              ),
                              child: Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  // 設定
                                  if (deviceInfoState.deviceInfo?.mac != null) ...[
                                    ItemSubTitleWidget(title: AppTexts.settings),
                                    ItemSwitchWidget(
                                      title: AppTexts.power,
                                      value: deviceInfoState.deviceInfo?.statistics?.h00.toString(),
                                      isEnabled: deviceStatus.value != DeviceStatus.notConnect,
                                      onSwitch: (value) async {
                                        bool result = true;
                                        if (deviceInfoState.deviceInfo?.statistics?.h00 == 1) {
                                          await showDefaultDialog(
                                            context,
                                            iconColor: AppColors.errorRed,
                                            title: AppTexts.checkClosePowerTitle,
                                            content: AppTexts.checkClosePowerContent,
                                            firstButton: roundedButton(
                                              radius: 12.sp,
                                              text: AppTexts.cancel,
                                              onTap: () async {
                                                AutoRouter.of(context).popForced();
                                                deviceInfoNotifier.getDeviceInfo(deviceId);
                                              },
                                              bgColor: AppColors.white,
                                              fontColor: AppColors.primaryYellow,
                                              borderColor: AppColors.primaryYellow,
                                            ),
                                            secondButton: roundedButton(
                                              radius: 12.sp,
                                              text: AppTexts.confirm,
                                              onTap: () {
                                                deviceInfoNotifier.sendCmd('h00', value ? '1' : '0');
                                                AutoRouter.of(context).popForced();
                                              },
                                              bgColor: AppColors.errorRed,
                                              fontColor: AppColors.white,
                                            ),
                                          );
                                        } else {
                                          deviceInfoNotifier.sendCmd('h00', value ? '1' : '0');
                                        }
                                      },
                                    ),
                                    ItemSwitchWidget(
                                      title: AppTexts.hotWaterUnlock,
                                      value: deviceInfoState.deviceInfo?.statistics?.h03.toString(),
                                      isEnabled: deviceStatus.value != DeviceStatus.notConnect,
                                      onSwitch: (value) async {
                                        deviceInfoNotifier.sendCmd('h03', value ? '1' : '0');
                                      },
                                    ),
                                    if (deviceInfoState.deviceInfo?.type == 0) ...[
                                      ItemTextWidget(
                                          fieldName: AppTexts.advancedSettings,
                                          isEnabled: deviceStatus.value != DeviceStatus.notConnect,
                                          onTap: () {
                                            AutoRouter.of(context).push(AdvancedSettingsRoute(
                                              deviceInfo: deviceInfoState.deviceInfo!,
                                            ));
                                          })
                                    ],
                                  ],
                                  // 資訊
                                  ItemSubTitleWidget(title: AppTexts.information),
                                  ItemTextWidget(
                                    fieldName: AppTexts.name2,
                                    value: deviceInfoState.deviceInfo?.name ?? '',
                                    onTap: (deviceInfoState.deviceInfo?.type == 0)
                                        ? () {
                                            showBottomEditDialog(
                                              context,
                                              title: AppTexts.editName,
                                              hintText: AppTexts.plsEnterDeviceName,
                                              defaultText: deviceInfoState.deviceInfo?.name,
                                              buttonText: AppTexts.save,
                                              onTap: (text) {
                                                deviceInfoNotifier.changeDeviceName(deviceId, text);
                                              },
                                            );
                                          }
                                        : null,
                                  ),
                                  ItemTextWidget(
                                    fieldName: AppTexts.model,
                                    value: deviceInfoState.deviceInfo?.modelName ?? '',
                                    valueColor: AppColors.disableGrey,
                                  ),
                                  ItemVerticalEditWidget(
                                    fieldName: AppTexts.institutionAndAddress,
                                    value:
                                        "${deviceInfoState.deviceInfo?.vendorName}\n${deviceInfoState.deviceInfo?.vendorAddress}",
                                    valueColor: AppColors.disableGrey,
                                  ),
                                  ItemVerticalEditWidget(
                                      fieldName: AppTexts.placeAndArea,
                                      value:
                                          "${deviceInfoState.deviceInfo?.placeName ?? "未選擇單位"} | ${deviceInfoState.deviceInfo?.areaName ?? "未選擇區域"}",
                                      valueColor: AppColors.disableGrey,
                                      onTap: (deviceInfoState.deviceInfo?.type == 0)
                                          ? () {
                                              AutoRouter.of(context).push(PlaceAndAreaRoute(
                                                placeId: deviceInfoState.deviceInfo?.placeId ?? 0,
                                                areaId: deviceInfoState.deviceInfo?.areaId ?? 0,
                                                placeName: deviceInfoState.deviceInfo?.placeName ?? "",
                                                areaName: deviceInfoState.deviceInfo?.areaName ?? "",
                                                deviceId: deviceInfoState.deviceInfo?.deviceId ?? -1,
                                              ));
                                            }
                                          : null),
                                  if (deviceInfoState.deviceInfo?.type == 0) ...[
                                    ItemTextWidget(
                                        fieldName: AppTexts.deviceShare,
                                        onTap: () {
                                          if (deviceInfoState.deviceInfo?.placeId != null) {
                                            AutoRouter.of(context).push(DeviceShareRoute(
                                              placeId: deviceInfoState.deviceInfo!.placeId!,
                                            ));
                                          } else {
                                            showErrorDialog(
                                              context,
                                              title: "未設定單位/區域",
                                            );
                                          }
                                        })
                                  ],
                                  ItemTextWidget(
                                      fieldName: AppTexts.vendorInformation,
                                      onTap: () {
                                        AutoRouter.of(context).push(VendorInfoRoute(
                                            vendorName: deviceInfoState.deviceInfo?.vendorName,
                                            vendorPhone: deviceInfoState.deviceInfo?.vendorTel));
                                      }),
                                  if (deviceInfoState.deviceInfo?.type == 0) ...[
                                    ItemTextWidget(
                                        fieldName: AppTexts.repairAndMaintenance,
                                        onTap: () {
                                          AutoRouter.of(context).push(RepairAndMaintenanceRoute(
                                            deviceInfo: deviceInfoState.deviceInfo,
                                          ));
                                        })
                                  ],
                                  if (deviceInfoState.deviceInfo?.type == 0 &&
                                      deviceInfoState.deviceInfo?.mac != null) ...[
                                    ItemTextWidget(
                                      fieldName: AppTexts.resetFactorySettings,
                                      isEnabled: deviceStatus.value != DeviceStatus.notConnect,
                                      onTap: () {
                                        showDefaultDialog(
                                          context,
                                          iconColor: AppColors.errorRed,
                                          title: AppTexts.checkResetFactoryTitle,
                                          content: AppTexts.checkResetFactoryContent,
                                          firstButton: roundedButton(
                                              radius: 12.sp,
                                              text: AppTexts.cancel,
                                              onTap: () {
                                                AutoRouter.of(context).popForced();
                                              },
                                              bgColor: AppColors.white,
                                              fontColor: AppColors.primaryYellow,
                                              borderColor: AppColors.primaryYellow),
                                          secondButton: roundedButton(
                                              radius: 12.sp,
                                              text: AppTexts.confirm,
                                              onTap: () {
                                                AutoRouter.of(context).popForced();
                                                deviceInfoNotifier.sendCmd("h00a", "1");
                                              },
                                              bgColor: AppColors.errorRed,
                                              fontColor: AppColors.white,
                                              borderColor: AppColors.errorRed),
                                        );
                                      },
                                    ),
                                  ],
                                  if (deviceInfoState.deviceInfo?.type == 0) ...[
                                    ItemTextWidget(
                                      fieldName: AppTexts.warrantyInformation,
                                      onTap: () async {
                                        AutoRouter.of(context).push(WarrantyInformationRoute(
                                          deviceInfo: deviceInfoState.deviceInfo!,
                                        ));
                                      },
                                    ),
                                  ],
                                  ItemTextWidget(
                                    fieldName: AppTexts.userManual,
                                    onTap: () async {
                                      Uri url = Uri.parse("${ApiEndPoint.serverUrl}/image/20230602013828002354.pdf");
                                      await launchUrl(url, mode: LaunchMode.externalApplication);
                                    },
                                  ),
                                  SizedBox(
                                    height: 24.sp,
                                  ),
                                  roundedButton(
                                      radius: 12.sp,
                                      text: AppTexts.deleteWaterDispenser,
                                      onTap: () {
                                        showDefaultDialog(
                                          context,
                                          iconColor: AppColors.errorRed,
                                          title: AppTexts.deleteDeviceTitle,
                                          content: (deviceInfoState.deviceInfo?.type == 0)
                                              ? AppTexts.deleteDeviceContent
                                              : AppTexts.deleteSharedDeviceContent,
                                          firstButton: roundedButton(
                                              radius: 12.sp,
                                              text: AppTexts.cancel,
                                              onTap: () {
                                                AutoRouter.of(context).popForced();
                                              },
                                              bgColor: AppColors.white,
                                              fontColor: AppColors.primaryYellow,
                                              borderColor: AppColors.primaryYellow),
                                          secondButton: roundedButton(
                                              radius: 12.sp,
                                              text: AppTexts.delete,
                                              onTap: () {
                                                deviceInfoNotifier.deleteDevice(deviceId).then((_) {
                                                  goUserMain(context, ref);
                                                });
                                              },
                                              bgColor: AppColors.errorRed,
                                              fontColor: AppColors.white,
                                              borderColor: AppColors.errorRed),
                                        );
                                      },
                                      bgColor: AppColors.transparent,
                                      fontColor: AppColors.errorRed,
                                      borderColor: AppColors.errorRed),
                                ],
                              ),
                            ),
                          )
                        ],
                      ),
                    ),
                  ),
                )
              ]
            ],
          ),
        ),
      ),
    );
  }
}
