// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'GetMemberDevicesPermissionsResponse.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$GetMemberDevicesPermissionsResponseImpl
    _$$GetMemberDevicesPermissionsResponseImplFromJson(
            Map<String, dynamic> json) =>
        _$GetMemberDevicesPermissionsResponseImpl(
          deviceId: (json['device_id'] as num).toInt(),
          placeId: (json['place_id'] as num).toInt(),
          areaId: (json['area_id'] as num).toInt(),
          name: json['name'] as String,
          type: (json['type'] as num?)?.toInt(),
          areaName: json['area_name'] as String?,
        );

Map<String, dynamic> _$$GetMemberDevicesPermissionsResponseImplToJson(
        _$GetMemberDevicesPermissionsResponseImpl instance) =>
    <String, dynamic>{
      'device_id': instance.deviceId,
      'place_id': instance.placeId,
      'area_id': instance.areaId,
      'name': instance.name,
      'type': instance.type,
      'area_name': instance.areaName,
    };
