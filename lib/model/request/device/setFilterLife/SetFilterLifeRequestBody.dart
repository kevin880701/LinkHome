import 'package:freezed_annotation/freezed_annotation.dart';

part 'SetFilterLifeRequestBody.freezed.dart';
part 'SetFilterLifeRequestBody.g.dart';

@freezed
class SetFilterLifeRequestBody with _$SetFilterLifeRequestBody {
  const factory SetFilterLifeRequestBody({
    @JsonKey(name: 'cl') required String cl,
    @JsonKey(name: 'device_id') required int deviceId,
    @JsonKey(name: 'installation_date') required String installationDate,
    @JsonKey(name: 'life_month') required int lifeMonth,
    @JsonKey(name: 'name') required String name,
  }) = _SetFilterLifeRequestBody;

  factory SetFilterLifeRequestBody.fromJson(Map<String, dynamic> json) => _$SetFilterLifeRequestBodyFromJson(json);
}
