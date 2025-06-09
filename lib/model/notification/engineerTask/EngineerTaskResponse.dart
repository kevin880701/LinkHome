import 'package:freezed_annotation/freezed_annotation.dart';

part 'EngineerTaskResponse.freezed.dart';
part 'EngineerTaskResponse.g.dart';

@freezed
class EngineerTaskResponse with _$EngineerTaskResponse {
  const factory EngineerTaskResponse({
    @JsonKey(name: 'device_id') required String deviceId,
    @JsonKey(name: 'body') required String body,
    @JsonKey(name: 'title') required String title,
    @JsonKey(name: 'm_id') required String mId,
  }) = _EngineerTaskResponse;

  factory EngineerTaskResponse.fromJson(Map<String, dynamic> json) => _$EngineerTaskResponseFromJson(json);
}
