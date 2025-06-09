import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:haohsing_flutter/define.dart';
import 'package:haohsing_flutter/model/response/device/getShares/GetSharesResponse.dart';
import 'package:haohsing_flutter/resources/AppResources.dart';
import 'package:haohsing_flutter/screen/userScreen/notify/NotifyProvider.dart';
import 'package:haohsing_flutter/widgets/common/ButtonWidgets.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:haohsing_flutter/widgets/common/TextWidgets.dart';
import 'package:haohsing_flutter/widgets/common/ImageWidgets.dart';

class InviteListWidget extends HookConsumerWidget {
  final List<GetSharesResponse> shareList;

  const InviteListWidget({
    super.key,
    required this.shareList,
  });

  @override
  Widget build(BuildContext context, WidgetRef ref) {

    final notifyNotifier = ref.read(notifyProvider.notifier);

    return Container(
      child: Column(
        children: [
          for (var share in shareList)
            Container(
              padding: EdgeInsets.symmetric(vertical: 16.sp, horizontal: 8.sp),
              margin: EdgeInsets.only(
                bottom: 8.sp,
              ),
              decoration: BoxDecoration(
                color: AppColors.white,
                borderRadius: BorderRadius.circular(16.sp),
              ),
              child: Column(
                children: [
                  Row(
                    children: [
                      Container(
                        margin: EdgeInsets.only(right: 12.sp),
                        alignment: Alignment.center,
                        width: 28.sp,
                        height: 28.sp,
                        padding: EdgeInsets.all(6.sp),
                        decoration: BoxDecoration(
                          shape: BoxShape.circle,
                          color: AppColors.bgColor,
                        ),
                        child: assetImage(
                          'ic_invite.png',
                          width: 12.sp,
                          height: 12.sp,
                          color: AppColors.black,
                        ),
                      ),
                      Expanded(
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Row(
                              children: [
                                Expanded(child: customText(share.owner ?? AppTexts.user,
                                    fontWeight: FontWeight.w500, fontSize: 14.sp, color: AppColors.primaryYellow)),
                                customText(" ${AppTexts.invitedUseDevice}",
                                    fontWeight: FontWeight.w500, fontSize: 14.sp, color: AppColors.black),
                              ],
                            ),
                            customText("${share.placeName ?? ""} - ${share.names}",
                                fontWeight: FontWeight.w400, fontSize: 14.sp, color: AppColors.grey),
                          ],
                        ),
                      )
                    ],
                  ),
                  SizedBox(
                    height: 12.sp,
                  ),
                  Row(
                    children: [
                      Expanded(
                        child: roundedButton(
                            radius: 12.sp,
                            text: AppTexts.reject,
                            onTap: () {
                              notifyNotifier.shareReview(share.placeId ,share.deviceId, 0);
                            },
                            verticalPadding: 8.sp,
                            bgColor: AppColors.transparent,
                            fontColor: AppColors.black,
                            borderColor: AppColors.black),
                      ),
                      SizedBox(
                        width: 18.sp,
                      ),
                      Expanded(
                        child: roundedButton(
                            radius: 12.sp,
                            text: AppTexts.join,
                            onTap: () {
                              notifyNotifier.shareReview(share.placeId ,share.deviceId, 1);
                            },
                            verticalPadding: 8.sp,
                            bgColor: AppColors.primaryYellow,
                            fontColor: AppColors.white,
                            borderColor: AppColors.primaryYellow),
                      ),
                    ],
                  )
                ],
              ),
            )
        ],
      ),
    );
  }
}
