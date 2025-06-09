// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'DeviceRegisterRequestBody.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$DeviceRegisterRequestBodyImpl _$$DeviceRegisterRequestBodyImplFromJson(
        Map<String, dynamic> json) =>
    _$DeviceRegisterRequestBodyImpl(
      sn: json['sn'] as String,
      mac: json['mac'] as String?,
      name: json['name'] as String,
      placeId: (json['place_id'] as num?)?.toInt(),
      areaId: (json['area_id'] as num?)?.toInt(),
      customerId: (json['customer_id'] as num?)?.toInt(),
      vendorId: (json['vendor_id'] as num).toInt(),
      modelId: (json['model_id'] as num).toInt(),
      customerAddress: json['customer_address'] as String?,
      owner: json['owner'] as String?,
      warrantyEmail: json['warranty_email'] as String?,
      warrantyTel: json['warranty_tel'] as String?,
      invDate: json['inv_date'] as String,
      workOrderNumber: json['work_order_number'] as String?,
      manualBrand: json['manual_brand'] as String?,
    );

Map<String, dynamic> _$$DeviceRegisterRequestBodyImplToJson(
        _$DeviceRegisterRequestBodyImpl instance) =>
    <String, dynamic>{
      'sn': instance.sn,
      'mac': instance.mac,
      'name': instance.name,
      'place_id': instance.placeId,
      'area_id': instance.areaId,
      'customer_id': instance.customerId,
      'vendor_id': instance.vendorId,
      'model_id': instance.modelId,
      'customer_address': instance.customerAddress,
      'owner': instance.owner,
      'warranty_email': instance.warrantyEmail,
      'warranty_tel': instance.warrantyTel,
      'inv_date': instance.invDate,
      'work_order_number': instance.workOrderNumber,
      'manual_brand': instance.manualBrand,
    };
