import 'package:freezed_annotation/freezed_annotation.dart';

part 'UserAddRequestBody.freezed.dart';
part 'UserAddRequestBody.g.dart';

@freezed
class UserAddRequestBody with _$UserAddRequestBody {
  const factory UserAddRequestBody({
    @JsonKey(name: 'account') required String account,
    @JsonKey(name: 'secret') required String secret,
  }) = _UserAddRequestBody;

  factory UserAddRequestBody.fromJson(Map<String, dynamic> json) => _$UserAddRequestBodyFromJson(json);
}
