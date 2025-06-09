// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'ChangeAreaNameRequestBody.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$ChangeAreaNameRequestBodyImpl _$$ChangeAreaNameRequestBodyImplFromJson(
        Map<String, dynamic> json) =>
    _$ChangeAreaNameRequestBodyImpl(
      name: json['name'] as String,
      areaId: (json['area_id'] as num).toInt(),
    );

Map<String, dynamic> _$$ChangeAreaNameRequestBodyImplToJson(
        _$ChangeAreaNameRequestBodyImpl instance) =>
    <String, dynamic>{
      'name': instance.name,
      'area_id': instance.areaId,
    };
