import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:haohsing_flutter/model/response/device/deviceInfo/DeviceInfoResponse.dart';
import 'package:haohsing_flutter/model/response/place/placeList/PlaceListResponse.dart';
import 'package:haohsing_flutter/net/DeviceApiManager.dart';
import 'package:haohsing_flutter/net/PlaceApiManager.dart';
import 'package:haohsing_flutter/provider/PageProvider.dart';
import 'package:haohsing_flutter/provider/UpdateStateProvider.dart';
import 'package:haohsing_flutter/provider/UserProvider.dart';
import 'package:haohsing_flutter/utils/AppLog.dart';

import '../../../../data/DeviceFakerData.dart';
import 'BaseDeviceInfoNotifier.dart';
import 'DeviceInfoProvider.dart';

final fakerDeviceInfoProvider = StateNotifierProvider.autoDispose<FakerDeviceInfoNotifier, DeviceInfoState>((ref) {
  return FakerDeviceInfoNotifier(ref);
});

class FakerDeviceInfoNotifier extends BaseDeviceInfoNotifier {
  FakerDeviceInfoNotifier(this.ref) : super(ref) {
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

  @override
  Future<void> updateDeviceId({required int deviceId}) async {
    state = state.copyWith(deviceId: deviceId);
  }

  @override
  Future<void> updateDeviceInfo({required DeviceInfoResponse deviceInfo}) async {
    state = state.copyWith(deviceResponse: deviceInfo);
  }

  @override
  Future<DeviceInfoResponse?> getDeviceInfo(int deviceId) async {
    try {
      if (token == '@@@user@@@' || token == '@@@engineer@@@') {
        final mockData = mockDeviceInfoById[deviceId];
        if (mockData != null) {
          state = state.copyWith(deviceResponse: mockData);
          return mockData;
        }
      }
      final deviceResponse = await deviceApiManager.getDeviceInfo(token, deviceId);
      state = state.copyWith(deviceResponse: deviceResponse);
      return deviceResponse;
    } catch (e, stackTrace) {
      AppLog.e("faker getDeviceInfo Error：\$e");
    }
    return null;
  }

  @override
  Future<bool> changeDeviceName(int deviceId, String deviceName) async {
    try {
      final isSuccess = await deviceApiManager.changeDeviceName(token, deviceId, deviceName);
      ref.read(updateStateProvider.notifier).deviceUpdated();
      return isSuccess;
    } catch (e) {
      AppLog.e("faker changeDeviceName Error：\$e");
    }
    return false;
  }

  @override
  Future<bool> deleteDevice(int deviceId) async {
    try {
      final isSuccess = await deviceApiManager.deleteDevice(token, deviceId);
      ref.read(updateStateProvider.notifier).deviceUpdated();
      return isSuccess;
    } catch (e) {
      AppLog.e("faker deleteDevice Error：\$e");
    }
    return false;
  }

  @override
  Future<bool> deviceValue(int deviceId, String statisticKey, String value) async {
    try {
      final isSuccess = await deviceApiManager.deviceValue(token, deviceId, statisticKey, value);
      ref.read(updateStateProvider.notifier).deviceUpdated();
      return isSuccess;
    } catch (e) {
      AppLog.e("faker deviceValue Error：\$e");
    }
    return false;
  }

  @override
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
}
