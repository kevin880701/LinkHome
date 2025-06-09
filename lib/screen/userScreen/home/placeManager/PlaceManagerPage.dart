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
import 'package:haohsing_flutter/widgets/home/PlaceManagerItem.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:auto_route/auto_route.dart';
import 'package:haohsing_flutter/widgets/common/TextWidgets.dart';
import '../../../../provider/UserProvider.dart';
import 'FakerPlaceManagerNotifier.dart';
import 'PlaceManagerProvider.dart';
import 'package:haohsing_flutter/widgets/common/ImageWidgets.dart';

@RoutePage()
class PlaceManagerPage extends HookConsumerWidget {
  const PlaceManagerPage({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final screenWidth = MediaQuery.of(context).size.width;
    final token = ref.read(userProvider).loginResponse?.token ?? "";
    final useFaker = token == '@@@user@@@' || token == '@@@engineer@@@';

// 根據 token 使用對應的 provider
    final provider = useFaker ? fakerPlaceManagerProvider : placeManagerProvider;

    final placeManagerState = ref.watch(provider);
    final placeManagerNotifier = ref.read(provider.notifier);
    final ScrollController scrollController = ScrollController();

    void scrollToBottom() {
      WidgetsBinding.instance.addPostFrameCallback((_) {
        if (scrollController.hasClients) {
          scrollController.animateTo(
            scrollController.position.maxScrollExtent,
            duration: Duration(seconds: 1),
            curve: Curves.easeOut,
          );
        }
      });
    }

    useEffect(() {
      Future.microtask(() async {
        await placeManagerNotifier.getPlaceDtls();
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
              MainTitleBar(title: AppTexts.placeManager, isBack: true),
              Expanded(
                child: Container(
                  padding: EdgeInsets.fromLTRB(18.sp, 24.sp, 18.sp, 12.sp),
                  child: Column(
                    children: [
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          customText(AppTexts.placeList, fontWeight: FontWeight.w500, fontSize: 18.sp, color:
                          AppColors.lightBlack),
                          GestureDetector(
                            onTap: () {
                              showDefaultDialog(
                                context,
                                iconColor: AppColors.errorRed,
                                title: AppTexts.deletePlaceMsg,
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
                                      AutoRouter.of(context).popForced();
                                    },
                                    bgColor: AppColors.errorRed,
                                    fontColor: AppColors.white,
                                    borderColor: AppColors.errorRed),
                              );
                            },
                            child: GestureDetector(
                              onTap: () {
                                placeManagerNotifier.addPlace(AppTexts.newPlace).then((placeId){
                                  if(placeId != null){
                                    showSuccessToast(context: context,text: AppTexts.addPlaceSuccess);
                                  }
                                });
                              },
                              child: customText(AppTexts.addPlacePlus,
                                  fontWeight: FontWeight.w500, fontSize: 14.sp, color: AppColors.primaryYellow),
                            ),
                          ),
                        ],
                      ),
                      if (placeManagerState.isEmpty)
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
                        SizedBox(
                          height: 8.sp,
                        ),
                        Expanded(
                          child: Container(
                            child: ListView.builder(
                              controller: scrollController,
                              itemCount: placeManagerState.length,
                              itemBuilder: (context, index) {
                                return PlaceManagerItem(
                                  index: index,
                                );
                              },
                            ),
                          ),
                        ),
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
