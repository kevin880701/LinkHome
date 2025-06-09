// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'DeviceNameRequestBody.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$DeviceNameRequestBodyImpl _$$DeviceNameRequestBodyImplFromJson(
        Map<String, dynamic> json) =>
    _$DeviceNameRequestBodyImpl(
      deviceId: (json['device_id'] as num).toInt(),
      name: json['name'] as String,
    );

Map<String, dynamic> _$$DeviceNameRequestBodyImplToJson(
        _$DeviceNameRequestBodyImpl instance) =>
    <String, dynamic>{
      'device_id': instance.deviceId,
      'name': instance.name,
    };
