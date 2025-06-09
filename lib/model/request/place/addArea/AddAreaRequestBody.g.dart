// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'AddAreaRequestBody.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$AddAreaRequestBodyImpl _$$AddAreaRequestBodyImplFromJson(
        Map<String, dynamic> json) =>
    _$AddAreaRequestBodyImpl(
      name: json['name'] as String,
      placeId: (json['place_id'] as num).toInt(),
    );

Map<String, dynamic> _$$AddAreaRequestBodyImplToJson(
        _$AddAreaRequestBodyImpl instance) =>
    <String, dynamic>{
      'name': instance.name,
      'place_id': instance.placeId,
    };
