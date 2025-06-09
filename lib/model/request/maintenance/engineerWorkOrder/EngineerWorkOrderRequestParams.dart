import 'package:freezed_annotation/freezed_annotation.dart';

part 'EngineerWorkOrderRequestParams.freezed.dart';
part 'EngineerWorkOrderRequestParams.g.dart';

@freezed
class EngineerWorkOrderRequestParams with _$EngineerWorkOrderRequestParams {
  const factory EngineerWorkOrderRequestParams({
    @JsonKey(name: 'year') required int year,
    @JsonKey(name: 'month') required int month,
    @JsonKey(name: 'day') int? day,
  }) = _EngineerWorkOrderRequestParams;

  factory EngineerWorkOrderRequestParams.fromJson(Map<String, dynamic> json) => _$EngineerWorkOrderRequestParamsFromJson(json);
}
