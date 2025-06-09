// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'DeviceInfoResponse.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$DeviceInfoResponseImpl _$$DeviceInfoResponseImplFromJson(
        Map<String, dynamic> json) =>
    _$DeviceInfoResponseImpl(
      deviceId: (json['device_id'] as num).toInt(),
      mac: json['mac'] as String?,
      sn: json['sn'] as String?,
      type: (json['type'] as num?)?.toInt(),
      name: json['name'] as String?,
      address: json['address'] as String?,
      placeId: (json['place_id'] as num?)?.toInt(),
      placeName: json['place_name'] as String?,
      areaId: (json['area_id'] as num?)?.toInt(),
      areaName: json['area_name'] as String?,
      modelId: (json['model_id'] as num?)?.toInt(),
      modelName: json['model_name'] as String,
      modelImageUrl: json['model_image_url'] as String,
      guideUrl: json['guide_url'] as String?,
      vendorId: (json['vendor_id'] as num).toInt(),
      vendorName: json['vendor_name'] as String?,
      vendorTel: json['vendor_tel'] as String?,
      vendorAddress: json['vendor_address'] as String?,
      customerId: (json['customer_id'] as num?)?.toInt(),
      customerName: json['customer_name'] as String?,
      customerAddress: json['customer_address'] as String?,
      installationDate: (json['installation_date'] as List<dynamic>?)
          ?.map((e) => (e as num).toInt())
          .toList(),
      online: (json['online'] as num?)?.toInt(),
      power: (json['power'] as num?)?.toInt(),
      error: (json['error'] as num?)?.toInt(),
      maintenanceTimes: (json['maintenance_times'] as num).toInt(),
      wifiStatus: (json['wifi_status'] as num?)?.toInt(),
      deviceValues: (json['device_values'] as List<dynamic>)
          .map((e) => DeviceValue.fromJson(e as Map<String, dynamic>))
          .toList(),
      cls: (json['cls'] as List<dynamic>?)
          ?.map((e) => Cl.fromJson(e as Map<String, dynamic>))
          .toList(),
      queues: (json['queues'] as List<dynamic>?)
          ?.map((e) => Queue.fromJson(e as Map<String, dynamic>))
          .toList(),
      areaQueues: (json['area_queues'] as List<dynamic>?)
          ?.map((e) => AreaQueue.fromJson(e as Map<String, dynamic>))
          .toList(),
      statistics: json['statistics'] == null
          ? null
          : Statistics.fromJson(json['statistics'] as Map<String, dynamic>),
      engineerImages: (json['engineer_images'] as List<dynamic>)
          .map((e) => EngineerImage.fromJson(e as Map<String, dynamic>))
          .toList(),
    );

Map<String, dynamic> _$$DeviceInfoResponseImplToJson(
        _$DeviceInfoResponseImpl instance) =>
    <String, dynamic>{
      'device_id': instance.deviceId,
      'mac': instance.mac,
      'sn': instance.sn,
      'type': instance.type,
      'name': instance.name,
      'address': instance.address,
      'place_id': instance.placeId,
      'place_name': instance.placeName,
      'area_id': instance.areaId,
      'area_name': instance.areaName,
      'model_id': instance.modelId,
      'model_name': instance.modelName,
      'model_image_url': instance.modelImageUrl,
      'guide_url': instance.guideUrl,
      'vendor_id': instance.vendorId,
      'vendor_name': instance.vendorName,
      'vendor_tel': instance.vendorTel,
      'vendor_address': instance.vendorAddress,
      'customer_id': instance.customerId,
      'customer_name': instance.customerName,
      'customer_address': instance.customerAddress,
      'installation_date': instance.installationDate,
      'online': instance.online,
      'power': instance.power,
      'error': instance.error,
      'maintenance_times': instance.maintenanceTimes,
      'wifi_status': instance.wifiStatus,
      'device_values': instance.deviceValues,
      'cls': instance.cls,
      'queues': instance.queues,
      'area_queues': instance.areaQueues,
      'statistics': instance.statistics,
      'engineer_images': instance.engineerImages,
    };

_$DeviceValueImpl _$$DeviceValueImplFromJson(Map<String, dynamic> json) =>
    _$DeviceValueImpl(
      code: json['code'] as String,
      types: json['types'] as String,
      group1: json['group1'] as String?,
      group2: json['group2'] as String,
      item: json['item'] as String,
      value: json['value'] as String,
      remark: json['remark'] as String,
    );

Map<String, dynamic> _$$DeviceValueImplToJson(_$DeviceValueImpl instance) =>
    <String, dynamic>{
      'code': instance.code,
      'types': instance.types,
      'group1': instance.group1,
      'group2': instance.group2,
      'item': instance.item,
      'value': instance.value,
      'remark': instance.remark,
    };

