import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:haohsing_flutter/resources/AppResources.dart';
import 'package:haohsing_flutter/utils/ToastHelper.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import '../../../../resources/AppColors.dart';
import '../../../define.dart';
import '../widget/DialogTitleBar.dart';
import 'package:haohsing_flutter/widgets/common/TextWidgets.dart';

class BottomListDialog extends HookConsumerWidget {
  const BottomListDialog({
    super.key,
    required this.title,
    required this.list,
    this.defaultText,
    this.buttonText = AppTexts.finish,
    this.onFinishTap,
  });

  final String title;
  final List<String> list;
  final String? defaultText;
  final String buttonText;
  final void Function(int index)? onFinishTap;

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    double screenHeight = MediaQuery.of(context).size.height;
    final currentIndex = useState<int>(list.indexWhere((element) => element == defaultText));

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
              buttonText: buttonText,
              finishOnTap: () {
                if(currentIndex.value < 0){
                  showErrorToast(context: context, text: '尚未選擇');
                }else{
                  onFinishTap!(currentIndex.value);
                }
              },
              isBack: false,
            ),
            SizedBox(
              height: 16.sp,
            ),
            customText(title, fontWeight: FontWeight.w600, fontSize: 16.sp, overflow: null, textAlign: TextAlign.center),
            SizedBox(
              height: 16.sp,
            ),
            Container(
              constraints: BoxConstraints(
                minHeight: 144.sp,
                maxHeight: screenHeight / 3,
              ),
              height: double.minPositive,
              child: ListView.builder(
                itemCount: list.length,
                itemBuilder: (context, index) {
                  return GestureDetector(
                    onTap: () {
                      currentIndex.value = index;
                    },
                    child: Container(
                      alignment: Alignment.center,
                      decoration: BoxDecoration(
                        color: currentIndex.value == index ? AppColors.lightGrey2 : Colors.transparent,
                        borderRadius: BorderRadius.circular(8.sp),
                      ),
                      padding: EdgeInsets.symmetric(vertical: 16.sp, horizontal: 24.sp),
                      child: customText(
                        list[index],
                        fontWeight: FontWeight.w500,
                        fontSize: 16.sp,
                        color: currentIndex.value == index ? AppColors.primaryBlack : AppColors.disableGrey,
                      ),
                    ),
                  );
                },
              ),
            ),
          ],
        ),
      ),
    );
  }
}
