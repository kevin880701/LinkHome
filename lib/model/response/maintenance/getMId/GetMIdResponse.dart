import 'package:freezed_annotation/freezed_annotation.dart';

part 'GetMIdResponse.freezed.dart';
part 'GetMIdResponse.g.dart';

@freezed
class GetMIdResponse with _$GetMIdResponse {
  const factory GetMIdResponse({
    @JsonKey(name: 'm_id') required int mId,
    @JsonKey(name: 'vendor_id') required int vendorId,
    @JsonKey(name: 'customer_id') int? customerId,
    @JsonKey(name: 'description') String? description,
    @JsonKey(name: 'user_id') required int userId,
    @JsonKey(name: 'device_id') required int deviceId,
    @JsonKey(name: 'status') required int status,
    @JsonKey(name: 'engineer') String? engineer,
    @JsonKey(name: 'type') String? type,
    @JsonKey(name: 'expected_days_of_week') String? expectedDaysOfWeek,
    @JsonKey(name: 'sign_image') String? signImage,
    @JsonKey(name: 'expected_time_of_week') String? expectedTimeOfWeek,
    @JsonKey(name: 'added_time') required String addedTime,
    @JsonKey(name: 'name') required String name,
    @JsonKey(name: 'tel') required String tel,
    @JsonKey(name: 'vendor_name') String? vendorName,
    @JsonKey(name: 'vendor_tel') String? vendorTel,
  }) = _GetMIdResponse;

  factory GetMIdResponse.fromJson(Map<String, dynamic> json) => _$GetMIdResponseFromJson(json);
}
