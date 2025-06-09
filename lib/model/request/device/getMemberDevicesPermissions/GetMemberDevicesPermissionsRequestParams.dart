import 'package:freezed_annotation/freezed_annotation.dart';

part 'GetMemberDevicesPermissionsRequestParams.freezed.dart';
part 'GetMemberDevicesPermissionsRequestParams.g.dart';

@freezed
class GetMemberDevicesPermissionsRequestParams with _$GetMemberDevicesPermissionsRequestParams {
  const factory GetMemberDevicesPermissionsRequestParams({
    @JsonKey(name: 'place_id') required int placeId,
    @JsonKey(name: 'user_id') required int userId,
  }) = _GetMemberDevicesPermissionsRequestParams;

  factory GetMemberDevicesPermissionsRequestParams.fromJson(Map<String, dynamic> json) => _$GetMemberDevicesPermissionsRequestParamsFromJson(json);
}
