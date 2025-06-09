// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'GetTaskInformationResponse.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$GetTaskInformationResponseImpl _$$GetTaskInformationResponseImplFromJson(
        Map<String, dynamic> json) =>
    _$GetTaskInformationResponseImpl(
      mId: (json['m_id'] as num).toInt(),
      vendorId: (json['vendor_id'] as num).toInt(),
      customerId: (json['customer_id'] as num?)?.toInt(),
      description: json['description'] as String?,
      vendorDescription: json['vendor_description'] as String?,
      userId: (json['user_id'] as num).toInt(),
      deviceId: (json['device_id'] as num?)?.toInt(),
      status: (json['status'] as num).toInt(),
      statusName: json['status_name'] as String,
      continuance: (json['continuance'] as num).toInt(),
      engineer: (json['engineer'] as num).toInt(),
      engineerName: json['engineer_name'] as String,
      type: (json['type'] as num).toInt(),
      typeName: json['type_name'] as String,
      expectedDaysOfWeek: json['expected_days_of_week'] as String?,
      signImage: json['sign_image'] as String?,
      expectedTimeOfWeek: json['expected_time_of_week'] as String?,
      addedTime: json['added_time'] as String,
      appointedDatetime: json['appointed_datetime'] as String,
      workStartDatetime: json['work_start_datetime'] as String?,
      workEndDatetime: json['work_end_datetime'] as String?,
      name: json['name'] as String,
      tel: json['tel'] as String,
      fee: (json['fee'] as num?)?.toInt(),
      work: (json['work'] as num?)?.toInt(),
      errorReason: json['error_reason'] as String?,
      attachmentUrl: json['attachment_url'] as String?,
      vendorName: json['vendor_name'] as String?,
      vendorTel: json['vendor_tel'] as String?,
      customerName: json['customer_name'] as String?,
      customerTel: json['customer_tel'] as String?,
      customerAddress: json['customer_address'] as String?,
      values: (json['values'] as List<dynamic>)
          .map((e) => Value.fromJson(e as Map<String, dynamic>))
          .toList(),
      deviceValues: (json['device_values'] as List<dynamic>?)
          ?.map((e) => Value.fromJson(e as Map<String, dynamic>))
          .toList(),
      userImages: (json['user_images'] as List<dynamic>)
          .map((e) => UserImage.fromJson(e as Map<String, dynamic>))
          .toList(),
      engineerImages: (json['engineer_images'] as List<dynamic>)
          .map((e) => EngineerImage.fromJson(e as Map<String, dynamic>))
          .toList(),
      installations: (json['installations'] as List<dynamic>)
          .map((e) => Installation.fromJson(e as Map<String, dynamic>))
          .toList(),
      addedType: json['added_type'] as String,
      sn: json['sn'] as String?,
    );

Map<String, dynamic> _$$GetTaskInformationResponseImplToJson(
        _$GetTaskInformationResponseImpl instance) =>
    <String, dynamic>{
      'm_id': instance.mId,
      'vendor_id': instance.vendorId,
      'customer_id': instance.customerId,
      'description': instance.description,
      'vendor_description': instance.vendorDescription,
      'user_id': instance.userId,
      'device_id': instance.deviceId,
      'status': instance.status,
      'status_name': instance.statusName,
      'continuance': instance.continuance,
      'engineer': instance.engineer,
      'engineer_name': instance.engineerName,
      'type': instance.type,
      'type_name': instance.typeName,
      'expected_days_of_week': instance.expectedDaysOfWeek,
      'sign_image': instance.signImage,
      'expected_time_of_week': instance.expectedTimeOfWeek,
      'added_time': instance.addedTime,
      'appointed_datetime': instance.appointedDatetime,
      'work_start_datetime': instance.workStartDatetime,
      'work_end_datetime': instance.workEndDatetime,
      'name': instance.name,
      'tel': instance.tel,
      'fee': instance.fee,
      'work': instance.work,
      'error_reason': instance.errorReason,
      'attachment_url': instance.attachmentUrl,
      'vendor_name': instance.vendorName,
      'vendor_tel': instance.vendorTel,
      'customer_name': instance.customerName,
      'customer_tel': instance.customerTel,
      'customer_address': instance.customerAddress,
      'values': instance.values,
      'device_values': instance.deviceValues,
      'user_images': instance.userImages,
      'engineer_images': instance.engineerImages,
      'installations': instance.installations,
      'added_type': instance.addedType,
      'sn': instance.sn,
    };

_$ValueImpl _$$ValueImplFromJson(Map<String, dynamic> json) => _$ValueImpl(
      code: json['code'] as String,
      types: json['types'] as String,
      group1: json['group1'] as String?,
      group2: json['group2'] as String,
      item: json['item'] as String,
      value: json['value'] as String,
      remark: json['remark'] as String?,
    );

Map<String, dynamic> _$$ValueImplToJson(_$ValueImpl instance) =>
    <String, dynamic>{
      'code': instance.code,
      'types': instance.types,
      'group1': instance.group1,
      'group2': instance.group2,
      'item': instance.item,
      'value': instance.value,
      'remark': instance.remark,
    };

_$UserImageImpl _$$UserImageImplFromJson(Map<String, dynamic> json) =>
    _$UserImageImpl(
      mId: (json['m_id'] as num).toInt(),
      mUImageId: (json['m_u_image_id'] as num).toInt(),
      imageUrl: json['image_url'] as String,
    );

Map<String, dynamic> _$$UserImageImplToJson(_$UserImageImpl instance) =>
    <String, dynamic>{
      'm_id': instance.mId,
      'm_u_image_id': instance.mUImageId,
      'image_url': instance.imageUrl,
    };

_$EngineerImageImpl _$$EngineerImageImplFromJson(Map<String, dynamic> json) =>
    _$EngineerImageImpl(
      mId: (json['m_id'] as num).toInt(),
      mEImageId: (json['m_e_image_id'] as num).toInt(),
      kind: (json['kind'] as num).toInt(),
      imageUrl: json['image_url'] as String,
    );

Map<String, dynamic> _$$EngineerImageImplToJson(_$EngineerImageImpl instance) =>
    <String, dynamic>{
      'm_id': instance.mId,
      'm_e_image_id': instance.mEImageId,
      'kind': instance.kind,
      'image_url': instance.imageUrl,
    };

_$InstallationImpl _$$InstallationImplFromJson(Map<String, dynamic> json) =>
    _$InstallationImpl(
      modelId: (json['model_id'] as num).toInt(),
      name: json['name'] as String,
      imageUrl: json['image_url'] as String,
      description: json['description'] as String,
      guideUrl: json['guide_url'] as String,
      num: (json['num'] as num).toInt(),
    );

Map<String, dynamic> _$$InstallationImplToJson(_$InstallationImpl instance) =>
    <String, dynamic>{
      'model_id': instance.modelId,
      'name': instance.name,
      'image_url': instance.imageUrl,
      'description': instance.description,
      'guide_url': instance.guideUrl,
      'num': instance.num,
    };
