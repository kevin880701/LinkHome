// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'ShareReviewRequestParams.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$ShareReviewRequestParamsImpl _$$ShareReviewRequestParamsImplFromJson(
        Map<String, dynamic> json) =>
    _$ShareReviewRequestParamsImpl(
      placeId: (json['place_id'] as num?)?.toInt(),
      deviceId: (json['device_id'] as num).toInt(),
      accept: (json['accept'] as num).toInt(),
    );

Map<String, dynamic> _$$ShareReviewRequestParamsImplToJson(
        _$ShareReviewRequestParamsImpl instance) =>
    <String, dynamic>{
      'place_id': instance.placeId,
      'device_id': instance.deviceId,
      'accept': instance.accept,
    };
