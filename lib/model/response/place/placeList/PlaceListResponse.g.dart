// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'PlaceListResponse.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$PlaceListResponseImpl _$$PlaceListResponseImplFromJson(
        Map<String, dynamic> json) =>
    _$PlaceListResponseImpl(
      placeId: (json['place_id'] as num).toInt(),
      name: json['name'] as String,
      userId: (json['user_id'] as num).toInt(),
    );

Map<String, dynamic> _$$PlaceListResponseImplToJson(
        _$PlaceListResponseImpl instance) =>
    <String, dynamic>{
      'place_id': instance.placeId,
      'name': instance.name,
      'user_id': instance.userId,
    };
