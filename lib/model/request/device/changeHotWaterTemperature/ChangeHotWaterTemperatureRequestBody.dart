import 'package:freezed_annotation/freezed_annotation.dart';

part 'ChangeHotWaterTemperatureRequestBody.freezed.dart';
part 'ChangeHotWaterTemperatureRequestBody.g.dart';

@freezed
class ChangeHotWaterTemperatureRequestBody with _$ChangeHotWaterTemperatureRequestBody {
  const factory ChangeHotWaterTemperatureRequestBody({
    @JsonKey(name: 'value') required String value,
  }) = _ChangeHotWaterTemperatureRequestBody;

  factory ChangeHotWaterTemperatureRequestBody.fromJson(Map<String, dynamic> json) => _$ChangeHotWaterTemperatureRequestBodyFromJson(json);
}
