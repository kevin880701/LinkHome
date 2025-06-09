import 'package:freezed_annotation/freezed_annotation.dart';

part 'UpdateWarrantyResponse.freezed.dart';
part 'UpdateWarrantyResponse.g.dart';

@freezed
class UpdateWarrantyResponse with _$UpdateWarrantyResponse {
  const factory UpdateWarrantyResponse({
    @JsonKey(name: 'status') required int status,
    @JsonKey(name: 'data') required String data,
  }) = _UpdateWarrantyResponse;

  factory UpdateWarrantyResponse.fromJson(Map<String, dynamic> json) =>
      _$UpdateWarrantyResponseFromJson(json);
}
