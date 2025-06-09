import 'package:freezed_annotation/freezed_annotation.dart';

part 'DeviceInfoResponse.freezed.dart';

part 'DeviceInfoResponse.g.dart';

@freezed
class DeviceInfoResponse with _$DeviceInfoResponse {
  const factory DeviceInfoResponse({
    @JsonKey(name: 'device_id') required int deviceId,
    @JsonKey(name: 'mac') String? mac,
    @JsonKey(name: 'sn') String? sn,
    @JsonKey(name: 'type') int? type,
    @JsonKey(name: 'name') String? name,
    @JsonKey(name: 'address') String? address,
    @JsonKey(name: 'place_id') int? placeId,
    @JsonKey(name: 'place_name') String? placeName,
    @JsonKey(name: 'area_id') int? areaId,
    @JsonKey(name: 'area_name') String? areaName,
    @JsonKey(name: 'model_id') int? modelId,
    @JsonKey(name: 'model_name') required String modelName,
    @JsonKey(name: 'model_image_url') required String modelImageUrl,
    @JsonKey(name: 'guide_url') String? guideUrl,
    @JsonKey(name: 'vendor_id') required int vendorId,
    @JsonKey(name: 'vendor_name') String? vendorName,
    @JsonKey(name: 'vendor_tel') String? vendorTel,
    @JsonKey(name: 'vendor_address') String? vendorAddress,
    @JsonKey(name: 'customer_id') int? customerId,
    @JsonKey(name: 'customer_name') String? customerName,
    @JsonKey(name: 'customer_address') String? customerAddress,
    @JsonKey(name: 'installation_date') List<int>? installationDate,
    @JsonKey(name: 'online') int? online,
    @JsonKey(name: 'power') int? power,
    @JsonKey(name: 'error') int? error,
    @JsonKey(name: 'maintenance_times') required int maintenanceTimes,
    @JsonKey(name: 'wifi_status') int? wifiStatus,
    @JsonKey(name: 'device_values') required List<DeviceValue> deviceValues,
    @JsonKey(name: 'cls') List<Cl>? cls,
    @JsonKey(name: 'queues') List<Queue>? queues,
    @JsonKey(name: 'area_queues') List<AreaQueue>? areaQueues,
    @JsonKey(name: 'statistics') Statistics? statistics,
    @JsonKey(name: 'engineer_images') required List<EngineerImage> engineerImages,
  }) = _DeviceInfoResponse;

  factory DeviceInfoResponse.fromJson(Map<String, dynamic> json) => _$DeviceInfoResponseFromJson(json);
}

@freezed
class DeviceValue with _$DeviceValue {
  const factory DeviceValue({
    @JsonKey(name: 'code') required String code,
    @JsonKey(name: 'types') required String types,
    @JsonKey(name: 'group1') String? group1,
    @JsonKey(name: 'group2') required String group2,
    @JsonKey(name: 'item') required String item,
    @JsonKey(name: 'value') required String value,
    @JsonKey(name: 'remark') required String remark,
  }) = _DeviceValue;

  factory DeviceValue.fromJson(Map<String, dynamic> json) => _$DeviceValueFromJson(json);
}

@freezed
class Cl with _$Cl {
  const factory Cl({
    @JsonKey(name: 'cl') required String cl,
    @JsonKey(name: 'value') String? value,
    @JsonKey(name: 'cy') int? cy,
    @JsonKey(name: 'date_of_month') int? dateOfMonth,
    @JsonKey(name: 'weeks') String? weeks,
    @JsonKey(name: 'times') String? times,
    @JsonKey(name: 'notice') int? notice,
    @JsonKey(name: 'name') required String name,
    @JsonKey(name: 'installation_date') required String installationDate,
    @JsonKey(name: 'life_month') required int lifeMonth,
    @JsonKey(name: 'life_rate') required int lifeRate,
  }) = _Cl;

  factory Cl.fromJson(Map<String, dynamic> json) => _$ClFromJson(json);
}

@freezed
class Queue with _$Queue {
  const factory Queue({
    @JsonKey(name: 'q_id') required int qId,
    @JsonKey(name: 'device_id') required int deviceId,
    @JsonKey(name: 'name') required String name,
    @JsonKey(name: 'weeks') required String weeks,
    @JsonKey(name: 'open_times') required String openTimes,
    @JsonKey(name: 'sleep_times') required String sleepTimes,
  }) = _Queue;

  factory Queue.fromJson(Map<String, dynamic> json) => _$QueueFromJson(json);
}

@freezed
class AreaQueue with _$AreaQueue {
  const factory AreaQueue({
    @JsonKey(name: 'q_id') required int qId,
    @JsonKey(name: 'area_id') required int areaId,
    @JsonKey(name: 'name') required String name,
    @JsonKey(name: 'weeks') required String weeks,
    @JsonKey(name: 'open_times') required String openTimes,
    @JsonKey(name: 'sleep_times') required String sleepTimes,
    @JsonKey(name: 'added_time') required String addedTime,
  }) = _AreaQueue;

  factory AreaQueue.fromJson(Map<String, dynamic> json) => _$AreaQueueFromJson(json);
}

@freezed
class Statistics with _$Statistics {
  const factory Statistics({
    @JsonKey(name: 'h08') required int h08,
    @JsonKey(name: 'h09') required int h09,
    @JsonKey(name: 'h0a') required int h0a,
    @JsonKey(name: 'h12a') String? h12a,
    @JsonKey(name: 'h00') required int h00,
    @JsonKey(name: 'h03') required int h03,
    @JsonKey(name: 'h04') required int h04,
    @JsonKey(name: 'p01') required int p01,
    @JsonKey(name: 'h01') int? h01,
    @JsonKey(name: 'h05') String? h05,
    @JsonKey(name: 'h07') String? h07,
    @JsonKey(name: 'h25') String? h25,
    @JsonKey(name: 'h25_a') String? h25A,
    @JsonKey(name: 'h24') String? h24,
    @JsonKey(name: 'h00a') required int h00a,
    @JsonKey(name: 'h2e') required int h2e,
    @JsonKey(name: 'h2e_n') String? h2eN,
  }) = _Statistics;

  factory Statistics.fromJson(Map<String, dynamic> json) => _$StatisticsFromJson(json);
}

@freezed
class EngineerImage with _$EngineerImage {
  const factory EngineerImage({
    @JsonKey(name: 'device_id') required int deviceId,
    @JsonKey(name: 'd_e_image_id') required int deImageId,
    @JsonKey(name: 'kind') required int kind,
    @JsonKey(name: 'image_url') required String imageUrl,
  }) = _EngineerImage;

  factory EngineerImage.fromJson(Map<String, dynamic> json) => _$EngineerImageFromJson(json);
}
