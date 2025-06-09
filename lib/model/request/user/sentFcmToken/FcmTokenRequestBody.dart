import 'package:freezed_annotation/freezed_annotation.dart';

part 'FcmTokenRequestBody.freezed.dart';
part 'FcmTokenRequestBody.g.dart';

@freezed
class FcmTokenRequestBody with _$FcmTokenRequestBody {
  const factory FcmTokenRequestBody({
    @JsonKey(name: 'token') required String token,
  }) = _FcmTokenRequestBody;

  factory FcmTokenRequestBody.fromJson(Map<String, dynamic> json) => _$FcmTokenRequestBodyFromJson(json);
}
