// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'TaskDoneRequestBody.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$TaskDoneRequestBodyImpl _$$TaskDoneRequestBodyImplFromJson(
        Map<String, dynamic> json) =>
    _$TaskDoneRequestBodyImpl(
      errorReason: json['error_reason'] as String,
      fee: json['fee'] as String,
      continuance: (json['continuance'] as num).toInt(),
      mId: (json['m_id'] as num).toInt(),
      status: (json['status'] as num).toInt(),
      values: (json['values'] as List<dynamic>)
          .map((e) => TaskValue.fromJson(e as Map<String, dynamic>))
          .toList(),
      sn: json['sn'] as String?,
    );

Map<String, dynamic> _$$TaskDoneRequestBodyImplToJson(
        _$TaskDoneRequestBodyImpl instance) =>
    <String, dynamic>{
      'error_reason': instance.errorReason,
      'fee': instance.fee,
      'continuance': instance.continuance,
      'm_id': instance.mId,
      'status': instance.status,
      'values': instance.values,
      'sn': instance.sn,
    };

_$TaskValueImpl _$$TaskValueImplFromJson(Map<String, dynamic> json) =>
    _$TaskValueImpl(
      code: json['code'] as String,
      remark: json['remark'] as String,
      value: json['value'] as String,
    );

Map<String, dynamic> _$$TaskValueImplToJson(_$TaskValueImpl instance) =>
    <String, dynamic>{
      'code': instance.code,
      'remark': instance.remark,
      'value': instance.value,
    };
