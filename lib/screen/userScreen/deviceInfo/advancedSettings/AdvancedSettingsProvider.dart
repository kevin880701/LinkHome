import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:haohsing_flutter/model/response/device/deviceInfo/DeviceInfoResponse.dart';
import 'package:haohsing_flutter/net/DeviceApiManager.dart';
import 'package:haohsing_flutter/net/PlaceApiManager.dart';
import 'package:haohsing_flutter/provider/PageProvider.dart';
import 'package:haohsing_flutter/provider/UpdateStateProvider.dart';
import 'package:haohsing_flutter/provider/UserProvider.dart';
import 'package:haohsing_flutter/utils/AppLog.dart';

enum DeviceAction {
  changeIceWaterTemperature,
  changeHotWaterTemperature,
  changeEco,
  reheat,
}

class AdvancedSettingsState {
  final int deviceId;
  final DeviceInfoResponse? deviceInfo;
  final List<String> iceTemperatureList;
  final List<String> hotTemperatureList;


  AdvancedSettingsState({
    this.deviceId = -1,
    this.deviceInfo,
    this.iceTemperatureList = const [],
    this.hotTemperatureList = const [],
  });

  AdvancedSettingsState copyWith({
    int? deviceId,
    DeviceInfoResponse? deviceResponse,
    List<String>? iceTemperatureList,
    List<String>? hotTemperatureList,
  }) {
    return AdvancedSettingsState(
      deviceId: deviceId ?? this.deviceId,
      deviceInfo: deviceResponse ?? this.deviceInfo,
      iceTemperatureList: List.unmodifiable(iceTemperatureList ?? this.iceTemperatureList),
      hotTemperatureList: List.unmodifiable(hotTemperatureList ?? this.hotTemperatureList),
    );
  }
}

final advancedSettingsProvider =
    StateNotifierProvider.autoDispose<AdvancedSettingsNotifier, AdvancedSettingsState>((ref) {
  return AdvancedSettingsNotifier(ref);
});

class AdvancedSettingsNotifier extends StateNotifier<AdvancedSettingsState> {
  AdvancedSettingsNotifier(this.ref) : super(AdvancedSettingsState()) {
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

  Future<void> updateDeviceId({required int deviceId}) async {
    state = state.copyWith(deviceId: deviceId);
  }

  Future<void> updateDeviceInfo({required DeviceInfoResponse? deviceInfo}) async {
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

  Future<bool> changeDeviceSetting({
    required DeviceAction action,
    required int deviceId,
    required String value
  }) async {
    try {
      ref.read(pageProvider.notifier).showLoading();
      bool response = false;

      switch (action) {
        case DeviceAction.changeIceWaterTemperature:
          response = await deviceApiManager.changeIceWaterTemperature(token, deviceId, value);
          break;
        case DeviceAction.changeHotWaterTemperature:
          response = await deviceApiManager.changeHotWaterTemperature(token, deviceId, value);
          break;
        case DeviceAction.changeEco:
          response = await deviceApiManager.changeEco(token, deviceId, value);
          break;
        case DeviceAction.reheat:
          response = await deviceApiManager.reheatSettings(token, deviceId, value);
          break;
      }

      await Future.delayed(const Duration(seconds: 5));
      ref.read(updateStateProvider.notifier).deviceUpdated();

      return response;
    } catch (e, stackTrace) {
      AppLog.e("changeDeviceSetting Error：$e");
    } finally {
      ref.read(pageProvider.notifier).hideLoading();
    }

    return false;
  }

  Future<List<String>> getIceTemperatureList() async {
    try {
      List<String> response = await deviceApiManager.getIceTemperatureList(token);
      state = state.copyWith(iceTemperatureList: response);
      return response;
    } catch (e, stackTrace) {
      AppLog.e("getIceTemperatureList Error：$e");
    }
    return [];
  }

  Future<List<String>> getHotTemperatureList() async {
    try {
      List<String> response = await deviceApiManager.getHotTemperatureList(token);
      state = state.copyWith(hotTemperatureList: response);
      return response;
    } catch (e, stackTrace) {
      AppLog.e("getHotTemperatureList Error：$e");
    }
    return [];
  }
}
