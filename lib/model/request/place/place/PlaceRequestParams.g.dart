// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'PlaceRequestParams.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$PlaceRequestParamsImpl _$$PlaceRequestParamsImplFromJson(
        Map<String, dynamic> json) =>
    _$PlaceRequestParamsImpl(
      placeId: (json['place_id'] as num).toInt(),
      areaId: (json['area_id'] as num).toInt(),
    );

Map<String, dynamic> _$$PlaceRequestParamsImplToJson(
        _$PlaceRequestParamsImpl instance) =>
    <String, dynamic>{
      'place_id': instance.placeId,
      'area_id': instance.areaId,
    };
