import 'package:freezed_annotation/freezed_annotation.dart';

part 'DeviceMacExistResponse.freezed.dart';
part 'DeviceMacExistResponse.g.dart';

@freezed
class DeviceMacExistResponse with _$DeviceMacExistResponse {
  const factory DeviceMacExistResponse({
    @JsonKey(name: 'status') required int status,
    @JsonKey(name: 'data') required String data,
  }) = _DeviceMacExistResponse;

  factory DeviceMacExistResponse.fromJson(Map<String, dynamic> json) =>
      _$DeviceMacExistResponseFromJson(json);
}
