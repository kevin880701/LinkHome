import 'package:freezed_annotation/freezed_annotation.dart';

part 'GetMemberDevicesRequestParams.freezed.dart';
part 'GetMemberDevicesRequestParams.g.dart';

@freezed
class GetMemberDevicesRequestParams with _$GetMemberDevicesRequestParams {
  const factory GetMemberDevicesRequestParams({
    @JsonKey(name: 'place_id') required int placeId,
  }) = _GetMemberDevicesRequestParams;

  factory GetMemberDevicesRequestParams.fromJson(Map<String, dynamic> json) => _$GetMemberDevicesRequestParamsFromJson(json);
}
