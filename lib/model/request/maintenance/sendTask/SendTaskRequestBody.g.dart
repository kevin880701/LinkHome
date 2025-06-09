// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'SendTaskRequestBody.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$SendTaskRequestBodyImpl _$$SendTaskRequestBodyImplFromJson(
        Map<String, dynamic> json) =>
    _$SendTaskRequestBodyImpl(
      description: json['description'] as String,
      codes: (json['codes'] as List<dynamic>)
          .map((e) => Code.fromJson(e as Map<String, dynamic>))
          .toList(),
      expectedDaysOfWeek: json['expected_days_of_week'] as String,
      expectedTimeOfWeek: json['expected_time_of_week'] as String,
      mId: (json['m_id'] as num).toInt(),
      name: json['name'] as String,
      tel: json['tel'] as String,
      type: (json['type'] as num).toInt(),
      sn: json['sn'] as String,
    );

Map<String, dynamic> _$$SendTaskRequestBodyImplToJson(
        _$SendTaskRequestBodyImpl instance) =>
    <String, dynamic>{
      'description': instance.description,
      'codes': instance.codes,
      'expected_days_of_week': instance.expectedDaysOfWeek,
      'expected_time_of_week': instance.expectedTimeOfWeek,
      'm_id': instance.mId,
      'name': instance.name,
      'tel': instance.tel,
      'type': instance.type,
      'sn': instance.sn,
    };

_$CodeImpl _$$CodeImplFromJson(Map<String, dynamic> json) => _$CodeImpl(
      code: json['code'] as String,
      remark: json['remark'] as String,
      value: json['value'] as String,
    );

Map<String, dynamic> _$$CodeImplToJson(_$CodeImpl instance) =>
    <String, dynamic>{
      'code': instance.code,
      'remark': instance.remark,
      'value': instance.value,
    };
