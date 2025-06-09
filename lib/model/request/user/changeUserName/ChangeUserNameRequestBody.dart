import 'package:freezed_annotation/freezed_annotation.dart';

part 'ChangeUserNameRequestBody.freezed.dart';
part 'ChangeUserNameRequestBody.g.dart';

@freezed
class ChangeUserNameRequestBody with _$ChangeUserNameRequestBody {
  const factory ChangeUserNameRequestBody({
    required String name,
  }) = _ChangeUserNameRequestBody;

  factory ChangeUserNameRequestBody.fromJson(Map<String, dynamic> json) => _$ChangeUserNameRequestBodyFromJson(json);
}
