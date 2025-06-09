import 'package:collection/collection.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:haohsing_flutter/define.dart';
import 'package:haohsing_flutter/model/request/device/setDeviceShare/SetDeviceShareRequestBody.dart';
import 'package:haohsing_flutter/model/response/device/getMemberDevices/GetMemberDevicesResponse.dart';
import 'package:haohsing_flutter/resources/AppResources.dart';
import 'package:haohsing_flutter/screen/base/BasePage.dart';
import 'package:haohsing_flutter/utils/dialog/DialogManager.dart';
import 'package:haohsing_flutter/widgets/MainTitleBar.dart';
import 'package:haohsing_flutter/widgets/common/ButtonWidgets.dart';
import 'package:haohsing_flutter/widgets/home/PermissionShareItem.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:auto_route/auto_route.dart';
import 'package:haohsing_flutter/widgets/common/TextWidgets.dart';
import '../../../../provider/UserProvider.dart';
import 'BasePermissionShareNotifier.dart';
import 'FakerPermissionShareProvider.dart';
import 'PermissionShareProvider.dart';
import 'package:haohsing_flutter/utils/ToastHelper.dart';
import 'package:haohsing_flutter/widgets/common/ImageWidgets.dart';

@RoutePage()
class PermissionSharePage extends HookConsumerWidget {
  const PermissionSharePage({
    super.key,
    required this.placeId,
    required this.userId,
  });

  final int placeId;
  final int userId;

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final screenWidth = MediaQuery.of(context).size.width;

    final token = ref.read(userProvider).loginResponse?.token ?? "";
    final provider = (token == '@@@user@@@' || token == '@@@engineer@@@')
        ? fakerPermissionShareProvider
        : permissionShareProvider;

    final permissionShareNotifier = ref.read(provider.notifier);
    final permissionShareState = ref.watch(provider);

    final selectDevice = useState<List<SetDeviceShareRequestBody>>([]);
    final deviceStatusDataList = useState<Map<int?, List<GetMemberDevicesResponse>>>({});

    useEffect(() {
      Future.microtask(() async {
        await permissionShareNotifier.getMemberDevices(placeId: placeId);
        await permissionShareNotifier.getMemberDevicesPermissions(placeId: placeId, userId: userId);
      });
      return null;
    }, []);

    ref.listen<PermissionShareState>(permissionShareProvider, (previous, next) {
      // 處理選擇的裝置
      selectDevice.value = next.memberDevicesPermissions
          .where((device) => device.type == 1)
          .map((device) => SetDeviceShareRequestBody(
        deviceId: device.deviceId,
        share: true,
        userId: userId,
      ))
          .toList();

      // 群組裝置狀態資料
      deviceStatusDataList.value = groupBy<GetMemberDevicesResponse, int?>(
        next.memberDevices,
            (device) => device.areaId,
      );
    });

    return BasePage(
      child: SafeArea(
        child: Container(
          height: double.infinity,
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              MainTitleBar(title: AppTexts.permissionShare, isBack: true),
              Expanded(
                child: Container(
                  padding: EdgeInsets.fromLTRB(18.sp, 24.sp, 18.sp, 12.sp),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      customText(AppTexts.shareDevice, fontWeight: FontWeight.w500, fontSize: 18.sp),
                      customText(AppTexts.shareDeviceMsg,
                          fontWeight: FontWeight.w400, fontSize: 16.sp, color: AppColors.darkGrey, overflow: null),
                      if (permissionShareState.memberDevices.isEmpty)
                        Expanded(
                          child: Column(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              assetImage('img_empty.png', width: screenWidth * 0.65, height: screenWidth * 0.65 *0.8),
                              customText(AppTexts.noPlaceYet,
                                  fontWeight: FontWeight.w500, color: AppColors.lightGrey, fontSize: 16.sp),
                            ],
                          ),
                        )
                      else ...[
                        Expanded(
                            child: Stack(
                          children: [
                            Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: deviceStatusDataList.value.entries.map((entry) {
                                return PermissionShareItem(
                                  areaId: entry.value.first.areaId ?? -1,
                                  areaName: entry.value.first.areaName ?? '無區域名稱',
                                  entry: entry,
                                  selectDevice: selectDevice,
                                  userId: userId,
                                );
                              }).toList(),
                            ),
                            Align(
                              alignment: Alignment.bottomCenter,
                              child: Container(
                                height: 48.sp,
                                child: Row(
                                  children: [
                                    Expanded(
                                        flex: 3,
                                        child: roundedButton(
                                          radius: 12.sp,
                                          text: AppTexts.cancel,
                                          onTap: () {
                                            AutoRouter.of(context).popForced();
                                          },
                                          bgColor: AppColors.grey,
                                          fontColor: AppColors.white,
                                        )),
                                    SizedBox(
                                      width: 8.sp,
                                    ),
                                    Expanded(
                                        flex: 7,
                                        child: roundedButton(
                                          radius: 12.sp,
                                          text: AppTexts.save,
                                          onTap: () {
                                            showDefaultDialog(
                                              context,
                                              title: AppTexts.saveCheckMsg,
                                              firstButton: roundedButton(
                                                  radius: 12.sp,
                                                  text: AppTexts.no,
                                                  onTap: () {
                                                    AutoRouter.of(context).popForced();
                                                  },
                                                  bgColor: AppColors.white,
                                                  fontColor: AppColors.primaryYellow ,
                                                  borderColor: AppColors.primaryYellow),
                                              secondButton: roundedButton(
                                                  radius: 12.sp,
                                                  text: AppTexts.yes,
                                                  onTap: () {
                                                    AutoRouter.of(context).popForced();
                                                    permissionShareNotifier
                                                        .setDeviceShare(selectDevice.value)
                                                        .then((isSuccess) {
                                                      if (isSuccess) {
                                                        showToast(context: context, text: "儲存成功");
                                                        AutoRouter.of(context).popForced();
                                                      }
                                                    });
                                                  },
                                                  bgColor: AppColors.primaryYellow,
                                                  fontColor: AppColors.white,
                                                  borderColor: AppColors.primaryYellow),
                                            );
                                          },
                                          bgColor: AppColors.primaryYellow,
                                          fontColor: AppColors.white,
                                        )),
                                  ],
                                ),
                              ),
                            )
                          ],
                        )),
                      ]
                    ],
                  ),
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
