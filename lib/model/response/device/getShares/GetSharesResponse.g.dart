// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'GetSharesResponse.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$GetSharesResponseImpl _$$GetSharesResponseImplFromJson(
        Map<String, dynamic> json) =>
    _$GetSharesResponseImpl(
      owner: json['owner'] as String?,
      placeId: (json['place_id'] as num?)?.toInt(),
      placeName: json['place_name'] as String?,
      deviceId: (json['device_id'] as num).toInt(),
      names: json['names'] as String,
    );

Map<String, dynamic> _$$GetSharesResponseImplToJson(
        _$GetSharesResponseImpl instance) =>
    <String, dynamic>{
      'owner': instance.owner,
      'place_id': instance.placeId,
      'place_name': instance.placeName,
      'device_id': instance.deviceId,
      'names': instance.names,
    };
