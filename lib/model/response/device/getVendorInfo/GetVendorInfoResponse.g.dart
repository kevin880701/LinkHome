// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'GetVendorInfoResponse.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$GetVendorInfoResponseImpl _$$GetVendorInfoResponseImplFromJson(
        Map<String, dynamic> json) =>
    _$GetVendorInfoResponseImpl(
      vendorId: (json['vendor_id'] as num).toInt(),
      name: json['name'] as String,
      tel: json['tel'] as String,
      taxId: json['tax_id'] as String,
      city: json['city'] as String,
      region: json['region'] as String,
      address: json['address'] as String,
      token: json['token'] as String,
      description: json['description'] as String,
      erp: json['erp'] as String,
      addedTime: json['added_time'] as String,
    );

Map<String, dynamic> _$$GetVendorInfoResponseImplToJson(
        _$GetVendorInfoResponseImpl instance) =>
    <String, dynamic>{
      'vendor_id': instance.vendorId,
      'name': instance.name,
      'tel': instance.tel,
      'tax_id': instance.taxId,
      'city': instance.city,
      'region': instance.region,
      'address': instance.address,
      'token': instance.token,
      'description': instance.description,
      'erp': instance.erp,
      'added_time': instance.addedTime,
    };
