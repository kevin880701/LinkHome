// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'DeviceBlueResponse.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$DeviceBlueResponseImpl _$$DeviceBlueResponseImplFromJson(
        Map<String, dynamic> json) =>
    _$DeviceBlueResponseImpl(
      cmd: json['cmd'] as String,
      result: (json['result'] as num?)?.toInt(),
      model: json['model'] as String?,
      system: json['system'] as String?,
      version: json['version'] as String?,
      id: json['id'] as String?,
      ip: json['ip'] as String?,
      name: json['name'] as String?,
      ssid: json['ssid'] as String?,
      modelId: json['model_id'] as String?,
      rssi: (json['rssi'] as num?)?.toInt(),
      data: (json['data'] as List<dynamic>?)
          ?.map((e) => WifiData.fromJson(e as Map<String, dynamic>))
          .toList(),
    );

Map<String, dynamic> _$$DeviceBlueResponseImplToJson(
        _$DeviceBlueResponseImpl instance) =>
    <String, dynamic>{
      'cmd': instance.cmd,
      'result': instance.result,
      'model': instance.model,
      'system': instance.system,
      'version': instance.version,
      'id': instance.id,
      'ip': instance.ip,
      'name': instance.name,
      'ssid': instance.ssid,
      'model_id': instance.modelId,
      'rssi': instance.rssi,
      'data': instance.data,
    };

_$WifiDataImpl _$$WifiDataImplFromJson(Map<String, dynamic> json) =>
    _$WifiDataImpl(
      ssid: json['ssid'] as String,
      rssi: (json['rssi'] as num).toInt(),
    );

Map<String, dynamic> _$$WifiDataImplToJson(_$WifiDataImpl instance) =>
    <String, dynamic>{
      'ssid': instance.ssid,
      'rssi': instance.rssi,
    };
