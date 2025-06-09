import 'package:freezed_annotation/freezed_annotation.dart';

part 'DeletePlaceRequestParams.freezed.dart';
part 'DeletePlaceRequestParams.g.dart';

@freezed
class DeletePlaceRequestParams with _$DeletePlaceRequestParams {
  const factory DeletePlaceRequestParams({
    @JsonKey(name: 'place_id') required int placeId,
  }) = _DeletePlaceRequestParams;

  factory DeletePlaceRequestParams.fromJson(Map<String, dynamic> json) => _$DeletePlaceRequestParamsFromJson(json);
}
