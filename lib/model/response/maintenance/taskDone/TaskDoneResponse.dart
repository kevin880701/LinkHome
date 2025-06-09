import 'package:freezed_annotation/freezed_annotation.dart';

part 'TaskDoneResponse.freezed.dart';
part 'TaskDoneResponse.g.dart';

@freezed
class TaskDoneResponse with _$TaskDoneResponse {
  const factory TaskDoneResponse({
    @JsonKey(name: 'status') required int status,
    @JsonKey(name: 'data') required String data,
  }) = _TaskDoneResponse;

  factory TaskDoneResponse.fromJson(Map<String, dynamic> json) =>
      _$TaskDoneResponseFromJson(json);
}
