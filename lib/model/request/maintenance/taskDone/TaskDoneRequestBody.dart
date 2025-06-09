import 'package:freezed_annotation/freezed_annotation.dart';

part 'TaskDoneRequestBody.freezed.dart';
part 'TaskDoneRequestBody.g.dart';

@freezed
class TaskDoneRequestBody with _$TaskDoneRequestBody {
  const factory TaskDoneRequestBody({
    @JsonKey(name: 'error_reason') required String errorReason,
    @JsonKey(name: 'fee') required String fee,
    @JsonKey(name: 'continuance') required int continuance,
    @JsonKey(name: 'm_id') required int mId,
    @JsonKey(name: 'status') required int status,
    @JsonKey(name: 'values') required List<TaskValue> values,
    @JsonKey(name: 'sn') String? sn,
  }) = _TaskDoneRequestBody;

  factory TaskDoneRequestBody.fromJson(Map<String, dynamic> json) => _$TaskDoneRequestBodyFromJson(json);
}

@freezed
class TaskValue with _$TaskValue {
  const factory TaskValue({
    @JsonKey(name: 'code') required String code,
    @JsonKey(name: 'remark') required String remark,
    @JsonKey(name: 'value') required String value,
  }) = _TaskValue;

  factory TaskValue.fromJson(Map<String, dynamic> json) => _$TaskValueFromJson(json);
}
