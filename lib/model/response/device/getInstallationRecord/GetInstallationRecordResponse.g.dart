// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'GetInstallationRecordResponse.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$GetInstallationRecordResponseImpl
    _$$GetInstallationRecordResponseImplFromJson(Map<String, dynamic> json) =>
        _$GetInstallationRecordResponseImpl(
          mac: json['mac'] as String?,
          modelName: json['model_name'] as String,
          customerName: json['customer_name'] as String?,
          customerArea: json['customer_area'] as String?,
          installationDate: DateTime.parse(json['installation_date'] as String),
        );

Map<String, dynamic> _$$GetInstallationRecordResponseImplToJson(
        _$GetInstallationRecordResponseImpl instance) =>
    <String, dynamic>{
      'mac': instance.mac,
      'model_name': instance.modelName,
      'customer_name': instance.customerName,
      'customer_area': instance.customerArea,
      'installation_date': instance.installationDate.toIso8601String(),
    };
