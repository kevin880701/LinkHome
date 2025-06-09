
import 'package:freezed_annotation/freezed_annotation.dart';
part 'DeviceUserPlaceAreaRequestParams.freezed.dart';
part 'DeviceUserPlaceAreaRequestParams.g.dart';

@freezed
class DeviceUserPlaceAreaRequestParams with _$DeviceUserPlaceAreaRequestParams {
  const factory DeviceUserPlaceAreaRequestParams({
    required int area_id,
    required int place_id,

  }) = _DeviceUserPlaceAreaRequestParams;

  factory DeviceUserPlaceAreaRequestParams.fromJson(Map<String, dynamic> json) => _$DeviceUserPlaceAreaRequestParamsFromJson(json);
}
