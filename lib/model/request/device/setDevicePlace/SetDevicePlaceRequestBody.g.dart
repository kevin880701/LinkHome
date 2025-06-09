// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'SetDevicePlaceRequestBody.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$SetDevicePlaceRequestBodyImpl _$$SetDevicePlaceRequestBodyImplFromJson(
        Map<String, dynamic> json) =>
    _$SetDevicePlaceRequestBodyImpl(
      areaId: (json['area_id'] as num?)?.toInt(),
      placeId: (json['place_id'] as num?)?.toInt(),
      deviceId: (json['device_id'] as num).toInt(),
    );

Map<String, dynamic> _$$SetDevicePlaceRequestBodyImplToJson(
        _$SetDevicePlaceRequestBodyImpl instance) =>
    <String, dynamic>{
      'area_id': instance.areaId,
      'place_id': instance.placeId,
      'device_id': instance.deviceId,
    };
