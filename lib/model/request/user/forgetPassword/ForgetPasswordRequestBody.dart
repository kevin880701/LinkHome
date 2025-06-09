import 'package:freezed_annotation/freezed_annotation.dart';

part 'ForgetPasswordRequestBody.freezed.dart';
part 'ForgetPasswordRequestBody.g.dart';

@freezed
class ForgetPasswordRequestBody with _$ForgetPasswordRequestBody {
  const factory ForgetPasswordRequestBody({
    @JsonKey(name: 'account') required String account,
  }) = _ForgetPasswordRequestBody;

  factory ForgetPasswordRequestBody.fromJson(Map<String, dynamic> json) => _$ForgetPasswordRequestBodyFromJson(json);
}
