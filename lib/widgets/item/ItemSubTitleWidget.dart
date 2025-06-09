import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:haohsing_flutter/resources/AppResources.dart';
import 'package:haohsing_flutter/widgets/common/TextWidgets.dart';

class ItemSubTitleWidget extends HookWidget {
  final String title;

  const ItemSubTitleWidget({super.key,
    required this.title,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(padding: EdgeInsets.fromLTRB(0.sp, 24.sp, 0.sp, 12.sp), child: customText(title, fontWeight:
    FontWeight.w500, fontSize: 18.sp, color: AppColors.primaryBlack),);
  }
}