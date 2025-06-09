import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:haohsing_flutter/model/response/device/deviceInfo/DeviceInfoResponse.dart';
import 'package:haohsing_flutter/model/response/place/placeList/PlaceListResponse.dart';
import 'package:haohsing_flutter/net/DeviceApiManager.dart';
import 'package:haohsing_flutter/net/PlaceApiManager.dart';
import 'package:haohsing_flutter/provider/PageProvider.dart';
import 'package:haohsing_flutter/provider/UpdateStateProvider.dart';
import 'package:haohsing_flutter/provider/UserProvider.dart';
import 'package:haohsing_flutter/utils/AppLog.dart';

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

final deviceInfoProvider = StateNotifierProvider.autoDispose<DeviceInfoNotifier, DeviceInfoState>((ref) {
  return DeviceInfoNotifier(ref);
});

class DeviceInfoNotifier extends StateNotifier<DeviceInfoState> {
  DeviceInfoNotifier(this.ref) : super(DeviceInfoState()) {
    token = ref.read(userProvider).loginResponse?.token ?? "";
    ref.listen<UpdateState>(updateStateProvider, (previous, next) {
      if ((previous?.deviceUpdated != next.deviceUpdated)) {
        getDeviceInfo(state.deviceId);
      }
    });
    deviceApiManager = DeviceApiManager(ref);
  }

  final Ref ref;
  late String token = "";
  final PlaceApiManager placeApiManager = PlaceApiManager.instance;
  late final DeviceApiManager deviceApiManager;

  Future<void> updateDeviceId({required int deviceId})async {
    state = state.copyWith(deviceId: deviceId);
  }

  Future<void> updateDeviceInfo({required DeviceInfoResponse deviceInfo})async {
    state = state.copyWith(deviceResponse: deviceInfo);
  }

  Future<DeviceInfoResponse?> getDeviceInfo(int deviceId) async {
    try {
      DeviceInfoResponse? deviceResponse = await deviceApiManager.getDeviceInfo(token, deviceId);
      state = state.copyWith(deviceResponse: deviceResponse);
      return deviceResponse;
    } catch (e, stackTrace) {
      AppLog.e("getDeviceInfo Error：$e");
    }
    return null;
  }

  Future<bool> deviceValue(int deviceId, String statisticKey, String value) async {
    try {
      bool deviceResponse = await deviceApiManager.deviceValue(token, deviceId, statisticKey, value);
      ref.read(updateStateProvider.notifier).deviceUpdated();
      return deviceResponse;
    } catch (e, stackTrace) {
      AppLog.e("deviceValue Error：$e");
    }
    return false;
  }

  Future<bool> changeDeviceName(int deviceId, String deviceName) async {
    try {
      bool deviceResponse = await deviceApiManager.changeDeviceName(token, deviceId, deviceName);
      ref.read(updateStateProvider.notifier).deviceUpdated();
      return deviceResponse;
    } catch (e, stackTrace) {
      AppLog.e("changeDeviceName Error：$e");
    }
    return false;
  }

  void sendCmd(String statisticKey, String value) {
    deviceValue(state.deviceId, statisticKey, value).then((isSuccess) {
      ref.read(pageProvider.notifier).showLoading();
      Future.delayed(Duration(seconds: 5), () {
        if (isSuccess) {
          ref.read(updateStateProvider.notifier).deviceUpdated();
          ref.read(pageProvider.notifier).hideLoading();
        }
      });
    });
  }

  Future<bool> deleteDevice(int deviceId) async {
    try {
      bool deviceResponse = await deviceApiManager.deleteDevice(token, deviceId);
      ref.read(updateStateProvider.notifier).deviceUpdated();
      return deviceResponse;
    } catch (e, stackTrace) {
      AppLog.e("deleteDevice Error：$e");
    }
    return false;
  }
}
