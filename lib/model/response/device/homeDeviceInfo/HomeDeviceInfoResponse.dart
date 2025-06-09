import 'package:freezed_annotation/freezed_annotation.dart';

part 'HomeDeviceInfoResponse.freezed.dart';
part 'HomeDeviceInfoResponse.g.dart';

@freezed
class HomeDeviceInfoResponse with _$HomeDeviceInfoResponse {
  const factory HomeDeviceInfoResponse({
    @JsonKey(name: 'device_id') required int deviceId,
    @JsonKey(name: 'mac') String? mac,
    @JsonKey(name: 'type') required int type,
    @JsonKey(name: 'name') required String name,
    @JsonKey(name: 'place_id') int? placeId,
    @JsonKey(name: 'place_name') String? placeName,
    @JsonKey(name: 'area_id') int? areaId,
    @JsonKey(name: 'area_name') String? areaName,
    @JsonKey(name: 'model_id') int? modelId,
    @JsonKey(name: 'model_name') String? modelName,
    @JsonKey(name: 'model_image_url') required String modelImageUrl,
    @JsonKey(name: 'online') int? online,
    @JsonKey(name: 'power') int? power,
    @JsonKey(name: 'error') int? error,
    @JsonKey(name: 'installation_date') String? installationDate,
  }) = _HomeDeviceInfoResponse;

  factory HomeDeviceInfoResponse.fromJson(Map<String, dynamic> json) => _$HomeDeviceInfoResponseFromJson(json);
}
