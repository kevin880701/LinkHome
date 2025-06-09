import 'package:freezed_annotation/freezed_annotation.dart';

part 'PlaceRequestParams.freezed.dart';
part 'PlaceRequestParams.g.dart';

@freezed
class PlaceRequestParams with _$PlaceRequestParams {
  const factory PlaceRequestParams({
    @JsonKey(name: 'place_id') required int placeId,
    @JsonKey(name: 'area_id') required int areaId,
  }) = _PlaceRequestParams;

  factory PlaceRequestParams.fromJson(Map<String, dynamic> json) => _$PlaceRequestParamsFromJson(json);
}
