// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'DeviceMacExistResponse.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$DeviceMacExistResponseImpl _$$DeviceMacExistResponseImplFromJson(
        Map<String, dynamic> json) =>
    _$DeviceMacExistResponseImpl(
      status: (json['status'] as num).toInt(),
      data: json['data'] as String,
    );

Map<String, dynamic> _$$DeviceMacExistResponseImplToJson(
        _$DeviceMacExistResponseImpl instance) =>
    <String, dynamic>{
      'status': instance.status,
      'data': instance.data,
    };
