import 'package:freezed_annotation/freezed_annotation.dart';

part 'DeviceMemberResponse.freezed.dart';
part 'DeviceMemberResponse.g.dart';

@freezed
class DeviceMemberResponse with _$DeviceMemberResponse {
  const factory DeviceMemberResponse({
    @JsonKey(name: 'user_id') required int userId,
    @JsonKey(name: 'name') String? name,
    @JsonKey(name: 'account') required String account,
    @JsonKey(name: 'device_num') required int deviceNum,
    @JsonKey(name: 'invite') required bool invite,
  }) = _DeviceMemberResponse;

  factory DeviceMemberResponse.fromJson(Map<String, dynamic> json) => _$DeviceMemberResponseFromJson(json);
}
