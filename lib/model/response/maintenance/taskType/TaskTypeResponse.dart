import 'package:freezed_annotation/freezed_annotation.dart';

part 'TaskTypeResponse.freezed.dart';
part 'TaskTypeResponse.g.dart';

@freezed
class TaskTypeResponse with _$TaskTypeResponse {
  const factory TaskTypeResponse({
    @JsonKey(name: 'id') required int id,
    @JsonKey(name: 'name') required String name,
  }) = _TaskTypeResponse;

  factory TaskTypeResponse.fromJson(Map<String, dynamic> json) => _$TaskTypeResponseFromJson(json);
}
