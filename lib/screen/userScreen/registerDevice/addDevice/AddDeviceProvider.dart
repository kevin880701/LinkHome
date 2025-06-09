import 'dart:io';

import 'package:flutter_riverpod/flutter_riverpod.dart';
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

class AddDeviceState {
  final List<AreaListResponse> areaList;
  final List<PlaceListResponse> placeList;
  final List<DeviceModelResponse> deviceModelList;
  final List<VendorInfoResponse> vendorInfoList;

  AddDeviceState({
    this.areaList = const [],
    this.placeList = const [],
    this.deviceModelList = const [],
    this.vendorInfoList = const [],
  });

  AddDeviceState copyWith({
    List<AreaListResponse>? areaList,
    List<PlaceListResponse>? placeList,
    List<DeviceModelResponse>? deviceModelList,
    List<VendorInfoResponse>? vendorInfoList,
  }) {
    return AddDeviceState(
      areaList: List.unmodifiable(areaList ?? this.areaList),
      placeList: List.unmodifiable(placeList ?? this.placeList),
      deviceModelList: List.unmodifiable(deviceModelList ?? this.deviceModelList),
      vendorInfoList: List.unmodifiable(vendorInfoList ?? this.vendorInfoList),
    );
  }
}

final addDeviceProvider = StateNotifierProvider.autoDispose<AddDeviceNotifier, AddDeviceState>((ref) {
  return AddDeviceNotifier(ref);
});

class AddDeviceNotifier extends StateNotifier<AddDeviceState> {
  AddDeviceNotifier(this.ref) : super(AddDeviceState()) {
    token = ref.read(userProvider).loginResponse?.token ?? "";
    ref.listen<UpdateState>(updateStateProvider, (previous, next) async {
      if (previous?.placeUpdated != next.placeUpdated) {
        await getPlaceList();
      }
    });
    deviceApiManager = DeviceApiManager(ref);
  }

  final Ref ref;
  late String token = "";
  final PlaceApiManager placeApiManager = PlaceApiManager.instance;
  late final DeviceApiManager deviceApiManager;
  final DeviceModelApiManager deviceModelApiManager = DeviceModelApiManager.instance;
  final VendorApiManager vendorApiManager = VendorApiManager.instance;

  Future<List<PlaceListResponse>> getPlaceList() async {
    try {
      List<PlaceListResponse> placeResponse = await placeApiManager.getPlaceList(token) ?? [];
      state = state.copyWith(placeList: placeResponse);
      return placeResponse;
    } catch (e, stackTrace) {
      AppLog.e("place Error：$e");
      return [];
    }
  }

  Future<List<AreaListResponse>> getAreaList(int placeId) async {
    try {
      List<AreaListResponse> areaListResponse = await placeApiManager.getAreaList(token, placeId) ?? [];
      state = state.copyWith(areaList: areaListResponse);
      return areaListResponse;
    } catch (e, stackTrace) {
      AppLog.e("getAreaList Error：$e");
    }
    return [];
  }

  Future<int?> addArea(String placeName, int placeId) async {
    try {
      int? deviceResponse = await placeApiManager.addArea(token, placeName, placeId);
      await ref.read(updateStateProvider.notifier).placeUpdated();
      return deviceResponse;
    } catch (e, stackTrace) {
      AppLog.e("addArea Error：$e");
    }
    return null;
  }

  Future<int?> addPlace(String placeName) async {
    try {
      int? addPlaceResponse = await placeApiManager.addPlace(token, placeName);
      ref.read(updateStateProvider.notifier).placeUpdated();
      return addPlaceResponse;
    } catch (e, stackTrace) {
      AppLog.e("addPlace Error：$e");
    }
    return null;
  }

  Future<bool> changePlaceName(String placeName, int placeId) async {
    try {
      bool changePlaceNameResponse = await placeApiManager.changePlaceName(token, placeName, placeId);
      ref.read(updateStateProvider.notifier).placeUpdated();
      return changePlaceNameResponse;
    } catch (e, stackTrace) {
      AppLog.e("changePlaceName Error：$e");
    }
    return false;
  }

  Future<DeviceRegisterResponse?> deviceRegister(
      {required String sn,
        String? mac,
        required String name,
        required int vendorId,
        required int modelId,
        int? areaId,
        int? placeId,
        required int customerId,
        String? customerAddress,
        String? owner,
        String? warrantyEmail,
        String? warrantyTel,
        required String invDate,
        String? workOrderNumber,
        String? manualBrand,
        List<File> files = const [],}) async {
    try {
      DeviceRegisterResponse? response = await deviceApiManager.deviceRegister(token,
        sn: sn,
        mac: mac,
        name: name,
        placeId: placeId,
        areaId: areaId,
        vendorId: vendorId,
        modelId: modelId,
        customerId: customerId,
        customerAddress: customerAddress,
        owner: owner,
        warrantyEmail: warrantyEmail,
        warrantyTel: warrantyTel,
        invDate: invDate,
        workOrderNumber: workOrderNumber,
        files: files,
        manualBrand: manualBrand,);
      if(response?.status == 0){
        ref.read(updateStateProvider.notifier).deviceUpdated();
        return response;
      }else{
        ref.read(pageProvider.notifier).showError('${response?.data}');
        return null;
      }
    } catch (e, stackTrace) {
      AppLog.e("deviceRegister Error：$e");
    }
    return null;
  }

  Future<List<DeviceModelResponse>> getDeviceModelList() async {
    try {
      final response = await deviceModelApiManager.getDeviceModelList(token);
      state = state.copyWith(deviceModelList: response);
      return response;
    } catch (e, stackTrace) {
      AppLog.e("getDeviceModelList Error：$e");
    }
    return [];
  }

  Future<List<VendorInfoResponse>> getVendorList() async {
    try {
      final response = await vendorApiManager.getVendorList(token);
      state = state.copyWith(vendorInfoList: response);
      return response;
    } catch (e, stackTrace) {
      AppLog.e("getVendorList Error：$e");
    }
    return [];
  }
}
