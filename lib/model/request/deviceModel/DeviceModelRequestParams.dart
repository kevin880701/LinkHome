import 'package:freezed_annotation/freezed_annotation.dart';

part 'DeviceModelRequestParams.freezed.dart';
part 'DeviceModelRequestParams.g.dart';

@freezed
class DeviceModelRequestParams with _$DeviceModelRequestParams {
  const factory DeviceModelRequestParams({
    @JsonKey(name: 'vendor_id') required int vendorId,
  }) = _DeviceModelRequestParams;

  factory DeviceModelRequestParams.fromJson(Map<String, dynamic> json) => _$DeviceModelRequestParamsFromJson(json);
}
