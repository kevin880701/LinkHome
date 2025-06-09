import 'package:freezed_annotation/freezed_annotation.dart';

part 'VendorInfoResponse.freezed.dart';
part 'VendorInfoResponse.g.dart';

@freezed
class VendorInfoResponse with _$VendorInfoResponse {
  const factory VendorInfoResponse({
    @JsonKey(name: 'vendor_id') required int vendorId,
    @JsonKey(name: 'name') required String name,
    @JsonKey(name: 'tel') required String tel,
    @JsonKey(name: 'tax_id') String? taxId,
    @JsonKey(name: 'city') required String city,
    @JsonKey(name: 'region') required String region,
    @JsonKey(name: 'address') required String address,
    @JsonKey(name: 'token') String? token,
    @JsonKey(name: 'description') String? description,
    @JsonKey(name: 'erp') String? erp,
    @JsonKey(name: 'added_time') String? addedTime,
  }) = _VendorInfoResponse;

  factory VendorInfoResponse.fromJson(Map<String, dynamic> json) => _$VendorInfoResponseFromJson(json);
}
