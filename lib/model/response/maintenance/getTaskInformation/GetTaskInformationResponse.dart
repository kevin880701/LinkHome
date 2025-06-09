import 'package:freezed_annotation/freezed_annotation.dart';

part 'GetTaskInformationResponse.freezed.dart';
part 'GetTaskInformationResponse.g.dart';

@freezed
class GetTaskInformationResponse with _$GetTaskInformationResponse {
  const factory GetTaskInformationResponse({
    @JsonKey(name: 'm_id') required int mId,
    @JsonKey(name: 'vendor_id') required int vendorId,
    @JsonKey(name: 'customer_id') int? customerId,
    @JsonKey(name: 'description') String? description,
    @JsonKey(name: 'vendor_description') String? vendorDescription,
    @JsonKey(name: 'user_id') required int userId,
    @JsonKey(name: 'device_id') int? deviceId,
    @JsonKey(name: 'status') required int status,
    @JsonKey(name: 'status_name') required String statusName,
    @JsonKey(name: 'continuance') required int continuance,
    @JsonKey(name: 'engineer') required int engineer,
    @JsonKey(name: 'engineer_name') required String engineerName,
    @JsonKey(name: 'type') required int type,
    @JsonKey(name: 'type_name') required String typeName,
    @JsonKey(name: 'expected_days_of_week') String? expectedDaysOfWeek,
    @JsonKey(name: 'sign_image') String? signImage,
    @JsonKey(name: 'expected_time_of_week') String? expectedTimeOfWeek,
    @JsonKey(name: 'added_time') required String addedTime,
    @JsonKey(name: 'appointed_datetime') required String appointedDatetime,
    @JsonKey(name: 'work_start_datetime') String? workStartDatetime,
    @JsonKey(name: 'work_end_datetime') String? workEndDatetime,
    @JsonKey(name: 'name') required String name,
    @JsonKey(name: 'tel') required String tel,
    @JsonKey(name: 'fee') int? fee,
    @JsonKey(name: 'work') int? work,
    @JsonKey(name: 'error_reason') String? errorReason,
    @JsonKey(name: 'attachment_url') String? attachmentUrl,
    @JsonKey(name: 'vendor_name') String? vendorName,
    @JsonKey(name: 'vendor_tel') String? vendorTel,
    @JsonKey(name: 'customer_name') String? customerName,
    @JsonKey(name: 'customer_tel') String? customerTel,
    @JsonKey(name: 'customer_address') String? customerAddress,
    @JsonKey(name: 'values') required List<Value> values,
    @JsonKey(name: 'device_values') List<Value>? deviceValues,
    @JsonKey(name: 'user_images') required List<UserImage> userImages,
    @JsonKey(name: 'engineer_images') required List<EngineerImage> engineerImages,
    @JsonKey(name: 'installations') required List<Installation> installations,
    @JsonKey(name: 'added_type') required String addedType,
    @JsonKey(name: 'sn') String? sn,
  }) = _GetTaskInformationResponse;

  factory GetTaskInformationResponse.fromJson(Map<String, dynamic> json) =>
      _$GetTaskInformationResponseFromJson(json);
}

@freezed
class Value with _$Value {
  const factory Value({
    @JsonKey(name: 'code') required String code,
    @JsonKey(name: 'types') required String types,
    @JsonKey(name: 'group1') String? group1,
    @JsonKey(name: 'group2') required String group2,
    @JsonKey(name: 'item') required String item,
    @JsonKey(name: 'value') required String value,
    @JsonKey(name: 'remark') String? remark,
  }) = _Value;

  factory Value.fromJson(Map<String, dynamic> json) => _$ValueFromJson(json);
}

@freezed
class UserImage with _$UserImage {
  const factory UserImage({
    @JsonKey(name: 'm_id') required int mId,
    @JsonKey(name: 'm_u_image_id') required int mUImageId,
    @JsonKey(name: 'image_url') required String imageUrl,
  }) = _UserImage;

  factory UserImage.fromJson(Map<String, dynamic> json) => _$UserImageFromJson(json);
}

@freezed
class EngineerImage with _$EngineerImage {
  const factory EngineerImage({
    @JsonKey(name: 'm_id') required int mId,
    @JsonKey(name: 'm_e_image_id') required int mEImageId,
    @JsonKey(name: 'kind') required int kind,
    @JsonKey(name: 'image_url') required String imageUrl,
  }) = _EngineerImage;

  factory EngineerImage.fromJson(Map<String, dynamic> json) => _$EngineerImageFromJson(json);
}

@freezed
class Installation with _$Installation {
  const factory Installation({
    @JsonKey(name: 'model_id') required int modelId,
    @JsonKey(name: 'name') required String name,
    @JsonKey(name: 'image_url') required String imageUrl,
    @JsonKey(name: 'description') required String description,
    @JsonKey(name: 'guide_url') required String guideUrl,
    @JsonKey(name: 'num') required int num,
  }) = _Installation;

  factory Installation.fromJson(Map<String, dynamic> json) => _$InstallationFromJson(json);
}
