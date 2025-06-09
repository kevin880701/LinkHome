import 'package:freezed_annotation/freezed_annotation.dart';

part 'Error500Response.freezed.dart';
part 'Error500Response.g.dart';

@freezed
class Error500Response with _$Error500Response {
  const factory Error500Response({
    @JsonKey(name: 'status') required String status,
    @JsonKey(name: 'msg') required String message,
    @JsonKey(name: 'errorMsg') required String errorMessage,
  }) = _Error500Response;

  factory Error500Response.fromJson(Map<String, dynamic> json) =>
      _$Error500ResponseFromJson(json);
}
