import 'dart:io';

import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:haohsing_flutter/model/response/device/getVendorInfo/GetVendorInfoResponse.dart';
import 'package:haohsing_flutter/model/response/device/updateWarranty/UpdateWarrantyResponse.dart';
import 'package:haohsing_flutter/model/response/device/warranty/WarrantyResponse.dart';
import 'package:haohsing_flutter/net/DeviceApiManager.dart';
import 'package:haohsing_flutter/provider/UpdateStateProvider.dart';
import 'package:haohsing_flutter/provider/UserProvider.dart';
import 'package:haohsing_flutter/utils/AppLog.dart';

class WarrantyInformationState {
  final WarrantyResponse? warrantyResponse;

  WarrantyInformationState({
    this.warrantyResponse,
  });

  WarrantyInformationState copyWith({
    WarrantyResponse? warrantyResponse,
  }) {
    return WarrantyInformationState(
      warrantyResponse: warrantyResponse ?? this.warrantyResponse,
    );
  }
}

final warrantyInformationProvider = StateNotifierProvider.autoDispose<WarrantyInformationNotifier,
    WarrantyInformationState>(
        (ref) {
  return WarrantyInformationNotifier(ref);
});

class WarrantyInformationNotifier extends StateNotifier<WarrantyInformationState> {
  WarrantyInformationNotifier(this.ref) : super(WarrantyInformationState()) {
    token = ref.read(userProvider).loginResponse?.token ?? "";
    ref.listen<UpdateState>(updateStateProvider, (previous, next) {
      if ((previous?.placeUpdated != next.placeUpdated)) {
      }
    });
    deviceApiManager = DeviceApiManager(ref);
  }

  final Ref ref;
  late String token = "";
  late final DeviceApiManager deviceApiManager;

  Future<WarrantyResponse?> getWarranty({required int deviceId}) async {
    try {
      final response = await deviceApiManager.getWarranty(token, deviceId: deviceId);
      state = state.copyWith(warrantyResponse: response);
      return response;
    } catch (e, stackTrace) {
      AppLog.e("getWarranty Error：$e");
    }
    return null;
  }

  Future<UpdateWarrantyResponse?> updateWarranty({
    required int deviceId,
    required String owner,
    required String warrantyEmail,
    required String warrantyTel,
    required String invDate,
    required String workOrderNumber,
    required String deviceImages,
    List<File> files = const [],
  }) async {
    try {
      final response = await deviceApiManager.updateWarranty(token,
        deviceId: deviceId,
        owner: owner,
        warrantyEmail: warrantyEmail,
        warrantyTel: warrantyTel,
        invDate: invDate,
        workOrderNumber: workOrderNumber,
        deviceImages: deviceImages,
        files: files,);
      await getWarranty(deviceId: deviceId);
      return response;
    } catch (e, stackTrace) {
      AppLog.e("updateWarranty Error：$e");
    }
    return null;
  }
}
