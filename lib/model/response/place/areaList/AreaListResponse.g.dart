// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'AreaListResponse.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$AreaListResponseImpl _$$AreaListResponseImplFromJson(
        Map<String, dynamic> json) =>
    _$AreaListResponseImpl(
      areaId: (json['area_id'] as num).toInt(),
      name: json['name'] as String,
      placeId: (json['place_id'] as num).toInt(),
    );

Map<String, dynamic> _$$AreaListResponseImplToJson(
        _$AreaListResponseImpl instance) =>
    <String, dynamic>{
      'area_id': instance.areaId,
      'name': instance.name,
      'place_id': instance.placeId,
    };
