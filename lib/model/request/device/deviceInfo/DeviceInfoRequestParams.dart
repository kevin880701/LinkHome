
import 'package:freezed_annotation/freezed_annotation.dart';
part 'DeviceInfoRequestParams.freezed.dart';
part 'DeviceInfoRequestParams.g.dart';

@freezed
class DeviceInfoRequestParams with _$DeviceInfoRequestParams {
  const factory DeviceInfoRequestParams({
    @JsonKey(name: 'device_id') required int deviceId,

  }) = _DeviceInfoRequestParams;

  factory DeviceInfoRequestParams.fromJson(Map<String, dynamic> json) => _$DeviceInfoRequestParamsFromJson(json);
}
