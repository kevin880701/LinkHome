// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'PlaceDtlsResponse.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$PlaceDtlsResponseImpl _$$PlaceDtlsResponseImplFromJson(
        Map<String, dynamic> json) =>
    _$PlaceDtlsResponseImpl(
      placeId: (json['place_id'] as num).toInt(),
      name: json['name'] as String,
      userId: (json['user_id'] as num).toInt(),
      areaCount: (json['area_count'] as num).toInt(),
      shareCount: (json['share_count'] as num).toInt(),
    );

Map<String, dynamic> _$$PlaceDtlsResponseImplToJson(
        _$PlaceDtlsResponseImpl instance) =>
    <String, dynamic>{
      'place_id': instance.placeId,
      'name': instance.name,
      'user_id': instance.userId,
      'area_count': instance.areaCount,
      'share_count': instance.shareCount,
    };
