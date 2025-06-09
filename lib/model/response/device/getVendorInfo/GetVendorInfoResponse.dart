import 'package:freezed_annotation/freezed_annotation.dart';

part 'GetVendorInfoResponse.freezed.dart';
part 'GetVendorInfoResponse.g.dart';

@freezed
class GetVendorInfoResponse with _$GetVendorInfoResponse {
  const factory GetVendorInfoResponse({
    @JsonKey(name: 'vendor_id') required int vendorId,
    @JsonKey(name: 'name') required String name,
    @JsonKey(name: 'tel') required String tel,
    @JsonKey(name: 'tax_id') required String taxId,
    @JsonKey(name: 'city') required String city,
    @JsonKey(name: 'region') required String region,
    @JsonKey(name: 'address') required String address,
    @JsonKey(name: 'token') required String token,
    @JsonKey(name: 'description') required String description,
    @JsonKey(name: 'erp') required String erp,
    @JsonKey(name: 'added_time') required String addedTime,
  }) = _GetVendorInfoResponse;

  factory GetVendorInfoResponse.fromJson(Map<String, dynamic> json) => _$GetVendorInfoResponseFromJson(json);
}
