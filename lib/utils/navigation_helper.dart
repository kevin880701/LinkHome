import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:haohsing_flutter/provider/BluetoothProvider.dart';
import 'package:haohsing_flutter/resources/AppResources.dart';
import 'package:haohsing_flutter/route/AppRouter.dart';
import 'package:haohsing_flutter/utils/dialog/DialogManager.dart';
import 'package:haohsing_flutter/widgets/common/ButtonWidgets.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';

Future<void> registerDeviceBack(BuildContext context, WidgetRef ref) async {
    final bluetoothNotifier = ref.read(bluetoothProvider.notifier);

    showDefaultDialog(
      context,
      canPop: false,
      iconColor: AppColors.errorRed,
      title: AppTexts.checkCancelAddDevice,
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
          text: AppTexts.confirm,
          onTap: () {
            bluetoothNotifier.disconnectFromDevice();
            goUserMain(context, ref);
          },
          bgColor: AppColors.primaryYellow,
          fontColor: AppColors.white,
          borderColor: AppColors.primaryYellow),
    );
  }
