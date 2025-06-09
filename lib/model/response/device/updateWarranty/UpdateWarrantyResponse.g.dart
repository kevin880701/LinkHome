// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'UpdateWarrantyResponse.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$UpdateWarrantyResponseImpl _$$UpdateWarrantyResponseImplFromJson(
        Map<String, dynamic> json) =>
    _$UpdateWarrantyResponseImpl(
      status: (json['status'] as num).toInt(),
      data: json['data'] as String,
    );

Map<String, dynamic> _$$UpdateWarrantyResponseImplToJson(
        _$UpdateWarrantyResponseImpl instance) =>
    <String, dynamic>{
      'status': instance.status,
      'data': instance.data,
    };
