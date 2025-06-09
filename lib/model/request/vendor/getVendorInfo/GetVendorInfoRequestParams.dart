import 'package:freezed_annotation/freezed_annotation.dart';

part 'GetVendorInfoRequestParams.freezed.dart';
part 'GetVendorInfoRequestParams.g.dart';

@freezed
class GetVendorInfoRequestParams with _$GetVendorInfoRequestParams {
  const factory GetVendorInfoRequestParams({
    required int vendor_id,
  }) = _GetVendorInfoRequestParams;

  factory GetVendorInfoRequestParams.fromJson(Map<String, dynamic> json) => _$GetVendorInfoRequestParamsFromJson(json);
}
