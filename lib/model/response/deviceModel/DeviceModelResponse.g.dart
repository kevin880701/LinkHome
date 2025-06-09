// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'DeviceModelResponse.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$DeviceModelResponseImpl _$$DeviceModelResponseImplFromJson(
        Map<String, dynamic> json) =>
    _$DeviceModelResponseImpl(
      modelId: (json['model_id'] as num).toInt(),
      name: json['name'] as String,
      imageUrl: json['image_url'] as String,
      description: json['description'] as String,
      guideUrl: json['guide_url'] as String,
      vendorId: (json['vendor_id'] as num).toInt(),
      brand: json['brand'] as String,
      purchased: (json['purchased'] as num?)?.toInt(),
      price: (json['price'] as num?)?.toInt(),
      installation: (json['installation'] as num).toInt(),
    );

Map<String, dynamic> _$$DeviceModelResponseImplToJson(
        _$DeviceModelResponseImpl instance) =>
    <String, dynamic>{
      'model_id': instance.modelId,
      'name': instance.name,
      'image_url': instance.imageUrl,
      'description': instance.description,
      'guide_url': instance.guideUrl,
      'vendor_id': instance.vendorId,
      'brand': instance.brand,
      'purchased': instance.purchased,
      'price': instance.price,
      'installation': instance.installation,
    };
