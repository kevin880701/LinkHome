import 'package:freezed_annotation/freezed_annotation.dart';

part 'DeviceModelResponse.freezed.dart';
part 'DeviceModelResponse.g.dart';

@freezed
class DeviceModelResponse with _$DeviceModelResponse {
  const factory DeviceModelResponse({
    @JsonKey(name: 'model_id') required int modelId,
    @JsonKey(name: 'name') required String name,
    @JsonKey(name: 'image_url') required String imageUrl,
    @JsonKey(name: 'description') required String description,
    @JsonKey(name: 'guide_url') required String guideUrl,
    @JsonKey(name: 'vendor_id') required int vendorId,
    @JsonKey(name: 'brand') required String brand,
    @JsonKey(name: 'purchased') int? purchased,
    @JsonKey(name: 'price') int? price,
    @JsonKey(name: 'installation') required int installation,
  }) = _DeviceModelResponse;

  factory DeviceModelResponse.fromJson(Map<String, dynamic> json) => _$DeviceModelResponseFromJson(json);
}
