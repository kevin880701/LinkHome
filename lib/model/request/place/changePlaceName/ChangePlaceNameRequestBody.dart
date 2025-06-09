import 'package:freezed_annotation/freezed_annotation.dart';

part 'ChangePlaceNameRequestBody.freezed.dart';
part 'ChangePlaceNameRequestBody.g.dart';

@freezed
class ChangePlaceNameRequestBody with _$ChangePlaceNameRequestBody {
  const factory ChangePlaceNameRequestBody({
    @JsonKey(name: 'name') required String name,
    @JsonKey(name: 'place_id') required int placeId,
  }) = _ChangePlaceNameRequestBody;

  factory ChangePlaceNameRequestBody.fromJson(Map<String, dynamic> json) => _$ChangePlaceNameRequestBodyFromJson(json);
}
