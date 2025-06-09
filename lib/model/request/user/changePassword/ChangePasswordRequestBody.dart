import 'package:freezed_annotation/freezed_annotation.dart';

part 'ChangePasswordRequestBody.freezed.dart';
part 'ChangePasswordRequestBody.g.dart';

@freezed
class ChangePasswordRequestBody with _$ChangePasswordRequestBody {
  const factory ChangePasswordRequestBody({
    required String newPassword,
    required String password,
  }) = _ChangePasswordRequestBody;

  factory ChangePasswordRequestBody.fromJson(Map<String, dynamic> json) => _$ChangePasswordRequestBodyFromJson(json);
}
