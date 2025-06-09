// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'TaskDoneResponse.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$TaskDoneResponseImpl _$$TaskDoneResponseImplFromJson(
        Map<String, dynamic> json) =>
    _$TaskDoneResponseImpl(
      status: (json['status'] as num).toInt(),
      data: json['data'] as String,
    );

Map<String, dynamic> _$$TaskDoneResponseImplToJson(
        _$TaskDoneResponseImpl instance) =>
    <String, dynamic>{
      'status': instance.status,
      'data': instance.data,
    };
