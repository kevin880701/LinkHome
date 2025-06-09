// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'GetCitiesResponse.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$GetCitiesResponseImpl _$$GetCitiesResponseImplFromJson(
        Map<String, dynamic> json) =>
    _$GetCitiesResponseImpl(
      cities:
          (json['cities'] as List<dynamic>).map((e) => e as String).toList(),
    );

Map<String, dynamic> _$$GetCitiesResponseImplToJson(
        _$GetCitiesResponseImpl instance) =>
    <String, dynamic>{
      'cities': instance.cities,
    };
