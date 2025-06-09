import 'package:freezed_annotation/freezed_annotation.dart';

part 'AddAreaRequestBody.freezed.dart';
part 'AddAreaRequestBody.g.dart';

@freezed
class AddAreaRequestBody with _$AddAreaRequestBody {
  const factory AddAreaRequestBody({
    @JsonKey(name: 'name') required String name,
    @JsonKey(name: 'place_id') required int placeId,
  }) = _AddAreaRequestBody;

  factory AddAreaRequestBody.fromJson(Map<String, dynamic> json) => _$AddAreaRequestBodyFromJson(json);
}
