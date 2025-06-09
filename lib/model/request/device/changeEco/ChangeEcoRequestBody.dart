import 'package:freezed_annotation/freezed_annotation.dart';

part 'ChangeEcoRequestBody.freezed.dart';
part 'ChangeEcoRequestBody.g.dart';

@freezed
class ChangeEcoRequestBody with _$ChangeEcoRequestBody {
  const factory ChangeEcoRequestBody({
    @JsonKey(name: 'value') required String value,
  }) = _ChangeEcoRequestBody;

  factory ChangeEcoRequestBody.fromJson(Map<String, dynamic> json) => _$ChangeEcoRequestBodyFromJson(json);
}
