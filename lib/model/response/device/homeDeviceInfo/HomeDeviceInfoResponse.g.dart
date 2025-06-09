// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'HomeDeviceInfoResponse.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$HomeDeviceInfoResponseImpl _$$HomeDeviceInfoResponseImplFromJson(
        Map<String, dynamic> json) =>
    _$HomeDeviceInfoResponseImpl(
      deviceId: (json['device_id'] as num).toInt(),
      mac: json['mac'] as String?,
      type: (json['type'] as num).toInt(),
      name: json['name'] as String,
      placeId: (json['place_id'] as num?)?.toInt(),
      placeName: json['place_name'] as String?,
      areaId: (json['area_id'] as num?)?.toInt(),
      areaName: json['area_name'] as String?,
      modelId: (json['model_id'] as num?)?.toInt(),
      modelName: json['model_name'] as String?,
      modelImageUrl: json['model_image_url'] as String,
      online: (json['online'] as num?)?.toInt(),
      power: (json['power'] as num?)?.toInt(),
      error: (json['error'] as num?)?.toInt(),
      installationDate: json['installation_date'] as String?,
    );

Map<String, dynamic> _$$HomeDeviceInfoResponseImplToJson(
        _$HomeDeviceInfoResponseImpl instance) =>
    <String, dynamic>{
      'device_id': instance.deviceId,
      'mac': instance.mac,
      'type': instance.type,
      'name': instance.name,
      'place_id': instance.placeId,
      'place_name': instance.placeName,
      'area_id': instance.areaId,
      'area_name': instance.areaName,
      'model_id': instance.modelId,
      'model_name': instance.modelName,
      'model_image_url': instance.modelImageUrl,
      'online': instance.online,
      'power': instance.power,
      'error': instance.error,
      'installation_date': instance.installationDate,
    };
