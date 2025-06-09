
import 'dart:ui';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:haohsing_flutter/define.dart';
import 'package:haohsing_flutter/model/request/device/setDeviceShare/SetDeviceShareRequestBody.dart';
import 'package:haohsing_flutter/model/response/device/getMemberDevices/GetMemberDevicesResponse.dart';
import 'package:haohsing_flutter/resources/AppResources.dart';
import 'package:haohsing_flutter/utils/manager/DeviceStatusManager.dart';
import 'package:haohsing_flutter/widgets/common/TextWidgets.dart';
import 'package:haohsing_flutter/widgets/common/ImageWidgets.dart';

class PermissionShareItem extends HookWidget {
  final int areaId;
  final int userId;
  final String areaName;
  final MapEntry<int?, List<GetMemberDevicesResponse>> entry;
  final ValueNotifier<List<SetDeviceShareRequestBody>> selectDevice;

  const PermissionShareItem({
    super.key,
    required this.areaId,
    required this.userId,
    required this.areaName,
    required this.entry,
    required this.selectDevice,
  });

  @override
  Widget build(BuildContext context) {
    final screenWidth = MediaQuery.of(context).size.width;

    final filteredDeviceStatusDataList = useState<List<GetMemberDevicesResponse>>([]);

    useEffect(() {
      filteredDeviceStatusDataList.value = entry.value.where((device) => device.areaId == areaId).toList();
      return null;
    }, [entry.value]);

    return Container(
      child: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Padding(
              padding: EdgeInsets.symmetric(vertical: 16.sp),
              child: customText(entry.value.first.areaName ?? '未設定區域',
                  fontSize: 18.sp, fontWeight: FontWeight.w500, color: AppColors.black),
            ),
            IntrinsicHeight(
              child: Wrap(
                spacing: 8.sp,
                runSpacing: 8.sp,
                children: entry.value.map((device) {
                  final isSelected = selectDevice.value.any((_device) => _device.deviceId == device.deviceId &&
                      _device.share);
                  return GestureDetector(
                    onTap: () {
                      if (isSelected) {
                        selectDevice.value = selectDevice.value.map((_device) {
                          if (_device.deviceId == device.deviceId) {
                            return _device.copyWith(share: false); // 更新 share 為 false
                          }
                          return _device;
                        }).toList();
                      } else {
                        selectDevice.value = [
                          ...selectDevice.value.where((_device) => _device.deviceId != device.deviceId),
                          SetDeviceShareRequestBody(deviceId: device.deviceId, share: true, userId: userId),
                        ];
                      }
                    },
                    child: Stack(
                      children: [
                        Container(
                          padding: EdgeInsets.fromLTRB(4.sp, 4.sp, 4.sp, 4.sp),
                          width: (screenWidth - 52.sp) / 3,
                          height: (screenWidth - 52.sp) / 3,
                          decoration: BoxDecoration(
                            color: AppColors.white,
                            borderRadius: BorderRadius.circular(8.sp),
                          ),
                          child: Column(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              netImage(device.modelImageUrl, width: 48.sp, height: 48.sp, defaultImage: 'device.png'),
                              SizedBox(height: 8.sp),
                              customText(device.name,
                                  fontWeight: FontWeight.w600, color: AppColors.black)
                            ],
                          ),
                        ),
                        Container(
                          width: (screenWidth - 52.sp) / 3,
                          height: (screenWidth - 52.sp) / 3,
                          alignment: Alignment.topRight,
                          padding: EdgeInsets.fromLTRB(0.sp, 4.sp, 4.sp, 0.sp),
                          child: getHomeDeviceStatusWidget(getDeviceStatus(
                            online: device.online,
                            power: device.power,
                            error: device.error,
                          )),
                        ),
                        isSelected
                            ? Container(
                          width: 24.sp,
                          height: 24.sp,
                          alignment: Alignment.topLeft,
                          margin: EdgeInsets.fromLTRB(4.sp, 4.sp, 0.sp, 0.sp),
                          child: assetImage('ic_check.png'),
                        )
                            :
                        Container(
                          width: 24.sp,
                          height: 24.sp,
                          alignment: Alignment.topLeft,
                          margin: EdgeInsets.fromLTRB(4.sp, 4.sp, 0.sp, 0.sp),
                          decoration: BoxDecoration(
                            color: AppColors.white,
                            shape: BoxShape.circle,
                            border: Border.all(
                              color: AppColors.black,
                              width: 2.sp,
                            ),
                          ),
                        ),
                      ],
                    ),
                  );
                }).toList(),
              ),
            ),
            SizedBox(
              height: 24.sp,
            ),
            Divider(
              color: AppColors.borderGrey,
              height: 1.sp,
            )
          ],
        ),
      ),
    );
  }
}