_$ClImpl _$$ClImplFromJson(Map<String, dynamic> json) => _$ClImpl(
      cl: json['cl'] as String,
      value: json['value'] as String?,
      cy: (json['cy'] as num?)?.toInt(),
      dateOfMonth: (json['date_of_month'] as num?)?.toInt(),
      weeks: json['weeks'] as String?,
      times: json['times'] as String?,
      notice: (json['notice'] as num?)?.toInt(),
      name: json['name'] as String,
      installationDate: json['installation_date'] as String,
      lifeMonth: (json['life_month'] as num).toInt(),
      lifeRate: (json['life_rate'] as num).toInt(),
    );

Map<String, dynamic> _$$ClImplToJson(_$ClImpl instance) => <String, dynamic>{
      'cl': instance.cl,
      'value': instance.value,
      'cy': instance.cy,
      'date_of_month': instance.dateOfMonth,
      'weeks': instance.weeks,
      'times': instance.times,
      'notice': instance.notice,
      'name': instance.name,
      'installation_date': instance.installationDate,
      'life_month': instance.lifeMonth,
      'life_rate': instance.lifeRate,
    };

_$QueueImpl _$$QueueImplFromJson(Map<String, dynamic> json) => _$QueueImpl(
      qId: (json['q_id'] as num).toInt(),
      deviceId: (json['device_id'] as num).toInt(),
      name: json['name'] as String,
      weeks: json['weeks'] as String,
      openTimes: json['open_times'] as String,
      sleepTimes: json['sleep_times'] as String,
    );

Map<String, dynamic> _$$QueueImplToJson(_$QueueImpl instance) =>
    <String, dynamic>{
      'q_id': instance.qId,
      'device_id': instance.deviceId,
      'name': instance.name,
      'weeks': instance.weeks,
      'open_times': instance.openTimes,
      'sleep_times': instance.sleepTimes,
    };

_$AreaQueueImpl _$$AreaQueueImplFromJson(Map<String, dynamic> json) =>
    _$AreaQueueImpl(
      qId: (json['q_id'] as num).toInt(),
      areaId: (json['area_id'] as num).toInt(),
      name: json['name'] as String,
      weeks: json['weeks'] as String,
      openTimes: json['open_times'] as String,
      sleepTimes: json['sleep_times'] as String,
      addedTime: json['added_time'] as String,
    );

Map<String, dynamic> _$$AreaQueueImplToJson(_$AreaQueueImpl instance) =>
    <String, dynamic>{
      'q_id': instance.qId,
      'area_id': instance.areaId,
      'name': instance.name,
      'weeks': instance.weeks,
      'open_times': instance.openTimes,
      'sleep_times': instance.sleepTimes,
      'added_time': instance.addedTime,
    };

_$StatisticsImpl _$$StatisticsImplFromJson(Map<String, dynamic> json) =>
    _$StatisticsImpl(
      h08: (json['h08'] as num).toInt(),
      h09: (json['h09'] as num).toInt(),
      h0a: (json['h0a'] as num).toInt(),
      h12a: json['h12a'] as String?,
      h00: (json['h00'] as num).toInt(),
      h03: (json['h03'] as num).toInt(),
      h04: (json['h04'] as num).toInt(),
      p01: (json['p01'] as num).toInt(),
      h01: (json['h01'] as num?)?.toInt(),
      h05: json['h05'] as String?,
      h07: json['h07'] as String?,
      h25: json['h25'] as String?,
      h25A: json['h25_a'] as String?,
      h24: json['h24'] as String?,
      h00a: (json['h00a'] as num).toInt(),
      h2e: (json['h2e'] as num).toInt(),
      h2eN: json['h2e_n'] as String?,
    );

Map<String, dynamic> _$$StatisticsImplToJson(_$StatisticsImpl instance) =>
    <String, dynamic>{
      'h08': instance.h08,
      'h09': instance.h09,
      'h0a': instance.h0a,
      'h12a': instance.h12a,
      'h00': instance.h00,
      'h03': instance.h03,
      'h04': instance.h04,
      'p01': instance.p01,
      'h01': instance.h01,
      'h05': instance.h05,
      'h07': instance.h07,
      'h25': instance.h25,
      'h25_a': instance.h25A,
      'h24': instance.h24,
      'h00a': instance.h00a,
      'h2e': instance.h2e,
      'h2e_n': instance.h2eN,
    };

_$EngineerImageImpl _$$EngineerImageImplFromJson(Map<String, dynamic> json) =>
    _$EngineerImageImpl(
      deviceId: (json['device_id'] as num).toInt(),
      deImageId: (json['d_e_image_id'] as num).toInt(),
      kind: (json['kind'] as num).toInt(),
      imageUrl: json['image_url'] as String,
    );

Map<String, dynamic> _$$EngineerImageImplToJson(_$EngineerImageImpl instance) =>
    <String, dynamic>{
      'device_id': instance.deviceId,
      'd_e_image_id': instance.deImageId,
      'kind': instance.kind,
      'image_url': instance.imageUrl,
    };
