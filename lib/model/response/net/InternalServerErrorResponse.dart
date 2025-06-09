import 'package:freezed_annotation/freezed_annotation.dart';

part 'InternalServerErrorResponse.freezed.dart';
part 'InternalServerErrorResponse.g.dart';

@freezed
class InternalServerErrorResponse with _$InternalServerErrorResponse {
  const factory InternalServerErrorResponse({
    @JsonKey(name: 'status') required String status,
    @JsonKey(name: 'msg') required String message,
    @JsonKey(name: 'errorMsg') required String errorMessage,
  }) = _InternalServerErrorResponse;

  factory InternalServerErrorResponse.fromJson(Map<String, dynamic> json) =>
      _$InternalServerErrorResponseFromJson(json);
}
