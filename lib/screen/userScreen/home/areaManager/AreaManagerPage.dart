import 'package:flutter/material.dart';
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
import 'package:haohsing_flutter/widgets/common/ButtonWidgets.dart';
import 'package:haohsing_flutter/widgets/common/ImageWidgets.dart';
import 'package:haohsing_flutter/widgets/home/AreaManagerItem.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:auto_route/auto_route.dart';
import '../../../../provider/UserProvider.dart';
import '../placeManager/FakerPlaceManagerNotifier.dart';
import 'AreaManagerProvider.dart';
import 'package:haohsing_flutter/widgets/common/TextWidgets.dart';

import 'FakerAreaManagerNotifier.dart';

@RoutePage()
class AreaManagerPage extends HookConsumerWidget {
  final int placeId;

  const AreaManagerPage({
    super.key,
    required this.placeId,
  });

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final screenWidth = MediaQuery.of(context).size.width;
    final token = ref.read(userProvider).loginResponse?.token ?? "";
    final provider = (token == '@@@user@@@' || token == '@@@engineer@@@')
        ? fakerAreaManagerProvider
        : areaManagerProvider;

    final areaManagerNotifier = ref.read(provider.notifier);
    final areaManagerState = ref.watch(provider);

    useEffect(() {
      Future.microtask(() async {
        await areaManagerNotifier.updatePlaceId(placeId: placeId).then((_) {
          areaManagerNotifier.getAreaList(placeId);
        });
      });
      return null;
    }, []);

    return BasePage(
      child:  SafeArea(
        child: Container(
          height: double.infinity,
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              MainTitleBar(title: AppTexts.areaManager, isBack: true),
              Expanded(
                child: Container(
                  padding: EdgeInsets.fromLTRB(18.sp, 24.sp, 18.sp, 12.sp),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          customText(AppTexts.areaList, fontWeight: FontWeight.w500, fontSize: 18.sp),
                          GestureDetector(
                            onTap: () {
                              showBottomEditDialog(
                                context,
                                title: AppTexts.addArea,
                                hintText: AppTexts.plsEnterAreaName,
                                buttonText: AppTexts.save,
                                onTap: (text) {
                                  areaManagerNotifier.addArea(text, placeId).then((areaId) {
                                    if (areaId != null) {
                                      showSuccessToast(context: context, text: AppTexts.addAreaSuccess);
                                    }
                                  });
                                },
                              );
                            },
                            child: customText(AppTexts.addAreaPlus,
                                fontWeight: FontWeight.w500, fontSize: 14.sp, color: AppColors.primaryYellow),
                          ),
                        ],
                      ),
                      Expanded(
                          child: Column(
                        children: [
                          if (areaManagerState.areaList.isNotEmpty) ...[
                            SizedBox(
                              height: 12.sp,
                            ),
                            Align(
                              alignment: Alignment.centerLeft,
                              child: customText("${areaManagerState.areaList.length}個區域",
                                  fontWeight: FontWeight.w500, fontSize: 18.sp, color: AppColors.lightGrey),
                            ),
                            SizedBox(
                              height: 12.sp,
                            ),
                            Expanded(
                              child: ListView.builder(
                                itemCount: areaManagerState.areaList.length,
                                itemBuilder: (context, index) {
                                  return AreaManagerItem(
                                      areaListResponse: areaManagerState.areaList[index],
                                      onChangeName: () {
                                        showBottomEditDialog(
                                          context,
                                          title: AppTexts.editName,
                                          defaultText: areaManagerState.areaList[index].name,
                                          hintText: AppTexts.plsEnterAreaName,
                                          buttonText: AppTexts.save,
                                          onTap: (text) async {
                                            await showDefaultDialog(
                                              context,
                                              title: AppTexts.confirmUpdateArea,
                                              firstButton: roundedButton(
                                                radius: 12.sp,
                                                text: AppTexts.cancel,
                                                onTap: () {
                                                  AutoRouter.of(context).popForced();
                                                },
                                                bgColor: AppColors.white,
                                                fontColor: AppColors.primaryYellow,
                                                borderColor: AppColors.primaryYellow,
                                              ),
                                              secondButton: roundedButton(
                                                radius: 12.sp,
                                                text: AppTexts.confirm,
                                                onTap: () {
                                                  areaManagerNotifier.changeAreaName(
                                                      areaManagerState.areaList[index].areaId, text).then((_){
                                                    AutoRouter.of(context).popForced();
                                                  });
                                                },
                                                bgColor: AppColors.primaryYellow,
                                                fontColor: AppColors.white,
                                              ),
                                            );
                                          },
                                        );
                                      },
                                      onTap: () {
                                        areaManagerNotifier.deleteArea(areaManagerState.areaList[index].areaId);
                                      });
                                },
                              ),
                            )
                          ] else ...[
                            Expanded(
                              child: Column(
                                mainAxisAlignment: MainAxisAlignment.center,
                                children: [
                                  assetImage(
                                    'img_empty.png',
                                    width: screenWidth * 0.66,
                                    height: screenWidth * 0.66 * 0.8,
                                  ),
                                  SizedBox(
                                    height: 24.sp,
                                  ),
                                  customText(
                                    AppTexts.noAreaYet,
                                    fontWeight: FontWeight.w500,
                                    fontSize: 16.sp,
                                    color: AppColors.lightGrey,
                                  ),
                                ],
                              ),
                            )
                          ]
                        ],
                      )),
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
