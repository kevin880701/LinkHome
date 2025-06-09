import 'package:freezed_annotation/freezed_annotation.dart';

part 'DeleteDeviceMemberRequestParams.freezed.dart';
part 'DeleteDeviceMemberRequestParams.g.dart';

@freezed
class DeleteDeviceMemberRequestParams with _$DeleteDeviceMemberRequestParams {
  const factory DeleteDeviceMemberRequestParams({
    @JsonKey(name: 'place_id') required int placeId,
    @JsonKey(name: 'user_id') required int userId,
  }) = _DeleteDeviceMemberRequestParams;

  factory DeleteDeviceMemberRequestParams.fromJson(Map<String, dynamic> json) => _$DeleteDeviceMemberRequestParamsFromJson(json);
}
