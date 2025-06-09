import 'package:auto_route/auto_route.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:haohsing_flutter/define.dart';
import 'package:haohsing_flutter/resources/AppResources.dart';
import 'package:haohsing_flutter/widgets/common/TextWidgets.dart';
import 'package:haohsing_flutter/widgets/common/ImageWidgets.dart';

Widget LoginTitlebar({
  String? title,
  required BuildContext context,
  bool showLogo = true,
  bool isBack = false,
}) {
  return Container(
    width: double.infinity,
    padding: EdgeInsets.fromLTRB(0.sp, 4.sp, 0.sp, 4.sp),
    child: Column(
      children: [
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            isBack
                ? GestureDetector(
                    onTap: () {
                      AutoRouter.of(context).popForced();
                    },
                    child: assetImage('ic_back.png',
                        width: 24.sp,
                        height: 24.sp,
                        color: AppColors.primaryBlack))
                : SizedBox(
                    width: 24.sp,
                  ),
            showLogo
                ? assetImage('ic_logo.png', width: 148.sp, height: 26.sp)
                : SizedBox(),
            SizedBox(
              width: 24.sp,
            )
          ],
        ),
        if(title != null)...[
        SizedBox(
          height: 48.sp,
        ),
        Container(
          alignment: Alignment.centerLeft,
          child: customText(title, fontWeight: FontWeight.w600, fontSize: 36.sp),
        )],
      ],
    ),
  );
}
