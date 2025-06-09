import 'package:freezed_annotation/freezed_annotation.dart';

part 'GetCitiesResponse.freezed.dart';
part 'GetCitiesResponse.g.dart';

@freezed
class GetCitiesResponse with _$GetCitiesResponse {
  const factory GetCitiesResponse({
    @JsonKey(name: 'cities') required List<String> cities,
  }) = _GetCitiesResponse;

  factory GetCitiesResponse.fromJson(Map<String, dynamic> json) => _$GetCitiesResponseFromJson(json);
}
