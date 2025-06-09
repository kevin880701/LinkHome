
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:haohsing_flutter/widgets/common/TextWidgets.dart';
import 'package:haohsing_flutter/screen/userScreen/home/home/HomeProvider.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import '../../../define.dart';
import '../../../model/response/place/areaList/AreaListResponse.dart';
import '../../../resources/AppColors.dart';

class AreaListWidget extends HookConsumerWidget {
  final List<AreaListResponse> areaList;
  final int currentAreaIndex;

  const AreaListWidget({super.key,
    required this.areaList,
    required this.currentAreaIndex,
  });

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final homeNotifier = ref.read(homeProvider.notifier);

    return Container(
      child: ListView.separated(
        scrollDirection: Axis.horizontal,
        itemCount: areaList.length,
        padding: EdgeInsets.only(right: 40.sp),
        itemBuilder: (BuildContext context, int index) {
          return GestureDetector(
            onTap: () {
              homeNotifier.updateAreaIndex(newAreaIndex: index);
            },
            child: Container(
              alignment: Alignment.center,
              padding: EdgeInsets.fromLTRB(24.sp, 4.sp, 24.sp, 4.sp),
              decoration: BoxDecoration(
                color: index == currentAreaIndex
                    ? AppColors.primaryYellow
                    : AppColors.white,
                borderRadius: BorderRadius.circular(96.sp),
              ),
              child: customText(areaList[index].name,
                  fontSize: 16.sp,
                  fontWeight: FontWeight.w400,
                  color: index == currentAreaIndex
                      ? AppColors.white
                      : AppColors.disableGrey),
            ),
          );
        },
        separatorBuilder: (context, index) {
          return SizedBox(width: 12.sp);
        },
      ),
    );
  }
}