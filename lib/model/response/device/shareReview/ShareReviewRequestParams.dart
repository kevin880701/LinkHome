import 'package:freezed_annotation/freezed_annotation.dart';

part 'ShareReviewRequestParams.freezed.dart';
part 'ShareReviewRequestParams.g.dart';

@freezed
class ShareReviewRequestParams with _$ShareReviewRequestParams {
  const factory ShareReviewRequestParams({
    @JsonKey(name: 'place_id') int? placeId,
    @JsonKey(name: 'device_id') required int deviceId,
    @JsonKey(name: 'accept') required int accept,
  }) = _ShareReviewRequestParams;

  factory ShareReviewRequestParams.fromJson(Map<String, dynamic> json) => _$ShareReviewRequestParamsFromJson(json);
}
