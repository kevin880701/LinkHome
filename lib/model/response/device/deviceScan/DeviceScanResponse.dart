import 'package:freezed_annotation/freezed_annotation.dart';

part 'DeviceScanResponse.freezed.dart';
part 'DeviceScanResponse.g.dart';

@freezed
class DeviceScanResponse with _$DeviceScanResponse {
  const factory DeviceScanResponse({
    @JsonKey(name: 'device_id') required int deviceId,
    @JsonKey(name: 'sn') String? sn,
    @JsonKey(name: 'mac') required String mac,
    @JsonKey(name: 'user_id') int? userId,
    @JsonKey(name: 'name') required String name,
    @JsonKey(name: 'model_id') required int modelId,
    @JsonKey(name: 'model_name') required String modelName,
    @JsonKey(name: 'model_image_url') required String modelImageUrl,
    @JsonKey(name: 'vendor_id') required int vendorId,
    @JsonKey(name: 'vendor_name') String? vendorName,
    @JsonKey(name: 'address') required String address,
    @JsonKey(name: 'customer_id') required int customerId,
    @JsonKey(name: 'customer_name') required String customerName,
    @JsonKey(name: 'inv_date') required List<int> invDate,
    @JsonKey(name: 'warranty') required int warranty,
  }) = _DeviceScanResponse;

  factory DeviceScanResponse.fromJson(Map<String, dynamic> json) => _$DeviceScanResponseFromJson(json);
}
