import 'package:freezed_annotation/freezed_annotation.dart';

part 'AppleLoginRequestParams.freezed.dart';
part 'AppleLoginRequestParams.g.dart';

@freezed
class AppleLoginRequestParams with _$AppleLoginRequestParams {
  const factory AppleLoginRequestParams({
    @JsonKey(name: 'code') required String code,
  }) = _AppleLoginRequestParams;

  factory AppleLoginRequestParams.fromJson(Map<String, dynamic> json) => _$AppleLoginRequestParamsFromJson(json);
}
