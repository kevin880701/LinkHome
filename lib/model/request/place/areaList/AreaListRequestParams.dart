import 'package:freezed_annotation/freezed_annotation.dart';

part 'AreaListRequestParams.freezed.dart';
part 'AreaListRequestParams.g.dart';

@freezed
class AreaListRequestParams with _$AreaListRequestParams {
  const factory AreaListRequestParams({
    @JsonKey(name: 'place_id') required int placeId,
  }) = _AreaListRequestParams;

  factory AreaListRequestParams.fromJson(Map<String, dynamic> json) => _$AreaListRequestParamsFromJson(json);
}
