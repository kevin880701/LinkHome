import 'dart:async';
import 'dart:io';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:haohsing_flutter/define.dart';
import 'package:haohsing_flutter/resources/AppColors.dart';
import 'package:haohsing_flutter/utils/dialog/window/AddFilterDialog.dart';
import 'package:haohsing_flutter/utils/dialog/window/BottomEditDialog.dart';
import 'package:haohsing_flutter/utils/dialog/window/BottomFaultConditionDialog.dart';
import 'package:haohsing_flutter/utils/dialog/window/BottomListDialog.dart';
import 'package:haohsing_flutter/utils/dialog/window/BottomWifiListDialog.dart';
import 'package:haohsing_flutter/utils/dialog/window/ChangePasswordDialog.dart';
import 'package:haohsing_flutter/utils/dialog/window/DefaultDialog.dart';
import 'package:haohsing_flutter/utils/dialog/window/EngineerInfoDialog.dart';
import 'package:haohsing_flutter/utils/dialog/window/ErrorDialog.dart';
import 'package:haohsing_flutter/utils/dialog/window/MediaDialog.dart';
import 'package:haohsing_flutter/utils/dialog/window/PdfDialog.dart';
import 'package:haohsing_flutter/utils/dialog/window/SignatureDialog.dart';
import 'package:haohsing_flutter/utils/dialog/window/StartSettingDialog.dart';
import 'package:signature/signature.dart';
import '../../model/deviceBlueResponse/DeviceBlueResponse.dart';
import '../../model/response/maintenance/maintenanceForm/MaintenanceFormResponse.dart';
import '../../resources/AppTexts.dart';

Future<void> showDefaultDialog(BuildContext context,
    {String icon = "ic_information.png",
    Color? iconColor = AppColors.primaryYellow,
    String? title,
    String? content,
    required Widget firstButton,
    Widget? secondButton,
    bool barrierDismissible = true,
    bool canPop = true}) async {
  showDialogBox(context,
      child: DefaultDialog(
        icon: icon,
        iconColor: iconColor,
        title: title,
        content: content,
        firstButton: firstButton,
        secondButton: secondButton,
      ),
      barrierDismissible: barrierDismissible,
      canPop: canPop);
}

Future<void> showErrorDialog(BuildContext context,
    {required String title, String? content, String buttonText = AppTexts.confirm, Function()? onTap, bool
    barrierDismissible =
    true,
      bool canPop = true})
async {
  showDialogBox(context,
      child: ErrorDialog(
        title: title,
        content: content,
        buttonText: buttonText,
        onTap: onTap,
      ),
      barrierDismissible: barrierDismissible,
      canPop: canPop);
}

Future<void> showBottomEditDialog(
  BuildContext context, {
  required String title,
  String? hintText,
  String? defaultText,
  required String buttonText,
  void Function(String text)? onTap,
  bool Function(String text)? isValid,
  String invalidText = AppTexts.inputFieldCannotEmpty,
  bool barrierDismissible = true,
  int? wordLimit = 20,
  InputType inputType = InputType.ALL,
}) async {
  showDialogBox(context,
      child: BottomEditDialog(
        title: title,
        hintText: hintText,
        defaultText: defaultText,
        buttonText: buttonText,
        onTap: onTap,
        isValid: isValid,
        invalidText: invalidText,
        wordLimit: wordLimit,
        inputType: inputType,
      ),
      barrierDismissible: barrierDismissible);
}

Future<void> showBottomListDialog(BuildContext context,
    {required String title,
    required List<String> list,
    String? defaultText,
    String buttonText = AppTexts.finish,
    void Function(int index)? onFinishTap,
    bool barrierDismissible = true}) async {
  showDialogBox(context,
      child: BottomListDialog(
        title: title,
        list: list,
        defaultText: defaultText,
        buttonText: buttonText,
        onFinishTap: onFinishTap,
      ),
      barrierDismissible: barrierDismissible);
}

Future<void> showBottomWifiListDialog(BuildContext context,
    {required List<WifiData> list,
    required int currentIndex,
    required void Function(int index) onTap,
    bool barrierDismissible = true}) async {
  showDialogBox(context,
      child: BottomWifiListDialog(
        list: list,
        currentIndex: currentIndex,
        onTap: onTap,
      ),
      barrierDismissible: barrierDismissible);
}

Future<void> showStartSettingDialog(BuildContext context,
    {bool barrierDismissible = true}) async {
  showDialogBox(context,
      child: StartSettingDialog(),
      barrierDismissible: barrierDismissible);
}

Future<void> showBottomFaultConditionDialog(BuildContext context,
    {required String title,
    required List<MaintenanceFormResponse> list,
    required void Function(List<MaintenanceFormResponse> selectItem)? onFinishTap,
    required List<MaintenanceFormResponse> selectItem,
    bool barrierDismissible = true}) async {
  showDialogBox(context,
      child: BottomFaultConditionDialog(
        title: title,
        list: list,
        selectItem: selectItem,
        onFinishTap: onFinishTap,
      ),
      barrierDismissible: barrierDismissible);
}

Future<void> showChangePasswordDialog(BuildContext context,
    {required Function(String, String) onConfirmTap, bool barrierDismissible = true}) async {
  showDialogBox(context,
      child: ChangePasswordDialog(
        onConfirmTap: onConfirmTap,
      ),
      barrierDismissible: barrierDismissible);
}

Future<void> showMediaDialog(BuildContext context, {String? mediaUrl,File? mediaFile, bool
barrierDismissible = true}) async {
  showDialogBox(context,
      child: MediaDialog(
        mediaUrl: mediaUrl,
        mediaFile: mediaFile,
      ),
      barrierDismissible: barrierDismissible);
}

Future<void> showPdfDialog(BuildContext context, {required String pdfUrl, bool barrierDismissible = true}) async {
  showDialogBox(context,
      child: PdfDialog(
        pdfUrl: pdfUrl,
      ),
      barrierDismissible: barrierDismissible);
}

Future<void> showSignatureDialog(BuildContext context,
    {required String fee,
    required ValueNotifier<SignatureController> controller,
    bool barrierDismissible = true}) async {
  showDialogBox(context,
      child: SignatureDialog(
        fee: fee,
        controller: controller,
      ),
      barrierDismissible: barrierDismissible);
}

Future<void> showAddFilterDialog(BuildContext context,
    {required String filterCode, required Map<String, String> filterLife, bool barrierDismissible = true}) async {
  showDialogBox(context,
      child: AddFilterDialog(
        filterCode: filterCode,
        filterLife: filterLife,
      ),
      barrierDismissible: barrierDismissible);
}

Future<void> showEngineerInfoDialog(BuildContext context, {bool barrierDismissible = true}) async {
  showDialogBox(context, child: EngineerInfoDialog(), barrierDismissible: barrierDismissible);
}

Future<T?> showDialogBox<T>(BuildContext context,
    {required Widget child, Alignment? alignment = Alignment.center, bool barrierDismissible = true, bool canPop = true})
async {
  // ref.hideLoading();

  WidgetsBinding.instance.addPostFrameCallback((_) {});
  return await showDialog(
    context: context,
    useSafeArea: false,
    barrierDismissible: barrierDismissible,
    builder: (BuildContext context) {
      return PopScope(
        canPop: canPop,
        child: child,
      );
    },
  ).then((value) {
    FocusScope.of(context).unfocus();
    return value;
  });
}
