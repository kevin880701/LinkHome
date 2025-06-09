// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'GetMemberDevicesPermissionsRequestParams.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$GetMemberDevicesPermissionsRequestParamsImpl
    _$$GetMemberDevicesPermissionsRequestParamsImplFromJson(
            Map<String, dynamic> json) =>
        _$GetMemberDevicesPermissionsRequestParamsImpl(
          placeId: (json['place_id'] as num).toInt(),
          userId: (json['user_id'] as num).toInt(),
        );

Map<String, dynamic> _$$GetMemberDevicesPermissionsRequestParamsImplToJson(
        _$GetMemberDevicesPermissionsRequestParamsImpl instance) =>
    <String, dynamic>{
      'place_id': instance.placeId,
      'user_id': instance.userId,
    };
