import 'package:flutter/material.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:haohsing_flutter/data/Params.dart';
import 'package:haohsing_flutter/model/response/device/deviceInfo/DeviceInfoResponse.dart';
import 'package:haohsing_flutter/screen/base/BasePage.dart';
import 'package:haohsing_flutter/screen/userScreen/deviceInfo/advancedSettings/AdvancedSettingsProvider.dart';
import 'package:haohsing_flutter/utils/Validators.dart';
import 'package:haohsing_flutter/utils/dialog/DialogManager.dart';
import 'package:haohsing_flutter/utils/manager/DeviceStatusManager.dart';
import 'package:haohsing_flutter/widgets/MainTitleBar.dart';
import 'package:haohsing_flutter/define.dart';
import 'package:haohsing_flutter/resources/AppResources.dart';
import 'package:haohsing_flutter/widgets/item/ItemSubTitleWidget.dart';
import 'package:haohsing_flutter/widgets/item/ItemSwitchWidget.dart';
import 'package:haohsing_flutter/widgets/item/ItemTextWidget.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:auto_route/auto_route.dart';

@RoutePage()
class AdvancedSettingsPage extends HookConsumerWidget {
  final DeviceInfoResponse? deviceInfo;

  const AdvancedSettingsPage({
    super.key,
    required this.deviceInfo,
  });

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final advancedSettingsState = ref.watch(advancedSettingsProvider);
    final advancedSettingsNotifier = ref.read(advancedSettingsProvider.notifier);
    final deviceStatus = useState<DeviceStatus>(DeviceStatus.connect);

    useEffect(() {
      WidgetsBinding.instance.addPostFrameCallback((_) {
        advancedSettingsNotifier.updateDeviceId(deviceId: deviceInfo?.deviceId ?? -1);
        advancedSettingsNotifier.updateDeviceInfo(deviceInfo: deviceInfo);
        advancedSettingsNotifier.getIceTemperatureList();
        advancedSettingsNotifier.getHotTemperatureList();
      });
      return null;
    }, []);

    useEffect(() {
      if (deviceInfo != null) {
        deviceStatus.value = getDeviceStatus(
          online: advancedSettingsState.deviceInfo?.online ?? 0,
          power: advancedSettingsState.deviceInfo?.power ?? 0,
          error: advancedSettingsState.deviceInfo?.error ?? 0,
        );
      }
      return null;
    }, [advancedSettingsState.deviceInfo]);

    return BasePage(
      child: SafeArea(
        child: Container(
          child: Column(
            children: [
              MainTitleBar(title: AppTexts.advancedSettings, isBack: true),
              Expanded(
                child: SingleChildScrollView(
                  child: Container(
                    padding: EdgeInsets.all(20.sp),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        ItemSubTitleWidget(title: AppTexts.advancedSettings),
                        ItemSwitchWidget(
                          title: AppTexts.reheatFunction,
                          value: advancedSettingsState.deviceInfo?.statistics?.h01.toString(),
                          isEnabled: deviceStatus.value != DeviceStatus.notConnect,
                          onSwitch: (value) async {
                            advancedSettingsNotifier.changeDeviceSetting(
                                action: DeviceAction.reheat, deviceId: deviceInfo!.deviceId, value: value ? '1' : '0');
                          },
                        ),
                        ItemSwitchWidget(
                          title: AppTexts.eco,
                          value: advancedSettingsState.deviceInfo?.statistics?.h25A.toString(),
                          isEnabled: deviceStatus.value != DeviceStatus.notConnect,
                          onSwitch: (value) async {
                            advancedSettingsNotifier.changeDeviceSetting(
                                action: DeviceAction.changeEco,
                                deviceId: deviceInfo!.deviceId,
                                value: value ? '1' : '0');
                          },
                        ),
                        ItemTextWidget(
                          fieldName: AppTexts.hotWaterInsulationTemperature,
                          value: (advancedSettingsState.deviceInfo?.statistics?.h05 != null)
                              ? advancedSettingsState.deviceInfo!.statistics!.h05.toString().tryInt()
                              ? '${advancedSettingsState.deviceInfo!.statistics!.h05}${AppTexts.celsius}'
                              : advancedSettingsState.deviceInfo!.statistics!.h05.toString()
                              : AppTexts.plsChoose,
                          valueColor: AppColors.grey,
                          isEnabled: deviceStatus.value != DeviceStatus.notConnect,
                          onTap: () {
                            showBottomListDialog(
                              context,
                              title: AppTexts.temperature,
                              list: advancedSettingsState.hotTemperatureList,
                              defaultText: (advancedSettingsState.deviceInfo?.statistics?.h05 != null)
                                  ? advancedSettingsState.deviceInfo!.statistics!.h05!.toString()
                                  : advancedSettingsState.hotTemperatureList[0],
                              onFinishTap: (index) {
                                advancedSettingsNotifier.changeDeviceSetting(
                                    action: DeviceAction.changeHotWaterTemperature,
                                    deviceId: deviceInfo!.deviceId,
                                    value: index.toString());
                                AutoRouter.of(context).popForced();
                              },
                            );
                          },
                        ),
                        ItemTextWidget(
                          fieldName: AppTexts.iceWaterInsulationTemperature,
                            value: (advancedSettingsState.deviceInfo?.statistics?.h07 != null)
                                ? (advancedSettingsState.deviceInfo!.statistics!.h07.toString().tryInt())
                                ? '${advancedSettingsState.deviceInfo!.statistics!.h07}${AppTexts.celsius}'
                                : '${advancedSettingsState.deviceInfo!.statistics!.h07}'
                                : AppTexts.plsChoose,
                          valueColor: AppColors.grey,
                          isEnabled: deviceStatus.value != DeviceStatus.notConnect,
                          onTap: () {
                            showBottomListDialog(
                              context,
                              title: AppTexts.temperature,
                              list: advancedSettingsState.iceTemperatureList,
                              defaultText: (advancedSettingsState.deviceInfo?.statistics?.h07 != null)
                                  ? advancedSettingsState.deviceInfo!.statistics!.h07!.toString()
                                  : advancedSettingsState.iceTemperatureList[0],
                              onFinishTap: (index) {
                                advancedSettingsNotifier.changeDeviceSetting(
                                    action: DeviceAction.changeIceWaterTemperature,
                                    deviceId: deviceInfo!.deviceId,
                                    value: index.toString());
                                AutoRouter.of(context).popForced();
                              },
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
