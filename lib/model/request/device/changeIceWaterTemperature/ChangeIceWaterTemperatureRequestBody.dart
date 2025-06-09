import 'package:freezed_annotation/freezed_annotation.dart';

part 'ChangeIceWaterTemperatureRequestBody.freezed.dart';
part 'ChangeIceWaterTemperatureRequestBody.g.dart';

@freezed
class ChangeIceWaterTemperatureRequestBody with _$ChangeIceWaterTemperatureRequestBody {
  const factory ChangeIceWaterTemperatureRequestBody({
    @JsonKey(name: 'value') required String value,
  }) = _ChangeIceWaterTemperatureRequestBody;

  factory ChangeIceWaterTemperatureRequestBody.fromJson(Map<String, dynamic> json) => _$ChangeIceWaterTemperatureRequestBodyFromJson(json);
}
