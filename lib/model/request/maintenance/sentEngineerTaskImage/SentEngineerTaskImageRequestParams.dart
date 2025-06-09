import 'package:freezed_annotation/freezed_annotation.dart';

part 'SentEngineerTaskImageRequestParams.freezed.dart';
part 'SentEngineerTaskImageRequestParams.g.dart';

@freezed
class SentEngineerTaskImageRequestParams with _$SentEngineerTaskImageRequestParams {
  const factory SentEngineerTaskImageRequestParams({
    @JsonKey(name: 'm_id') required int mId,
    @JsonKey(name: 'kind') required int kind,
  }) = _SentEngineerTaskImageRequestParams;

  factory SentEngineerTaskImageRequestParams.fromJson(Map<String, dynamic> json) => _$SentEngineerTaskImageRequestParamsFromJson(json);
}
