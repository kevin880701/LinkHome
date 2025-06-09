import 'package:freezed_annotation/freezed_annotation.dart';

part 'ReheatSettingsRequestBody.freezed.dart';
part 'ReheatSettingsRequestBody.g.dart';

@freezed
class ReheatSettingsRequestBody with _$ReheatSettingsRequestBody {
  const factory ReheatSettingsRequestBody({
    @JsonKey(name: 'value') required String value,
  }) = _ReheatSettingsRequestBody;

  factory ReheatSettingsRequestBody.fromJson(Map<String, dynamic> json) => _$ReheatSettingsRequestBodyFromJson(json);
}
