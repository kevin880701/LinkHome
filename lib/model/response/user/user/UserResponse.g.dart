// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'UserResponse.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$UserResponseImpl _$$UserResponseImplFromJson(Map<String, dynamic> json) =>
    _$UserResponseImpl(
      userId: (json['user_id'] as num).toInt(),
      account: json['account'] as String,
      headshot: json['headshot'] as String?,
      name: json['name'] as String?,
      rolesName: json['roles_name'] as String,
      vendorId: (json['vendor_id'] as num?)?.toInt(),
      vendorName: json['vendor_name'] as String?,
      tel: json['tel'] as String?,
      city: json['city'] as String?,
      region: json['region'] as String?,
      vip: (json['vip'] as num).toInt(),
      addedTime: json['added_time'] as String,
    );

Map<String, dynamic> _$$UserResponseImplToJson(_$UserResponseImpl instance) =>
    <String, dynamic>{
      'user_id': instance.userId,
      'account': instance.account,
      'headshot': instance.headshot,
      'name': instance.name,
      'roles_name': instance.rolesName,
      'vendor_id': instance.vendorId,
      'vendor_name': instance.vendorName,
      'tel': instance.tel,
      'city': instance.city,
      'region': instance.region,
      'vip': instance.vip,
      'added_time': instance.addedTime,
    };
