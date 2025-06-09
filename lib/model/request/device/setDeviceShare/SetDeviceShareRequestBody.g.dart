// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'SetDeviceShareRequestBody.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$SetDeviceShareRequestBodyImpl _$$SetDeviceShareRequestBodyImplFromJson(
        Map<String, dynamic> json) =>
    _$SetDeviceShareRequestBodyImpl(
      deviceId: (json['device_id'] as num).toInt(),
      share: json['share'] as bool,
      userId: (json['user_id'] as num).toInt(),
    );

Map<String, dynamic> _$$SetDeviceShareRequestBodyImplToJson(
        _$SetDeviceShareRequestBodyImpl instance) =>
    <String, dynamic>{
      'device_id': instance.deviceId,
      'share': instance.share,
      'user_id': instance.userId,
    };
