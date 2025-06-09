// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'UpdateWarrantyRequestBody.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$UpdateWarrantyRequestBodyImpl _$$UpdateWarrantyRequestBodyImplFromJson(
        Map<String, dynamic> json) =>
    _$UpdateWarrantyRequestBodyImpl(
      deviceId: (json['device_id'] as num).toInt(),
      owner: json['owner'] as String,
      warrantyEmail: json['warranty_email'] as String,
      warrantyTel: json['warranty_tel'] as String,
      invDate: json['inv_date'] as String,
      workOrderNumber: json['work_order_number'] as String,
      deviceImages: json['device_images'] as String,
    );

Map<String, dynamic> _$$UpdateWarrantyRequestBodyImplToJson(
        _$UpdateWarrantyRequestBodyImpl instance) =>
    <String, dynamic>{
      'device_id': instance.deviceId,
      'owner': instance.owner,
      'warranty_email': instance.warrantyEmail,
      'warranty_tel': instance.warrantyTel,
      'inv_date': instance.invDate,
      'work_order_number': instance.workOrderNumber,
      'device_images': instance.deviceImages,
    };
