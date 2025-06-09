import 'package:freezed_annotation/freezed_annotation.dart';

part 'DeviceRegisterRequestBody.freezed.dart';
part 'DeviceRegisterRequestBody.g.dart';

@freezed
class DeviceRegisterRequestBody with _$DeviceRegisterRequestBody {
  const factory DeviceRegisterRequestBody({
    @JsonKey(name: 'sn') required String sn,
    @JsonKey(name: 'mac') String? mac,
    @JsonKey(name: 'name') required String name,
    @JsonKey(name: 'place_id') int? placeId,
    @JsonKey(name: 'area_id') int? areaId,
    @JsonKey(name: 'customer_id') int? customerId,
    @JsonKey(name: 'vendor_id') required int vendorId,
    @JsonKey(name: 'model_id') required int modelId,
    @JsonKey(name: 'customer_address') String? customerAddress,
    @JsonKey(name: 'owner') String? owner,
    @JsonKey(name: 'warranty_email') String? warrantyEmail,
    @JsonKey(name: 'warranty_tel') String? warrantyTel,
    @JsonKey(name: 'inv_date') required String invDate,
    @JsonKey(name: 'work_order_number') String? workOrderNumber,
    @JsonKey(name: 'manual_brand') String? manualBrand,
  }) = _DeviceRegisterRequestBody;

  factory DeviceRegisterRequestBody.fromJson(Map<String, dynamic> json) => _$DeviceRegisterRequestBodyFromJson(json);
}
