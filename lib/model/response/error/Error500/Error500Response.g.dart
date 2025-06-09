// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'Error500Response.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$Error500ResponseImpl _$$Error500ResponseImplFromJson(
        Map<String, dynamic> json) =>
    _$Error500ResponseImpl(
      status: json['status'] as String,
      message: json['msg'] as String,
      errorMessage: json['errorMsg'] as String,
    );

Map<String, dynamic> _$$Error500ResponseImplToJson(
        _$Error500ResponseImpl instance) =>
    <String, dynamic>{
      'status': instance.status,
      'msg': instance.message,
      'errorMsg': instance.errorMessage,
    };
