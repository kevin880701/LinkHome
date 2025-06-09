// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'GetRegionsResponse.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$GetRegionsResponseImpl _$$GetRegionsResponseImplFromJson(
        Map<String, dynamic> json) =>
    _$GetRegionsResponseImpl(
      regions:
          (json['regions'] as List<dynamic>).map((e) => e as String).toList(),
    );

Map<String, dynamic> _$$GetRegionsResponseImplToJson(
        _$GetRegionsResponseImpl instance) =>
    <String, dynamic>{
      'regions': instance.regions,
    };
