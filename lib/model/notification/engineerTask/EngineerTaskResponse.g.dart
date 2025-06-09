// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'EngineerTaskResponse.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$EngineerTaskResponseImpl _$$EngineerTaskResponseImplFromJson(
        Map<String, dynamic> json) =>
    _$EngineerTaskResponseImpl(
      deviceId: json['device_id'] as String,
      body: json['body'] as String,
      title: json['title'] as String,
      mId: json['m_id'] as String,
    );

Map<String, dynamic> _$$EngineerTaskResponseImplToJson(
        _$EngineerTaskResponseImpl instance) =>
    <String, dynamic>{
      'device_id': instance.deviceId,
      'body': instance.body,
      'title': instance.title,
      'm_id': instance.mId,
    };
