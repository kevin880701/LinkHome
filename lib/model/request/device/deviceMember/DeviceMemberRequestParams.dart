import 'package:freezed_annotation/freezed_annotation.dart';

part 'DeviceMemberRequestParams.freezed.dart';
part 'DeviceMemberRequestParams.g.dart';

@freezed
class DeviceMemberRequestParams with _$DeviceMemberRequestParams {
  const factory DeviceMemberRequestParams({
    @JsonKey(name: 'place_id') required int placeId,
  }) = _DeviceMemberRequestParams;

  factory DeviceMemberRequestParams.fromJson(Map<String, dynamic> json) => _$DeviceMemberRequestParamsFromJson(json);
}
