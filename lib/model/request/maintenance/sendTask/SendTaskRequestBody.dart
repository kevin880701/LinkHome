import 'package:freezed_annotation/freezed_annotation.dart';

part 'SendTaskRequestBody.freezed.dart';
part 'SendTaskRequestBody.g.dart';

@freezed
class SendTaskRequestBody with _$SendTaskRequestBody {
  const factory SendTaskRequestBody({
    @JsonKey(name: 'description') required String description,
    @JsonKey(name: 'codes') required List<Code> codes,
    @JsonKey(name: 'expected_days_of_week') required String expectedDaysOfWeek,
    @JsonKey(name: 'expected_time_of_week') required String expectedTimeOfWeek,
    @JsonKey(name: 'm_id') required int mId,
    @JsonKey(name: 'name') required String name,
    @JsonKey(name: 'tel') required String tel,
    @JsonKey(name: 'type') required int type,
    @JsonKey(name: 'sn') required String sn,
  }) = _SendTaskRequestBody;

  factory SendTaskRequestBody.fromJson(Map<String, dynamic> json) => _$SendTaskRequestBodyFromJson(json);
}

@freezed
class Code with _$Code {
  const factory Code({
    @JsonKey(name: 'code') required String code,
    @JsonKey(name: 'remark') required String remark,
    @JsonKey(name: 'value') required String value,
  }) = _Code;

  factory Code.fromJson(Map<String, dynamic> json) => _$CodeFromJson(json);
}
