import 'package:flutter/material.dart';
import 'package:flutter/scheduler.dart';
import 'package:flutter/services.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:haohsing_flutter/define.dart';
import 'package:haohsing_flutter/resources/AppResources.dart';
import 'package:haohsing_flutter/screen/base/BasePage.dart';
import 'package:haohsing_flutter/utils/ToastHelper.dart';
import 'package:haohsing_flutter/utils/dialog/DialogManager.dart';
import 'package:haohsing_flutter/widgets/MainTitleBar.dart';
import 'package:haohsing_flutter/widgets/item/ItemTextWidget.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:auto_route/auto_route.dart';
import 'PlaceAndAreaProvider.dart';
import 'package:haohsing_flutter/widgets/common/TextWidgets.dart';

@RoutePage()
class PlaceAndAreaPage extends HookConsumerWidget {
  final int? placeId;
  final int? areaId;
  final String placeName;
  final String areaName;
  final int deviceId;

  const PlaceAndAreaPage({
    super.key,
    required this.placeId,
    required this.areaId,
    required this.placeName,
    required this.areaName,
    required this.deviceId,
  });

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final placeAndAreaNotifier = ref.read(placeAndAreaProvider.notifier);
    final placeAndAreaState = ref.watch(placeAndAreaProvider);

    useEffect(() {
      SchedulerBinding.instance.addPostFrameCallback((_) async {
        await placeAndAreaNotifier.updateDeviceId(deviceId: deviceId);
        await placeAndAreaNotifier.getPlaceList(placeId);
        if (placeId != null) {
          await placeAndAreaNotifier.getAreaList(placeId: placeId!, areaId: areaId);
        }
      });
      return null;
    }, []);

    return BasePage(
      child: SafeArea(
        child: Container(
          height: double.infinity,
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              MainTitleBar(title: AppTexts.placeAndArea, isBack: true),
              Expanded(
                child: Container(
                  padding: EdgeInsets.fromLTRB(18.sp, 24.sp, 18.sp, 12.sp),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.end,
                    children: [
                      GestureDetector(
                        onTap: () {
                          showBottomEditDialog(
                            context,
                            title: AppTexts.addPlace,
                            hintText: AppTexts.plsEnterPlaceName,
                            buttonText: AppTexts.save,
                            onTap: (text) {
                              placeAndAreaNotifier.addPlace(text);
                            },
                          );
                        },
                        child: customText(AppTexts.addPlacePlus,
                            fontWeight: FontWeight.w500, fontSize: 14.sp, color: AppColors.primaryYellow),
                      ),
                      SizedBox(
                        height: 12.sp,
                      ),
                      ItemTextWidget(
                        fieldName: AppTexts.place,
                        value: placeAndAreaState.placeIndex != null &&
                            placeAndAreaState.placeIndex! >= 0 &&
                            placeAndAreaState.placeIndex! < placeAndAreaState.placeList.length
                            ? placeAndAreaState.placeList[placeAndAreaState.placeIndex!].name
                            : AppTexts.plsChoose,
                        valueColor: AppColors.grey,
                        onTap: () async {
                          if (placeAndAreaState.placeList.isNotEmpty) {
                            showBottomListDialog(
                              context,
                              title: AppTexts.place,
                              list: (placeAndAreaState.placeList).map((place) => place.name).toList(),
                              defaultText: placeAndAreaState.placeIndex != null &&
                                  placeAndAreaState.placeIndex! >= 0 &&
                                  placeAndAreaState.placeIndex! < placeAndAreaState.placeList.length
                                  ? placeAndAreaState.placeList[placeAndAreaState.placeIndex!].name
                                  : placeAndAreaState.placeList[0].name,
                              onFinishTap: (index) async {
                                await placeAndAreaNotifier.updatePlaceIndex(newPlaceIndex: index);
                                await placeAndAreaNotifier.getAreaList(
                                    placeId: placeAndAreaState.placeList[index].placeId, areaId: null);
                                await placeAndAreaNotifier.updateAreaIndex(newAreaIndex: null);
                                await placeAndAreaNotifier.setDevicePlace(
                                    areaId: null,
                                    placeId: placeAndAreaState.placeList[index].placeId,
                                    deviceId: deviceId);
                                AutoRouter.of(context).popForced();
                              },
                            );
                          } else {
                            showBottomEditDialog(
                              context,
                              title: AppTexts.addPlace,
                              hintText: AppTexts.plsEnterPlaceName,
                              buttonText: AppTexts.save,
                              onTap: (text) {
                                placeAndAreaNotifier.addPlace(text);
                              },
                            );
                          }
                        },
                      ),
                      SizedBox(
                        height: 12.sp,
                      ),
                      GestureDetector(
                        onTap: () async {
                          if (placeAndAreaState.placeIndex != null) {
                            showBottomEditDialog(
                              context,
                              title: AppTexts.addArea,
                              hintText: AppTexts.plsEnterAreaName,
                              buttonText: AppTexts.save,
                              onTap: (text) {
                                placeAndAreaNotifier.addArea(
                                    areaName: text,
                                    placeId: placeAndAreaState.placeList[placeAndAreaState.placeIndex!].placeId);
                              },
                            );
                          } else {
                            showErrorToast(context: context, text: AppTexts.plsChoosePlace);
                          }
                        },
                        child: customText(AppTexts.addAreaPlus,
                            fontWeight: FontWeight.w500, fontSize: 14.sp, color: AppColors.primaryYellow),
                      ),
                      SizedBox(
                        height: 12.sp,
                      ),
                      ItemTextWidget(
                          fieldName: AppTexts.area,
                          value: placeAndAreaState.areaIndex != null &&
                                  placeAndAreaState.areaIndex! >= 0 &&
                              placeAndAreaState.areaIndex! < placeAndAreaState.areaList.length
                              ? placeAndAreaState.areaList[placeAndAreaState.areaIndex!].name
                              : AppTexts.plsChoose,
                          valueColor: AppColors.grey,
                          onTap: () async {
                            if (placeAndAreaState.areaList.isNotEmpty) {
                              showBottomListDialog(
                                context,
                                title: AppTexts.area,
                                list: (placeAndAreaState.areaList).map((area) => area.name).toList(),
                                defaultText: placeAndAreaState.areaIndex != null && placeAndAreaState.areaIndex! >= 0
                                    && placeAndAreaState.areaIndex! < placeAndAreaState.areaList.length
                                    ? placeAndAreaState.areaList[placeAndAreaState.areaIndex!].name
                                    : placeAndAreaState.areaList[0].name,
                                onFinishTap: (index) {
                                  placeAndAreaNotifier.updateAreaIndex(newAreaIndex: index);
                                  placeAndAreaNotifier.setDevicePlace(
                                      areaId: placeAndAreaState.areaList[index].areaId,
                                      placeId: placeAndAreaState.placeList[placeAndAreaState.placeIndex!].placeId,
                                      deviceId: deviceId);
                                  AutoRouter.of(context).popForced();
                                },
                              );
                            } else {
                              showBottomEditDialog(
                                context,
                                title: AppTexts.addArea,
                                hintText: AppTexts.plsEnterAreaName,
                                buttonText: AppTexts.save,
                                onTap: (text) {
                                  placeAndAreaNotifier.addArea(
                                      areaName: text,
                                      placeId: placeAndAreaState.placeList[placeAndAreaState.placeIndex!].placeId);
                                },
                              );
                            }
                          }),
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
