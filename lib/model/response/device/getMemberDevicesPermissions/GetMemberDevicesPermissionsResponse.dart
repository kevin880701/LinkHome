import 'package:freezed_annotation/freezed_annotation.dart';

part 'GetMemberDevicesPermissionsResponse.freezed.dart';
part 'GetMemberDevicesPermissionsResponse.g.dart';

@freezed
class GetMemberDevicesPermissionsResponse with _$GetMemberDevicesPermissionsResponse {
  const factory GetMemberDevicesPermissionsResponse({
    @JsonKey(name: 'device_id') required int deviceId,
    @JsonKey(name: 'place_id') required int placeId,
    @JsonKey(name: 'area_id') required int areaId,
    @JsonKey(name: 'name') required String name,
    @JsonKey(name: 'type') int? type,
    @JsonKey(name: 'area_name') String? areaName,
  }) = _GetMemberDevicesPermissionsResponse;

  factory GetMemberDevicesPermissionsResponse.fromJson(Map<String, dynamic> json) => _$GetMemberDevicesPermissionsResponseFromJson(json);
}
