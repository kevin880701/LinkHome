import 'package:freezed_annotation/freezed_annotation.dart';

part 'DeviceRegisterResponse.freezed.dart';
part 'DeviceRegisterResponse.g.dart';

@freezed
class DeviceRegisterResponse with _$DeviceRegisterResponse {
  const factory DeviceRegisterResponse({
    @JsonKey(name: 'status') required int status,
    @JsonKey(name: 'data') required String data,
  }) = _DeviceRegisterResponse;

  factory DeviceRegisterResponse.fromJson(Map<String, dynamic> json) =>
      _$DeviceRegisterResponseFromJson(json);
}
