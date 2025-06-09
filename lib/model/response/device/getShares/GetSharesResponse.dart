import 'package:freezed_annotation/freezed_annotation.dart';

part 'GetSharesResponse.freezed.dart';
part 'GetSharesResponse.g.dart';

@freezed
class GetSharesResponse with _$GetSharesResponse {
  const factory GetSharesResponse({
    @JsonKey(name: 'owner') String? owner,
    @JsonKey(name: 'place_id') int? placeId,
    @JsonKey(name: 'place_name') String? placeName,
    @JsonKey(name: 'device_id') required int deviceId,
    @JsonKey(name: 'names') required String names,
  }) = _GetSharesResponse;

  factory GetSharesResponse.fromJson(Map<String, dynamic> json) => _$GetSharesResponseFromJson(json);
}
