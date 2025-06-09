
import 'package:freezed_annotation/freezed_annotation.dart';
part 'DeviceScanRequestParams.freezed.dart';
part 'DeviceScanRequestParams.g.dart';

@freezed
class DeviceScanRequestParams with _$DeviceScanRequestParams {
  const factory DeviceScanRequestParams({
    required String mac,

  }) = _DeviceScanRequestParams;

  factory DeviceScanRequestParams.fromJson(Map<String, dynamic> json) => _$DeviceScanRequestParamsFromJson(json);
}
