import 'package:freezed_annotation/freezed_annotation.dart';

part 'GetRegionsResponse.freezed.dart';
part 'GetRegionsResponse.g.dart';

@freezed
class GetRegionsResponse with _$GetRegionsResponse {
  const factory GetRegionsResponse({
    @JsonKey(name: 'regions') required List<String> regions,
  }) = _GetRegionsResponse;

  factory GetRegionsResponse.fromJson(Map<String, dynamic> json) => _$GetRegionsResponseFromJson(json);
}
