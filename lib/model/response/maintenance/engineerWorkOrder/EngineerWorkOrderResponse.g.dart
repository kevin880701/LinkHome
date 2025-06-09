// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'EngineerWorkOrderResponse.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$EngineerWorkOrderResponseImpl _$$EngineerWorkOrderResponseImplFromJson(
        Map<String, dynamic> json) =>
    _$EngineerWorkOrderResponseImpl(
      mId: (json['m_id'] as num).toInt(),
      status: (json['status'] as num).toInt(),
      typeName: json['type_name'] as String,
      statusName: json['status_name'] as String,
      name: json['name'] as String,
      address: json['address'] as String?,
      continuance: (json['continuance'] as num).toInt(),
      appointedDatetime: json['appointed_datetime'] as String,
      addedTime: json['added_time'] as String,
    );

Map<String, dynamic> _$$EngineerWorkOrderResponseImplToJson(
        _$EngineerWorkOrderResponseImpl instance) =>
    <String, dynamic>{
      'm_id': instance.mId,
      'status': instance.status,
      'type_name': instance.typeName,
      'status_name': instance.statusName,
      'name': instance.name,
      'address': instance.address,
      'continuance': instance.continuance,
      'appointed_datetime': instance.appointedDatetime,
      'added_time': instance.addedTime,
    };
