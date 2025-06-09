import 'package:freezed_annotation/freezed_annotation.dart';

part 'ChangeAreaNameRequestBody.freezed.dart';
part 'ChangeAreaNameRequestBody.g.dart';

@freezed
class ChangeAreaNameRequestBody with _$ChangeAreaNameRequestBody {
  const factory ChangeAreaNameRequestBody({
    @JsonKey(name: 'name') required String name,
    @JsonKey(name: 'area_id') required int areaId,
  }) = _ChangeAreaNameRequestBody;

  factory ChangeAreaNameRequestBody.fromJson(Map<String, dynamic> json) => _$ChangeAreaNameRequestBodyFromJson(json);
}
