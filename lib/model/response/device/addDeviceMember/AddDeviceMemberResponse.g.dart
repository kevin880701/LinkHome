// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'AddDeviceMemberResponse.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$AddDeviceMemberResponseImpl _$$AddDeviceMemberResponseImplFromJson(
        Map<String, dynamic> json) =>
    _$AddDeviceMemberResponseImpl(
      status: (json['status'] as num).toInt(),
      data: json['data'] as String,
    );

Map<String, dynamic> _$$AddDeviceMemberResponseImplToJson(
        _$AddDeviceMemberResponseImpl instance) =>
    <String, dynamic>{
      'status': instance.status,
      'data': instance.data,
    };
