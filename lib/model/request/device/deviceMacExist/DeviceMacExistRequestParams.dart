import 'package:freezed_annotation/freezed_annotation.dart';

part 'DeviceMacExistRequestParams.freezed.dart';
part 'DeviceMacExistRequestParams.g.dart';

@freezed
class DeviceMacExistRequestParams with _$DeviceMacExistRequestParams {
  const factory DeviceMacExistRequestParams({
    @JsonKey(name: 'mac') required String mac,
  }) = _DeviceMacExistRequestParams;

  factory DeviceMacExistRequestParams.fromJson(Map<String, dynamic> json) =>
      _$DeviceMacExistRequestParamsFromJson(json);
}
