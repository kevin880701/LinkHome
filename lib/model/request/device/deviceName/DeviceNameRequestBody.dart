import 'package:freezed_annotation/freezed_annotation.dart';

part 'DeviceNameRequestBody.freezed.dart';
part 'DeviceNameRequestBody.g.dart';

@freezed
class DeviceNameRequestBody with _$DeviceNameRequestBody {
  const factory DeviceNameRequestBody({
    @JsonKey(name: 'device_id') required int deviceId,
    @JsonKey(name: 'name') required String name,
  }) = _DeviceNameRequestBody;

  factory DeviceNameRequestBody.fromJson(Map<String, dynamic> json) => _$DeviceNameRequestBodyFromJson(json);
}
