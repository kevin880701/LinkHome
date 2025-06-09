import 'package:freezed_annotation/freezed_annotation.dart';

part 'PlaceDtlsResponse.freezed.dart';
part 'PlaceDtlsResponse.g.dart';

@freezed
class PlaceDtlsResponse with _$PlaceDtlsResponse {
  const factory PlaceDtlsResponse({
    @JsonKey(name: 'place_id') required int placeId,
    @JsonKey(name: 'name') required String name,
    @JsonKey(name: 'user_id') required int userId,
    @JsonKey(name: 'area_count') required int areaCount,
    @JsonKey(name: 'share_count') required int shareCount,
  }) = _PlaceDtlsResponse;

  factory PlaceDtlsResponse.fromJson(Map<String, dynamic> json) => _$PlaceDtlsResponseFromJson(json);
}
