import 'package:freezed_annotation/freezed_annotation.dart';

part 'ResendActiveMailResponse.freezed.dart';
part 'ResendActiveMailResponse.g.dart';

@freezed
class ResendActiveMailResponse with _$ResendActiveMailResponse {
  const factory ResendActiveMailResponse({
    @JsonKey(name: 'result') required int result,
  }) = _ResendActiveMailResponse;

  factory ResendActiveMailResponse.fromJson(Map<String, dynamic> json) => _$ResendActiveMailResponseFromJson(json);
}
