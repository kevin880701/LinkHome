// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'MaintenanceFormResponse.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$MaintenanceFormResponseImpl _$$MaintenanceFormResponseImplFromJson(
        Map<String, dynamic> json) =>
    _$MaintenanceFormResponseImpl(
      code: json['code'] as String,
      types: json['types'] as String,
      group1: json['group1'] as String?,
      group2: json['group2'] as String,
      item: json['item'] as String,
    );

Map<String, dynamic> _$$MaintenanceFormResponseImplToJson(
        _$MaintenanceFormResponseImpl instance) =>
    <String, dynamic>{
      'code': instance.code,
      'types': instance.types,
      'group1': instance.group1,
      'group2': instance.group2,
      'item': instance.item,
    };
