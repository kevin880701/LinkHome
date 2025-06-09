import 'package:freezed_annotation/freezed_annotation.dart';

part 'DeleteAreaRequestParams.freezed.dart';
part 'DeleteAreaRequestParams.g.dart';

@freezed
class DeleteAreaRequestParams with _$DeleteAreaRequestParams {
  const factory DeleteAreaRequestParams({
    @JsonKey(name: 'area_id') required int areaId,
  }) = _DeleteAreaRequestParams;

  factory DeleteAreaRequestParams.fromJson(Map<String, dynamic> json) => _$DeleteAreaRequestParamsFromJson(json);
}
