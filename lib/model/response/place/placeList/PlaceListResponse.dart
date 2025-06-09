import 'package:freezed_annotation/freezed_annotation.dart';

part 'PlaceListResponse.freezed.dart';
part 'PlaceListResponse.g.dart';

@freezed
class PlaceListResponse with _$PlaceListResponse {
  const factory PlaceListResponse({
    @JsonKey(name: 'place_id') required int placeId,
    @JsonKey(name: 'name') required String name,
    @JsonKey(name: 'user_id') required int userId,
  }) = _PlaceListResponse;

  factory PlaceListResponse.fromJson(Map<String, dynamic> json) => _$PlaceListResponseFromJson(json);
}
