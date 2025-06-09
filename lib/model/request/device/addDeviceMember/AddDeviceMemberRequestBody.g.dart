// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'AddDeviceMemberRequestBody.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$AddDeviceMemberRequestBodyImpl _$$AddDeviceMemberRequestBodyImplFromJson(
        Map<String, dynamic> json) =>
    _$AddDeviceMemberRequestBodyImpl(
      account: json['account'] as String,
      placeId: (json['place_id'] as num).toInt(),
    );

Map<String, dynamic> _$$AddDeviceMemberRequestBodyImplToJson(
        _$AddDeviceMemberRequestBodyImpl instance) =>
    <String, dynamic>{
      'account': instance.account,
      'place_id': instance.placeId,
    };
