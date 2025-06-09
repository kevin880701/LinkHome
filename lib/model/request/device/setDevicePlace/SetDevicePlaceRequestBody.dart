import 'package:freezed_annotation/freezed_annotation.dart';

part 'SetDevicePlaceRequestBody.freezed.dart';
part 'SetDevicePlaceRequestBody.g.dart';

@freezed
class SetDevicePlaceRequestBody with _$SetDevicePlaceRequestBody {
  const factory SetDevicePlaceRequestBody({
    @JsonKey(name: 'area_id') int? areaId,
    @JsonKey(name: 'place_id') int? placeId,
    @JsonKey(name: 'device_id') required int deviceId,
  }) = _SetDevicePlaceRequestBody;

  factory SetDevicePlaceRequestBody.fromJson(Map<String, dynamic> json) => _$SetDevicePlaceRequestBodyFromJson(json);
}
