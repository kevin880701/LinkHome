// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'InternalServerErrorResponse.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$InternalServerErrorResponseImpl _$$InternalServerErrorResponseImplFromJson(
        Map<String, dynamic> json) =>
    _$InternalServerErrorResponseImpl(
      status: json['status'] as String,
      message: json['msg'] as String,
      errorMessage: json['errorMsg'] as String,
    );

Map<String, dynamic> _$$InternalServerErrorResponseImplToJson(
        _$InternalServerErrorResponseImpl instance) =>
    <String, dynamic>{
      'status': instance.status,
      'msg': instance.message,
      'errorMsg': instance.errorMessage,
    };
