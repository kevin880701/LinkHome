import 'package:auto_route/auto_route.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:haohsing_flutter/define.dart';
import 'package:haohsing_flutter/model/response/device/homeDeviceInfo/HomeDeviceInfoResponse.dart';
import 'package:haohsing_flutter/resources/AppResources.dart';
import 'package:haohsing_flutter/route/AppRouter.gr.dart';
import 'package:haohsing_flutter/utils/manager/DeviceStatusManager.dart';
import 'package:haohsing_flutter/widgets/common/TextWidgets.dart';
import 'package:haohsing_flutter/widgets/common/ImageWidgets.dart';

class HomeDeviceListWidget extends HookWidget {
  final List<HomeDeviceInfoResponse> list;
  final VoidCallback onTap;

  const HomeDeviceListWidget({
    super.key,
    required this.list,
    required this.onTap,
  });

  @override
  Widget build(BuildContext context) {
    final screenWidth = MediaQuery.of(context).size.width;

    return GridView.builder(
      gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
        crossAxisCount: 3,
        crossAxisSpacing: 8.sp,
        mainAxisSpacing: 8.sp,
      ),
      itemCount: list.length,
      itemBuilder: (context, deviceIndex) {
        return GestureDetector(
          onTap: () {
            AutoRouter.of(context).push(DeviceInfoRoute(
              deviceId: list[deviceIndex].deviceId,
            ));
          },
          child: Stack(
            children: [
              Container(
                padding: EdgeInsets.fromLTRB(4.sp, 4.sp, 4.sp, 4.sp),
                width: (screenWidth - 16.sp) / 3,
                height: (screenWidth - 16.sp) / 3,
                decoration: BoxDecoration(
                  color: (list[deviceIndex].online == 0) ? AppColors.lightGrey : AppColors.white,
                  borderRadius: BorderRadius.circular(8.sp),
                ),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    netImage(list[deviceIndex].modelImageUrl,
                        width: 48.sp,
                        height: 48.sp,
                        defaultImage: 'device.png',),
                    SizedBox(height: 8.sp),
                    customText(list[deviceIndex].name, fontWeight: FontWeight.w600)
                  ],
                ),
              ),
              if (list[deviceIndex].online != null ||
                  list[deviceIndex].power != null ||
                  list[deviceIndex].error != null) ...[
                Align(
                  alignment: Alignment.topRight,
                  child: Container(
                    margin: EdgeInsets.fromLTRB(0.sp, 4.sp, 4.sp, 0.sp),
                    child: getHomeDeviceStatusWidget(getDeviceStatus(
                      online: list[deviceIndex].online,
                      power: list[deviceIndex].power!,
                      error: list[deviceIndex].error!,
                    )),
                  ),
                )
              ]
            ],
          ),
        );
      },
    );
  }
}
