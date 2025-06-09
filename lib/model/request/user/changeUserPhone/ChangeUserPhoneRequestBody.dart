import 'package:freezed_annotation/freezed_annotation.dart';

part 'ChangeUserPhoneRequestBody.freezed.dart';
part 'ChangeUserPhoneRequestBody.g.dart';

@freezed
class ChangeUserPhoneRequestBody with _$ChangeUserPhoneRequestBody {
  const factory ChangeUserPhoneRequestBody({
    required String tel,
  }) = _ChangeUserPhoneRequestBody;

  factory ChangeUserPhoneRequestBody.fromJson(Map<String, dynamic> json) => _$ChangeUserPhoneRequestBodyFromJson(json);
}
