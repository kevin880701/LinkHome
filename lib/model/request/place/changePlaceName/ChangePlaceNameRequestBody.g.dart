// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'ChangePlaceNameRequestBody.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$ChangePlaceNameRequestBodyImpl _$$ChangePlaceNameRequestBodyImplFromJson(
        Map<String, dynamic> json) =>
    _$ChangePlaceNameRequestBodyImpl(
      name: json['name'] as String,
      placeId: (json['place_id'] as num).toInt(),
    );

Map<String, dynamic> _$$ChangePlaceNameRequestBodyImplToJson(
        _$ChangePlaceNameRequestBodyImpl instance) =>
    <String, dynamic>{
      'name': instance.name,
      'place_id': instance.placeId,
    };
