// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'GetMIdResponse.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$GetMIdResponseImpl _$$GetMIdResponseImplFromJson(Map<String, dynamic> json) =>
    _$GetMIdResponseImpl(
      mId: (json['m_id'] as num).toInt(),
      vendorId: (json['vendor_id'] as num).toInt(),
      customerId: (json['customer_id'] as num?)?.toInt(),
      description: json['description'] as String?,
      userId: (json['user_id'] as num).toInt(),
      deviceId: (json['device_id'] as num).toInt(),
      status: (json['status'] as num).toInt(),
      engineer: json['engineer'] as String?,
      type: json['type'] as String?,
      expectedDaysOfWeek: json['expected_days_of_week'] as String?,
      signImage: json['sign_image'] as String?,
      expectedTimeOfWeek: json['expected_time_of_week'] as String?,
      addedTime: json['added_time'] as String,
      name: json['name'] as String,
      tel: json['tel'] as String,
      vendorName: json['vendor_name'] as String?,
      vendorTel: json['vendor_tel'] as String?,
    );

Map<String, dynamic> _$$GetMIdResponseImplToJson(
        _$GetMIdResponseImpl instance) =>
    <String, dynamic>{
      'm_id': instance.mId,
      'vendor_id': instance.vendorId,
      'customer_id': instance.customerId,
      'description': instance.description,
      'user_id': instance.userId,
      'device_id': instance.deviceId,
      'status': instance.status,
      'engineer': instance.engineer,
      'type': instance.type,
      'expected_days_of_week': instance.expectedDaysOfWeek,
      'sign_image': instance.signImage,
      'expected_time_of_week': instance.expectedTimeOfWeek,
      'added_time': instance.addedTime,
      'name': instance.name,
      'tel': instance.tel,
      'vendor_name': instance.vendorName,
      'vendor_tel': instance.vendorTel,
    };
