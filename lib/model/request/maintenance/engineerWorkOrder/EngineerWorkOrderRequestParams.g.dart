// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'EngineerWorkOrderRequestParams.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$EngineerWorkOrderRequestParamsImpl
    _$$EngineerWorkOrderRequestParamsImplFromJson(Map<String, dynamic> json) =>
        _$EngineerWorkOrderRequestParamsImpl(
          year: (json['year'] as num).toInt(),
          month: (json['month'] as num).toInt(),
          day: (json['day'] as num?)?.toInt(),
        );

Map<String, dynamic> _$$EngineerWorkOrderRequestParamsImplToJson(
        _$EngineerWorkOrderRequestParamsImpl instance) =>
    <String, dynamic>{
      'year': instance.year,
      'month': instance.month,
      'day': instance.day,
    };
