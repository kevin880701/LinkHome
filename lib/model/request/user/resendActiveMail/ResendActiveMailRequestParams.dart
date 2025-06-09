import 'package:freezed_annotation/freezed_annotation.dart';

part 'ResendActiveMailRequestParams.freezed.dart';
part 'ResendActiveMailRequestParams.g.dart';

@freezed
class ResendActiveMailRequestParams with _$ResendActiveMailRequestParams {
  const factory ResendActiveMailRequestParams({
    @JsonKey(name: 'account') required String account,
  }) = _ResendActiveMailRequestParams;

  factory ResendActiveMailRequestParams.fromJson(Map<String, dynamic> json) => _$ResendActiveMailRequestParamsFromJson(json);
}
