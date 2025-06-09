// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'SetFilterLifeRequestBody.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$SetFilterLifeRequestBodyImpl _$$SetFilterLifeRequestBodyImplFromJson(
        Map<String, dynamic> json) =>
    _$SetFilterLifeRequestBodyImpl(
      cl: json['cl'] as String,
      deviceId: (json['device_id'] as num).toInt(),
      installationDate: json['installation_date'] as String,
      lifeMonth: (json['life_month'] as num).toInt(),
      name: json['name'] as String,
    );

Map<String, dynamic> _$$SetFilterLifeRequestBodyImplToJson(
        _$SetFilterLifeRequestBodyImpl instance) =>
    <String, dynamic>{
      'cl': instance.cl,
      'device_id': instance.deviceId,
      'installation_date': instance.installationDate,
      'life_month': instance.lifeMonth,
      'name': instance.name,
    };
