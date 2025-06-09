import 'package:freezed_annotation/freezed_annotation.dart';

part 'WarrantyResponse.freezed.dart';
part 'WarrantyResponse.g.dart';

@freezed
class WarrantyResponse with _$WarrantyResponse {
  const factory WarrantyResponse({
    @JsonKey(name: 'owner') String? owner,
    @JsonKey(name: 'warranty_email') String? warrantyEmail,
    @JsonKey(name: 'warranty_tel') String? warrantyTel,
    @JsonKey(name: 'work_order_number') String? workOrderNumber,
    @JsonKey(name: 'device_images') String? deviceImages,
    @JsonKey(name: 'inv_date') String? invDate,
  }) = _WarrantyResponse;

  factory WarrantyResponse.fromJson(Map<String, dynamic> json) =>
      _$WarrantyResponseFromJson(json);
}
