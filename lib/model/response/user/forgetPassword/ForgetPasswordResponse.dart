import 'package:freezed_annotation/freezed_annotation.dart';

part 'ForgetPasswordResponse.freezed.dart';
part 'ForgetPasswordResponse.g.dart';

@freezed
class ForgetPasswordResponse with _$ForgetPasswordResponse {
  const factory ForgetPasswordResponse({
    @JsonKey(name: 'result') required int result,
  }) = _ForgetPasswordResponse;

  factory ForgetPasswordResponse.fromJson(Map<String, dynamic> json) => _$ForgetPasswordResponseFromJson(json);
}
