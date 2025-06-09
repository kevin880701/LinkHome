import 'package:auto_route/auto_route.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:haohsing_flutter/data/Params.dart';
import 'package:haohsing_flutter/define.dart';
import 'package:haohsing_flutter/resources/AppResources.dart';
import 'package:haohsing_flutter/utils/dialog/DialogManager.dart';
import 'package:haohsing_flutter/utils/dialog/widget/DialogTitleBar.dart';
import 'package:haohsing_flutter/widgets/common/ButtonWidgets.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:intl/intl.dart';
import 'package:haohsing_flutter/widgets/common/TextWidgets.dart';
import 'package:haohsing_flutter/widgets/common/ImageWidgets.dart';

class AddFilterDialog extends HookConsumerWidget {
  const AddFilterDialog({
    super.key,
    required this.filterCode,
    required this.filterLife,
  });

  final String filterCode;
  final Map<String, String> filterLife;

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final DateTime today = DateTime.now();
    final currentIndex = useState<int>(2);

    return Dialog(
      alignment: Alignment.bottomCenter,
      insetPadding: EdgeInsets.zero,
      child: Container(
        padding: EdgeInsets.fromLTRB(16.sp, 20.sp, 16.sp, 20.sp),
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(16),
          color: AppColors.white,
        ),
        child: Column(
          mainAxisSize: MainAxisSize.min,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            DialogTitleBar(
              isBack: false,
            ),
            SizedBox(
              height: 16.sp,
            ),
            customText(AppTexts.addNewFilter, fontWeight: FontWeight.w500, fontSize: 18.sp, textAlign: TextAlign.center),
            SizedBox(height: 24.sp),
            customText(filterMap[filterCode] ?? "",
                fontWeight: FontWeight.w500, fontSize: 24.sp, textAlign: TextAlign.center),
            SizedBox(height: 18.sp),
            Container(
              margin: EdgeInsets.symmetric(vertical: 6.sp),
              padding: EdgeInsets.all(16.sp),
              width: double.infinity,
              decoration: BoxDecoration(
                color: AppColors.lightGrey2,
                borderRadius: BorderRadius.circular(8.sp),
              ),
              child: Row(crossAxisAlignment: CrossAxisAlignment.center, children: [
                customText(
                  AppTexts.installationDate,
                  fontWeight: FontWeight.w400,
                  fontSize: 16.sp,
                ),
                Expanded(
                  child: customText(DateFormat('yyyy年MM月dd日').format(today),
                      fontWeight: FontWeight.w400, fontSize: 16.sp, textAlign: TextAlign.end),
                )
              ]),
            ),
            SizedBox(height: 8.sp),
            GestureDetector(
              onTap: () {
                showBottomListDialog(
                  context,
                  title: AppTexts.remainingLife,
                  list: filterLifeList,
                  defaultText: filterLifeList[currentIndex.value],
                  onFinishTap: (index) {
                    currentIndex.value = index;
                    AutoRouter.of(context).popForced();
                  },
                );
              },
              child: Container(
                margin: EdgeInsets.symmetric(vertical: 6.sp),
                padding: EdgeInsets.all(16.sp),
                width: double.infinity,
                decoration: BoxDecoration(
                  color: AppColors.lightGrey2,
                  borderRadius: BorderRadius.circular(8.sp),
                ),
                child: Row(crossAxisAlignment: CrossAxisAlignment.center, children: [
                  customText(
                    AppTexts.remainingLife,
                    fontWeight: FontWeight.w400,
                    fontSize: 16.sp,
                  ),
                  Expanded(
                    child: customText(filterLifeList[currentIndex.value],
                        fontWeight: FontWeight.w400,
                        fontSize: 16.sp,
                        textAlign: TextAlign.end,
                        color: AppColors.primaryYellow),
                  ),
                  assetImage('ic_arrow_right.png', width: 24.sp),
                ]),
              ),
            ),
            SizedBox(height: 24.sp),
            roundedButton(
                radius: 12.sp,
                text: AppTexts.add,
                onTap: () {
                  filterLife[filterCode] = filterLifeList[currentIndex.value];
                  AutoRouter.of(context).popForced();
                },
                bgColor: AppColors.primaryYellow,
                fontColor: AppColors.white,
                borderColor: AppColors.primaryYellow)
          ],
        ),
      ),
    );
  }
}
