import 'dart:io';

import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:haohsing_flutter/model/response/device/deviceMacExist/DeviceMacExistResponse.dart';
import 'package:haohsing_flutter/model/response/device/deviceRegister/DeviceRegisterResponse.dart';
import 'package:haohsing_flutter/model/response/deviceModel/DeviceModelResponse.dart';
import 'package:haohsing_flutter/model/response/vendor/VendorInfoResponse.dart';
import 'package:haohsing_flutter/net/DeviceModelApiManager.dart';
import 'package:haohsing_flutter/net/VendorApiManager.dart';
import 'package:haohsing_flutter/provider/PageProvider.dart';
import 'package:haohsing_flutter/utils/AppLog.dart';
import '../../../../model/response/place/areaList/AreaListResponse.dart';
import '../../../../model/response/place/placeList/PlaceListResponse.dart';
import '../../../../net/DeviceApiManager.dart';
import '../../../../net/PlaceApiManager.dart';
import '../../../../provider/UpdateStateProvider.dart';
import '../../../../provider/UserProvider.dart';

class ScanQrState {
  ScanQrState();
}

final scanQrProvider = StateNotifierProvider.autoDispose<ScanQrNotifier, ScanQrState>((ref) {
  return ScanQrNotifier(ref);
});

class ScanQrNotifier extends StateNotifier<ScanQrState> {
  ScanQrNotifier(this.ref) : super(ScanQrState()) {
    token = ref.read(userProvider).loginResponse?.token ?? "";
    deviceApiManager = DeviceApiManager(ref);
  }

  final Ref ref;
  late String token = "";
  final PlaceApiManager placeApiManager = PlaceApiManager.instance;
  late final DeviceApiManager deviceApiManager;
  final VendorApiManager vendorApiManager = VendorApiManager.instance;

  Future<DeviceMacExistResponse?> isMacExist({required String mac}) async {
    try {
      DeviceMacExistResponse? response = await deviceApiManager.isMacExist(token, mac: mac);
      return response;
    } catch (e, stackTrace) {
      AppLog.e("isMacExist Error：$e");
      return null;
    }
  }
}
