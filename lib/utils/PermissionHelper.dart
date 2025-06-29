import 'dart:io';

import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:haohsing_flutter/utils/ToastHelper.dart';
import 'package:permission_handler/permission_handler.dart';

Future<bool> checkStoragePermission(BuildContext context) async {
  // 檢查是否為Android 11及以上版本
  if (Platform.isAndroid && (await getAndroidVersion()) >= 30) {
    return true;
  } else {
    // Android 10及以下，檢查普通存儲權限
    var status = await Permission.storage.status;
    if (!status.isGranted) {
      final newStatus = await Permission.storage.request();
      if (!newStatus.isGranted) {
        showErrorToast(context: context, text: "存儲權限被拒絕");
        return false;
      }
    }
  }

  // 權限已授予
  return true;
}

Future<int> getAndroidVersion() async {
  const platform = MethodChannel('android_version');
  try {
    final int version = await platform.invokeMethod('getAndroidVersion');
    return version;
  } on PlatformException catch (e) {
    throw Exception("Failed to get Android version: '${e.message}'.");
  }
}
