import 'package:freezed_annotation/freezed_annotation.dart';

part 'GetRegionsRequestParams.freezed.dart';
part 'GetRegionsRequestParams.g.dart';

@freezed
class GetRegionsRequestParams with _$GetRegionsRequestParams {
  const factory GetRegionsRequestParams({
    @JsonKey(name: 'countyname') required String countyName,
  }) = _GetRegionsRequestParams;

  factory GetRegionsRequestParams.fromJson(Map<String, dynamic> json) => _$GetRegionsRequestParamsFromJson(json);
}
