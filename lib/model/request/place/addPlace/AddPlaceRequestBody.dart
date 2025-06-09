import 'package:freezed_annotation/freezed_annotation.dart';

part 'AddPlaceRequestBody.freezed.dart';
part 'AddPlaceRequestBody.g.dart';

@freezed
class AddPlaceRequestBody with _$AddPlaceRequestBody {
  const factory AddPlaceRequestBody({
    required String name,
  }) = _AddPlaceRequestBody;

  factory AddPlaceRequestBody.fromJson(Map<String, dynamic> json) => _$AddPlaceRequestBodyFromJson(json);
}
