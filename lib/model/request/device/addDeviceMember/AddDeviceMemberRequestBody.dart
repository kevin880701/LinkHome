import 'package:freezed_annotation/freezed_annotation.dart';

part 'AddDeviceMemberRequestBody.freezed.dart';
part 'AddDeviceMemberRequestBody.g.dart';

@freezed
class AddDeviceMemberRequestBody with _$AddDeviceMemberRequestBody {
  const factory AddDeviceMemberRequestBody({
    @JsonKey(name: 'account') required String account,
    @JsonKey(name: 'place_id') required int placeId,
  }) = _AddDeviceMemberRequestBody;

  factory AddDeviceMemberRequestBody.fromJson(Map<String, dynamic> json) => _$AddDeviceMemberRequestBodyFromJson(json);
}
