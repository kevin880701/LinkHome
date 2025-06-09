import 'package:freezed_annotation/freezed_annotation.dart';

part 'AddDeviceMemberResponse.freezed.dart';
part 'AddDeviceMemberResponse.g.dart';

@freezed
class AddDeviceMemberResponse with _$AddDeviceMemberResponse {
  const factory AddDeviceMemberResponse({
    @JsonKey(name: 'status') required int status,
    @JsonKey(name: 'data') required String data,
  }) = _AddDeviceMemberResponse;

  factory AddDeviceMemberResponse.fromJson(Map<String, dynamic> json) =>
      _$AddDeviceMemberResponseFromJson(json);
}
