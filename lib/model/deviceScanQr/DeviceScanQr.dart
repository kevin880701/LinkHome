import 'dart:convert';

import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:haohsing_flutter/utils/AppLog.dart';

part 'DeviceScanQr.freezed.dart';
part 'DeviceScanQr.g.dart';

@freezed
class DeviceScanQr with _$DeviceScanQr {
  const factory DeviceScanQr({
    required String id,
    required String code,
  }) = _DeviceScanQr;

  factory DeviceScanQr.fromJson(Map<String, dynamic> json) => _$DeviceScanQrFromJson(json);
}

DeviceScanQr? validateAndParseDeviceScanQr(String jsonString) {
  try {
    // 解析 JSON 字元串
    final Map<String, dynamic> jsonMap = json.decode(jsonString);

    // 檢查是否包含必要的key
    if (jsonMap.containsKey('id') && jsonMap.containsKey('code')) {
      String id = jsonMap['id'];
      final String code = jsonMap['code'];

      // 檢查 id 是否為 12 或 15 個字元
      if (id.length == 12) {
        id = 'A01$id'; // 如果是 12 個字元，在前面加上 "A01"
      }

      // 確認 id 是否最終有 15 個字元
      if (id.length == 15) {
        jsonMap['id'] = id;
        return DeviceScanQr.fromJson(jsonMap);
      }
    }
  } catch (e) {
    AppLog.e('Error parsing JSON: $e');
  }

  // 如果驗證失敗，則返回 null
  return null;
}
