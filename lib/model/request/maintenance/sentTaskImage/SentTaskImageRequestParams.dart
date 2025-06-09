import 'package:freezed_annotation/freezed_annotation.dart';

part 'SentTaskImageRequestParams.freezed.dart';
part 'SentTaskImageRequestParams.g.dart';

@freezed
class SentTaskImageRequestParams with _$SentTaskImageRequestParams {
  const factory SentTaskImageRequestParams({
    @JsonKey(name: 'm_id') required int mId,
  }) = _SentTaskImageRequestParams;

  factory SentTaskImageRequestParams.fromJson(Map<String, dynamic> json) => _$SentTaskImageRequestParamsFromJson(json);
}
