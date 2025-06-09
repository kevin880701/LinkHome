// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'WarrantyResponse.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$WarrantyResponseImpl _$$WarrantyResponseImplFromJson(
        Map<String, dynamic> json) =>
    _$WarrantyResponseImpl(
      owner: json['owner'] as String?,
      warrantyEmail: json['warranty_email'] as String?,
      warrantyTel: json['warranty_tel'] as String?,
      workOrderNumber: json['work_order_number'] as String?,
      deviceImages: json['device_images'] as String?,
      invDate: json['inv_date'] as String?,
    );

Map<String, dynamic> _$$WarrantyResponseImplToJson(
        _$WarrantyResponseImpl instance) =>
    <String, dynamic>{
      'owner': instance.owner,
      'warranty_email': instance.warrantyEmail,
      'warranty_tel': instance.warrantyTel,
      'work_order_number': instance.workOrderNumber,
      'device_images': instance.deviceImages,
      'inv_date': instance.invDate,
    };
