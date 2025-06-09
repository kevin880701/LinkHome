// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'DeviceScanResponse.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$DeviceScanResponseImpl _$$DeviceScanResponseImplFromJson(
        Map<String, dynamic> json) =>
    _$DeviceScanResponseImpl(
      deviceId: (json['device_id'] as num).toInt(),
      sn: json['sn'] as String?,
      mac: json['mac'] as String,
      userId: (json['user_id'] as num?)?.toInt(),
      name: json['name'] as String,
      modelId: (json['model_id'] as num).toInt(),
      modelName: json['model_name'] as String,
      modelImageUrl: json['model_image_url'] as String,
      vendorId: (json['vendor_id'] as num).toInt(),
      vendorName: json['vendor_name'] as String?,
      address: json['address'] as String,
      customerId: (json['customer_id'] as num).toInt(),
      customerName: json['customer_name'] as String,
      invDate: (json['inv_date'] as List<dynamic>)
          .map((e) => (e as num).toInt())
          .toList(),
      warranty: (json['warranty'] as num).toInt(),
    );

Map<String, dynamic> _$$DeviceScanResponseImplToJson(
        _$DeviceScanResponseImpl instance) =>
    <String, dynamic>{
      'device_id': instance.deviceId,
      'sn': instance.sn,
      'mac': instance.mac,
      'user_id': instance.userId,
      'name': instance.name,
      'model_id': instance.modelId,
      'model_name': instance.modelName,
      'model_image_url': instance.modelImageUrl,
      'vendor_id': instance.vendorId,
      'vendor_name': instance.vendorName,
      'address': instance.address,
      'customer_id': instance.customerId,
      'customer_name': instance.customerName,
      'inv_date': instance.invDate,
      'warranty': instance.warranty,
    };
