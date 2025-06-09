import 'package:freezed_annotation/freezed_annotation.dart';

part 'WarrantyRequestParams.freezed.dart';
part 'WarrantyRequestParams.g.dart';

@freezed
class WarrantyRequestParams with _$WarrantyRequestParams {
  const factory WarrantyRequestParams({
    @JsonKey(name: 'device_id') required int deviceId,
  }) = _WarrantyRequestParams;

  factory WarrantyRequestParams.fromJson(Map<String, dynamic> json) =>
      _$WarrantyRequestParamsFromJson(json);
}
