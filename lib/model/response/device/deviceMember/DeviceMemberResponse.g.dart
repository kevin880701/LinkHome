// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'DeviceMemberResponse.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$DeviceMemberResponseImpl _$$DeviceMemberResponseImplFromJson(
        Map<String, dynamic> json) =>
    _$DeviceMemberResponseImpl(
      userId: (json['user_id'] as num).toInt(),
      name: json['name'] as String?,
      account: json['account'] as String,
      deviceNum: (json['device_num'] as num).toInt(),
      invite: json['invite'] as bool,
    );

Map<String, dynamic> _$$DeviceMemberResponseImplToJson(
        _$DeviceMemberResponseImpl instance) =>
    <String, dynamic>{
      'user_id': instance.userId,
      'name': instance.name,
      'account': instance.account,
      'device_num': instance.deviceNum,
      'invite': instance.invite,
    };
