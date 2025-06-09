import 'dart:convert';

import 'package:firebase_crashlytics/firebase_crashlytics.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:haohsing_flutter/utils/Validators.dart';

part 'DeviceBlueResponse.freezed.dart';
part 'DeviceBlueResponse.g.dart';

@freezed
class DeviceBlueResponse with _$DeviceBlueResponse {
  const factory DeviceBlueResponse({
    @JsonKey(name: 'cmd') required String cmd,
    int? result,
    String? model,
    String? system,
    String? version,
    String? id,
    String? ip,
    String? name,
    String? ssid,
    @JsonKey(name: 'model_id') String? modelId,
    int? rssi,
    @JsonKey(name: 'data') List<WifiData>? data,
  }) = _DeviceBlueResponse;

  factory DeviceBlueResponse.fromJson(Map<String, dynamic> json) => _$DeviceBlueResponseFromJson(json);
}

@freezed
class WifiData with _$WifiData {
  const factory WifiData({
    @JsonKey(name: 'ssid') required String ssid,
    @JsonKey(name: 'rssi') required int rssi,
  }) = _WifiData;

  factory WifiData.fromJson(Map<String, dynamic> json) => _$WifiDataFromJson(json);
}

///
/// 根據 RSSI 訊號強度對 `deviceBlueResponse` 中的 Wi-Fi 數據進行排序。
///
/// Params：
///   - deviceBlueResponse: 包含 Wi-Fi 資料的裝置藍牙響應物件
///
/// Return：
///   返回一個新的 `DeviceBlueResponse`，其中的 Wi-Fi 數據已根據 RSSI 值從高到低排序。
///
/// 示範：
/// ```
/// DeviceBlueResponse response = sortWifiDataInDeviceResponse(deviceBlueResponse);
/// ```
DeviceBlueResponse sortWifiDataInDeviceResponse(DeviceBlueResponse deviceBlueResponse) {
  if (deviceBlueResponse.data != null) {
    List<WifiData> sortedData = List.from(deviceBlueResponse.data!);
    sortedData.sort((a, b) => b.rssi.compareTo(a.rssi));
    return deviceBlueResponse.copyWith(data: sortedData);
  }
  return deviceBlueResponse;
}

// 進行資料檢查
bool isValidBluetoothMessage(String receivedMessage) {
  if (receivedMessage.isValidJson()) {
    try {
      var deviceBlueResponse = DeviceBlueResponse.fromJson(jsonDecode(receivedMessage));
      deviceBlueResponse = sortWifiDataInDeviceResponse(deviceBlueResponse);
      return true;
    } catch (e, stackTrace) {
      FirebaseCrashlytics.instance.recordError(
        'Error parsing JSON message: $receivedMessage',
        stackTrace,
      );
      return false;
    }
  } else {
    FirebaseCrashlytics.instance.recordError(
      'Received invalid JSON message: $receivedMessage',
      null,
    );
    return false;
  }
}