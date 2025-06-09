import 'package:freezed_annotation/freezed_annotation.dart';

part 'GetMemberDevicesResponse.freezed.dart';
part 'GetMemberDevicesResponse.g.dart';

@freezed
class GetMemberDevicesResponse with _$GetMemberDevicesResponse {
  const factory GetMemberDevicesResponse({
    @JsonKey(name: 'device_id') required int deviceId,
    @JsonKey(name: 'mac') String? mac,
    @JsonKey(name: 'type') required int type,
    @JsonKey(name: 'name') required String name,
    @JsonKey(name: 'place_id') required int placeId,
    @JsonKey(name: 'place_name') required String placeName,
    @JsonKey(name: 'area_id') int? areaId,
    @JsonKey(name: 'area_name') String? areaName,
    @JsonKey(name: 'model_id') int? modelId,
    @JsonKey(name: 'model_name') required String modelName,
    @JsonKey(name: 'model_image_url') required String modelImageUrl,
    @JsonKey(name: 'online') int? online,
    @JsonKey(name: 'power') int? power,
    @JsonKey(name: 'error') int? error,
    @JsonKey(name: 'installation_date') String? installationDate,
  }) = _GetMemberDevicesResponse;

  factory GetMemberDevicesResponse.fromJson(Map<String, dynamic> json) => _$GetMemberDevicesResponseFromJson(json);
}
