import 'package:flutter_riverpod/flutter_riverpod.dart';

import '../../../../model/response/device/deviceInfo/DeviceInfoResponse.dart';
import '../../../../model/response/place/placeList/PlaceListResponse.dart';

class DeviceInfoState {
  final int deviceId;
  final DeviceInfoResponse? deviceInfo;
  final List<PlaceListResponse> placeList;

  DeviceInfoState({
    this.deviceId = -1,
    this.deviceInfo,
    this.placeList = const [],
  });

  DeviceInfoState copyWith({
    int? deviceId,
    DeviceInfoResponse? deviceResponse,
    List<PlaceListResponse>? placeList,
  }) {
    return DeviceInfoState(
      deviceId: deviceId ?? this.deviceId,
      deviceInfo: deviceResponse ?? deviceInfo,
      placeList: List.unmodifiable(placeList ?? this.placeList),
    );
  }
}

abstract class BaseDeviceInfoNotifier extends StateNotifier<DeviceInfoState> {
  BaseDeviceInfoNotifier(this.ref) : super(DeviceInfoState());

  final Ref ref;
  late String token = "";

  Future<void> updateDeviceId({required int deviceId});
  Future<void> updateDeviceInfo({required DeviceInfoResponse deviceInfo});
  Future<DeviceInfoResponse?> getDeviceInfo(int deviceId);
  Future<bool> deviceValue(int deviceId, String statisticKey, String value);
  Future<bool> changeDeviceName(int deviceId, String deviceName);
  void sendCmd(String statisticKey, String value);
  Future<bool> deleteDevice(int deviceId);
}
