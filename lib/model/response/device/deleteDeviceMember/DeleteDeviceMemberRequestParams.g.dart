// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'DeleteDeviceMemberRequestParams.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$DeleteDeviceMemberRequestParamsImpl
    _$$DeleteDeviceMemberRequestParamsImplFromJson(Map<String, dynamic> json) =>
        _$DeleteDeviceMemberRequestParamsImpl(
          placeId: (json['place_id'] as num).toInt(),
          userId: (json['user_id'] as num).toInt(),
        );

Map<String, dynamic> _$$DeleteDeviceMemberRequestParamsImplToJson(
        _$DeleteDeviceMemberRequestParamsImpl instance) =>
    <String, dynamic>{
      'place_id': instance.placeId,
      'user_id': instance.userId,
    };
