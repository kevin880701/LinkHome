import 'package:freezed_annotation/freezed_annotation.dart';

part 'GoogleLoginRequestParams.freezed.dart';
part 'GoogleLoginRequestParams.g.dart';

@freezed
class GoogleLoginRequestParams with _$GoogleLoginRequestParams {
  const factory GoogleLoginRequestParams({
    @JsonKey(name: 'id_token') required String idToken,
  }) = _GoogleLoginRequestParams;

  factory GoogleLoginRequestParams.fromJson(Map<String, dynamic> json) => _$GoogleLoginRequestParamsFromJson(json);
}
