import 'package:freezed_annotation/freezed_annotation.dart';

part 'GetTaskRecordRequestParams.freezed.dart';
part 'GetTaskRecordRequestParams.g.dart';

@freezed
class GetTaskRecordRequestParams with _$GetTaskRecordRequestParams {
  const factory GetTaskRecordRequestParams({
    @JsonKey(name: 'period') required int period,
  }) = _GetTaskRecordRequestParams;

  factory GetTaskRecordRequestParams.fromJson(Map<String, dynamic> json) => _$GetTaskRecordRequestParamsFromJson(json);
}
