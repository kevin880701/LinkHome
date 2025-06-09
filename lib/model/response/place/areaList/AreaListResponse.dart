import 'package:freezed_annotation/freezed_annotation.dart';

part 'AreaListResponse.freezed.dart';
part 'AreaListResponse.g.dart';

@freezed
class AreaListResponse with _$AreaListResponse {
  const factory AreaListResponse({
    @JsonKey(name: 'area_id') required int areaId,
    @JsonKey(name: 'name') required String name,
    @JsonKey(name: 'place_id') required int placeId,
  }) = _AreaListResponse;

  factory AreaListResponse.fromJson(Map<String, dynamic> json) => _$AreaListResponseFromJson(json);
}