// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'DeviceRegisterResponse.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$DeviceRegisterResponseImpl _$$DeviceRegisterResponseImplFromJson(
        Map<String, dynamic> json) =>
    _$DeviceRegisterResponseImpl(
      status: (json['status'] as num).toInt(),
      data: json['data'] as String,
    );

Map<String, dynamic> _$$DeviceRegisterResponseImplToJson(
        _$DeviceRegisterResponseImpl instance) =>
    <String, dynamic>{
      'status': instance.status,
      'data': instance.data,
    };
