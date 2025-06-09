import 'dart:ui';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:haohsing_flutter/define.dart';
import 'package:haohsing_flutter/provider/UpdateStateProvider.dart';
import 'package:haohsing_flutter/provider/UserProvider.dart';
import 'package:haohsing_flutter/resources/AppColors.dart';
import 'package:haohsing_flutter/resources/AppResources.dart';
import 'package:haohsing_flutter/route/AppRouter.gr.dart';
import 'package:haohsing_flutter/screen/base/BasePage.dart';
import 'package:haohsing_flutter/utils/AppLog.dart';
import 'package:haohsing_flutter/widgets/home/AreaListWidget.dart';
import 'package:haohsing_flutter/widgets/home/HomeDeviceList.dart';
import 'package:haohsing_flutter/widgets/home/PlaceListWidget.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:auto_route/auto_route.dart';
import 'package:haohsing_flutter/widgets/common/TextWidgets.dart';
import 'HomeProvider.dart';
import 'package:haohsing_flutter/widgets/common/ImageWidgets.dart';

@RoutePage()
class HomePage extends HookConsumerWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final screenWidth = MediaQuery.of(context).size.width;
    final userState = ref.watch(userProvider);
    final homeState = ref.watch(homeProvider);
    final homeNotifier = ref.read(homeProvider.notifier);

    void updatePlaceIndex() {
      if (homeState.placeList.isNotEmpty &&
          homeState.areaList.isNotEmpty &&
          homeState.placeIndex >= 0 &&
          homeState.areaIndex >= 0) {
        homeNotifier.getDeviceList(
          placeId: homeState.placeList[ref.read(homeProvider).placeIndex].placeId,
          areaId: homeState.areaList[ref.read(homeProvider).areaIndex].areaId,
        );
      }
    }

    useEffect(() {
      Future.microtask(() async {
        await homeNotifier.getPlaceList().then((placeList) {
          homeNotifier.updatePlaceIndex(newPlaceIndex: 0);
          return placeList;
        });
      });
      return null;
    }, []);

    useEffect(() {
      Future.microtask(() async {
        if (homeState.placeList.isNotEmpty) {
          await homeNotifier.getAreaList(homeState.placeList[homeState.placeIndex].placeId).then((areaList) async {

            homeNotifier.updateAreaIndex(newAreaIndex: 0);
            updatePlaceIndex();
            return areaList;
          });
        }
      });
      return null;
    }, [homeState.placeIndex]);

    useEffect(() {
      WidgetsBinding.instance.addPostFrameCallback((_) {
        updatePlaceIndex();
      });
      return null;
    }, [homeState.areaIndex]);

    useEffect(() {
      Future.microtask(() async {
        if (homeState.placeList.isNotEmpty &&
            homeState.areaIndex >= 0 &&
            homeState.placeIndex >= 0 &&
            homeState.areaList.isNotEmpty) {
          await homeNotifier.getDeviceList(
            placeId: homeState.placeList[homeState.placeIndex].placeId,
            areaId: homeState.areaList[homeState.areaIndex].areaId,
          );
        } else {
          AppLog.e(
              'placeList 或 areaLis為空或index錯誤，placeList：${homeState.placeList.length};areaList：${homeState.areaList.length};areaIndex：${homeState.areaIndex};placeIndex：${homeState.placeIndex};');
        }
      });
      return null;
    }, [homeState.areaIndex, homeState.placeIndex]);

    // 下拉刷新功能
    Future<void> _refresh() async {
      await ref.read(updateStateProvider.notifier).placeUpdated();
      await ref.read(updateStateProvider.notifier).deviceUpdated();
    }

    return BasePage(
      onWillPop: () async {
        return false;
      },
      backgroundColor: AppColors.black,
      child: SafeArea(
        bottom: false,
        child: RefreshIndicator(
          onRefresh: _refresh,
          child: Container(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Container(
                  padding: EdgeInsets.all(16.sp),
                  child: Row(
                    children: [
                      Container(
                        width: 64.sp,
                        height: 64.sp,
                        decoration: BoxDecoration(
                          shape: BoxShape.circle,
                          border: Border.all(
                            color: AppColors.primaryYellow,
                            width: 2.sp,
                          ),
                        ),
                        child: ClipOval(
                          child: netImage(
                            userState?.userResponse?.headshot ?? "",
                            fit: BoxFit.cover,
                            width: 64.sp,
                            height: 64.sp,
                            defaultImage: 'default_avatar.png',
                          ),
                        ),
                      ),
                      SizedBox(width: 10.sp),
                      Expanded(
                        child: customText('Hello, ${userState?.userResponse?.name ?? AppTexts.user}',
                            fontWeight: FontWeight.w600, color: AppColors.white, fontSize: 20.sp),
                      ),
                      GestureDetector(
                        onTap: () {
                          AutoRouter.of(context).push(const SearchDeviceRoute());
                        },
                        child: assetImage('ic_add.png', width: 24.sp, color: AppColors.white),
                      )
                    ],
                  ),
                ),
                SizedBox(
                  height: 24.sp,
                ),
                Container(
                  padding: EdgeInsets.fromLTRB(24.sp, 0, 12.sp, 0),
                  height: 36.h,
                  child: Stack(
                    children: [
                      Container(
                        width: double.infinity,
                        child: ShaderMask(
                          shaderCallback: (bounds) => LinearGradient(
                            colors: [
                              Colors.white,
                              Colors.black.withOpacity(0.5),
                            ],
                            stops: [0.7, 1.0],
                            begin: Alignment.centerLeft,
                            end: Alignment.centerRight,
                          ).createShader(bounds),
                          child:
                              PlaceListWidget(placeList: homeState.placeList, currentPlaceIndex: homeState.placeIndex),
                        ),
                      ),
                      Align(
                        alignment: Alignment.topRight,
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.end,
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Container(
                              height: double.infinity,
                              alignment: Alignment.topCenter,
                              child: GestureDetector(
                                onTap: () {
                                  AutoRouter.of(context).push(const PlaceManagerRoute());
                                },
                                child: Container(
                                  width: 24.sp,
                                  height: 24.sp,
                                  child: assetImage('ic_more.png', width: 24.sp, color: AppColors.white),
                                ),
                              ),
                            ),
                          ],
                        ),
                      )
                    ],
                  ),
                ),
                SizedBox(height: 16.sp),
                Expanded(
                  child: Container(
                    padding: EdgeInsets.fromLTRB(16.sp, 24.sp, 16.sp, 24.sp),
                    decoration: BoxDecoration(
                      color: AppColors.bgColor,
                      borderRadius: BorderRadius.only(
                        topLeft: Radius.circular(24.sp),
                        topRight: Radius.circular(24.sp),
                      ),
                    ),
                    child: Column(
                      children: [
                        Container(
                          height: 32.sp,
                          width: double.infinity,
                          child: AreaListWidget(areaList: homeState.areaList, currentAreaIndex: homeState.areaIndex),
                        ),
                        SizedBox(height: 16.sp),
                        Expanded(
                          child: (homeState.deviceList.isNotEmpty)
                              ? HomeDeviceListWidget(list: homeState.deviceList, onTap: () {})
                              : SingleChildScrollView(
                                  physics: const AlwaysScrollableScrollPhysics(),
                                  child: Column(
                                    mainAxisAlignment: MainAxisAlignment.center,
                                    children: [
                                      SizedBox(height: 48.sp,),
                                      assetImage('img_empty.png', width: screenWidth * 0.65, height: screenWidth * 0.65 *0.8),
                                      customText(AppTexts.noWaterDispenserYet,
                                          fontWeight: FontWeight.w500, fontSize: 16.sp, color: AppColors.lightGrey),
                                    ],
                                  ),
                                ),
                        ),
                      ],
                    ),
                  ),
                )
              ],
            ),
          ),
        ),
      ),
    );
  }
}
