import 'package:flutter/material.dart';
import 'package:haohsing_flutter/utils/toast/src/helper/toast_helper.dart';
import 'package:haohsing_flutter/utils/toast/toastification.dart';

class FlatStyle extends BuiltInStyle {
  const FlatStyle(super.type);

  @override
  MaterialColor primaryColor(BuildContext context) {
    final color = switch (type) {
      ToastificationType.info => infoColor,
      ToastificationType.warning => warningColor,
      ToastificationType.success => successColor,
      ToastificationType.error => errorColor,
    };

    return ToastHelper.createMaterialColor(color);
  }

  @override
  MaterialColor onPrimaryColor(BuildContext context) {
    return ToastHelper.createMaterialColor(Colors.white);
  }

  @override
  Color backgroundColor(BuildContext context) {
    return Theme.of(context).brightness == Brightness.light
        ? const Color(0xffFfffff)
        : const Color(0xff2B2B2B);
  }

  @override
  Color foregroundColor(BuildContext context) {
    return Theme.of(context).brightness == Brightness.light
        ? Colors.black
        : Colors.white;
  }

  @override
  Color iconColor(BuildContext context) {
    return primaryColor(context);
  }

  @override
  IconData closeIcon(BuildContext context) {
    return Icons.close;
  }

  @override
  Color closeIconColor(BuildContext context) {
    return foregroundColor(context).withOpacity(.3);
  }

  @override
  BorderSide borderSide(BuildContext context) {
    return const BorderSide(
      color: Color(0xffEBEBEB),
      width: 1.5,
    );
  }

  @override
  BorderRadiusGeometry borderRadius(BuildContext context) {
    return const BorderRadius.all(Radius.circular(12));
  }

  @override
  ProgressIndicatorThemeData progressIndicatorTheme(BuildContext context) {
    return ProgressIndicatorThemeData(
      color: foregroundColor(context).withOpacity(.15),
      linearMinHeight: super.progressIndicatorStrokeWidth(context),
      linearTrackColor: foregroundColor(context).withOpacity(.05),
      refreshBackgroundColor: foregroundColor(context).withOpacity(.05),
    );
  }
}
