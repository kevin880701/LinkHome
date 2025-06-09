import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:haohsing_flutter/model/response/place/placeList/PlaceListResponse.dart';
import 'package:haohsing_flutter/resources/AppResources.dart';
import 'package:haohsing_flutter/screen/userScreen/home/home/HomeProvider.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:haohsing_flutter/widgets/common/TextWidgets.dart';

class PlaceListWidget extends HookConsumerWidget {
  final List<PlaceListResponse> placeList;
  final int currentPlaceIndex;

  const PlaceListWidget({super.key,
    required this.placeList,
    required this.currentPlaceIndex,
  });
  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final homeNotifier = ref.read(homeProvider.notifier);

    return Container(
      child: ListView.separated(
        scrollDirection: Axis.horizontal,
        itemCount: placeList.length,
        padding: EdgeInsets.only(right: 40.sp),
        itemBuilder: (BuildContext context, int index) {
          return GestureDetector(
            onTap: () {
              homeNotifier.updatePlaceIndex(newPlaceIndex: index);
            },
            child: Container(
              child: Column(
                children: [
                  Container(
                      constraints: BoxConstraints(
                        minWidth: 24.sp, // 設置最小寬度
                      ),child:
                  customText(placeList[index].name,
                      fontSize: 16.sp,
                      fontWeight: FontWeight.w400,
                      color: index == currentPlaceIndex
                          ? AppColors.white
                          : AppColors.disableGrey)),
              SizedBox(height: 4.sp,),
              SizedBox(
                width: 20.sp,
                height: 4.sp,
                child: DecoratedBox(
                  decoration: BoxDecoration(
                    color: index == currentPlaceIndex
                        ? AppColors.white
                        : null,
                    borderRadius: BorderRadius.circular(2.sp),
                  ),
                ),
              )
                ],
              ),
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