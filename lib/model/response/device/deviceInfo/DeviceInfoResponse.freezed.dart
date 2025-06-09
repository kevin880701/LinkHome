// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'DeviceInfoResponse.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

DeviceInfoResponse _$DeviceInfoResponseFromJson(Map<String, dynamic> json) {
  return _DeviceInfoResponse.fromJson(json);
}

/// @nodoc
mixin _$DeviceInfoResponse {
  @JsonKey(name: 'device_id')
  int get deviceId => throw _privateConstructorUsedError;
  @JsonKey(name: 'mac')
  String? get mac => throw _privateConstructorUsedError;
  @JsonKey(name: 'sn')
  String? get sn => throw _privateConstructorUsedError;
  @JsonKey(name: 'type')
  int? get type => throw _privateConstructorUsedError;
  @JsonKey(name: 'name')
  String? get name => throw _privateConstructorUsedError;
  @JsonKey(name: 'address')
  String? get address => throw _privateConstructorUsedError;
  @JsonKey(name: 'place_id')
  int? get placeId => throw _privateConstructorUsedError;
  @JsonKey(name: 'place_name')
  String? get placeName => throw _privateConstructorUsedError;
  @JsonKey(name: 'area_id')
  int? get areaId => throw _privateConstructorUsedError;
  @JsonKey(name: 'area_name')
  String? get areaName => throw _privateConstructorUsedError;
  @JsonKey(name: 'model_id')
  int? get modelId => throw _privateConstructorUsedError;
  @JsonKey(name: 'model_name')
  String get modelName => throw _privateConstructorUsedError;
  @JsonKey(name: 'model_image_url')
  String get modelImageUrl => throw _privateConstructorUsedError;
  @JsonKey(name: 'guide_url')
  String? get guideUrl => throw _privateConstructorUsedError;
  @JsonKey(name: 'vendor_id')
  int get vendorId => throw _privateConstructorUsedError;
  @JsonKey(name: 'vendor_name')
  String? get vendorName => throw _privateConstructorUsedError;
  @JsonKey(name: 'vendor_tel')
  String? get vendorTel => throw _privateConstructorUsedError;
  @JsonKey(name: 'vendor_address')
  String? get vendorAddress => throw _privateConstructorUsedError;
  @JsonKey(name: 'customer_id')
  int? get customerId => throw _privateConstructorUsedError;
  @JsonKey(name: 'customer_name')
  String? get customerName => throw _privateConstructorUsedError;
  @JsonKey(name: 'customer_address')
  String? get customerAddress => throw _privateConstructorUsedError;
  @JsonKey(name: 'installation_date')
  List<int>? get installationDate => throw _privateConstructorUsedError;
  @JsonKey(name: 'online')
  int? get online => throw _privateConstructorUsedError;
  @JsonKey(name: 'power')
  int? get power => throw _privateConstructorUsedError;
  @JsonKey(name: 'error')
  int? get error => throw _privateConstructorUsedError;
  @JsonKey(name: 'maintenance_times')
  int get maintenanceTimes => throw _privateConstructorUsedError;
  @JsonKey(name: 'wifi_status')
  int? get wifiStatus => throw _privateConstructorUsedError;
  @JsonKey(name: 'device_values')
  List<DeviceValue> get deviceValues => throw _privateConstructorUsedError;
  @JsonKey(name: 'cls')
  List<Cl>? get cls => throw _privateConstructorUsedError;
  @JsonKey(name: 'queues')
  List<Queue>? get queues => throw _privateConstructorUsedError;
  @JsonKey(name: 'area_queues')
  List<AreaQueue>? get areaQueues => throw _privateConstructorUsedError;
  @JsonKey(name: 'statistics')
  Statistics? get statistics => throw _privateConstructorUsedError;
  @JsonKey(name: 'engineer_images')
  List<EngineerImage> get engineerImages => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $DeviceInfoResponseCopyWith<DeviceInfoResponse> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $DeviceInfoResponseCopyWith<$Res> {
  factory $DeviceInfoResponseCopyWith(
          DeviceInfoResponse value, $Res Function(DeviceInfoResponse) then) =
      _$DeviceInfoResponseCopyWithImpl<$Res, DeviceInfoResponse>;
  @useResult
  $Res call(
      {@JsonKey(name: 'device_id') int deviceId,
      @JsonKey(name: 'mac') String? mac,
      @JsonKey(name: 'sn') String? sn,
      @JsonKey(name: 'type') int? type,
      @JsonKey(name: 'name') String? name,
      @JsonKey(name: 'address') String? address,
      @JsonKey(name: 'place_id') int? placeId,
      @JsonKey(name: 'place_name') String? placeName,
      @JsonKey(name: 'area_id') int? areaId,
      @JsonKey(name: 'area_name') String? areaName,
      @JsonKey(name: 'model_id') int? modelId,
      @JsonKey(name: 'model_name') String modelName,
      @JsonKey(name: 'model_image_url') String modelImageUrl,
      @JsonKey(name: 'guide_url') String? guideUrl,
      @JsonKey(name: 'vendor_id') int vendorId,
      @JsonKey(name: 'vendor_name') String? vendorName,
      @JsonKey(name: 'vendor_tel') String? vendorTel,
      @JsonKey(name: 'vendor_address') String? vendorAddress,
      @JsonKey(name: 'customer_id') int? customerId,
      @JsonKey(name: 'customer_name') String? customerName,
      @JsonKey(name: 'customer_address') String? customerAddress,
      @JsonKey(name: 'installation_date') List<int>? installationDate,
      @JsonKey(name: 'online') int? online,
      @JsonKey(name: 'power') int? power,
      @JsonKey(name: 'error') int? error,
      @JsonKey(name: 'maintenance_times') int maintenanceTimes,
      @JsonKey(name: 'wifi_status') int? wifiStatus,
      @JsonKey(name: 'device_values') List<DeviceValue> deviceValues,
      @JsonKey(name: 'cls') List<Cl>? cls,
      @JsonKey(name: 'queues') List<Queue>? queues,
      @JsonKey(name: 'area_queues') List<AreaQueue>? areaQueues,
      @JsonKey(name: 'statistics') Statistics? statistics,
      @JsonKey(name: 'engineer_images') List<EngineerImage> engineerImages});

  $StatisticsCopyWith<$Res>? get statistics;
}

/// @nodoc
class _$DeviceInfoResponseCopyWithImpl<$Res, $Val extends DeviceInfoResponse>
    implements $DeviceInfoResponseCopyWith<$Res> {
  _$DeviceInfoResponseCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? deviceId = null,
    Object? mac = freezed,
    Object? sn = freezed,
    Object? type = freezed,
    Object? name = freezed,
    Object? address = freezed,
    Object? placeId = freezed,
    Object? placeName = freezed,
    Object? areaId = freezed,
    Object? areaName = freezed,
    Object? modelId = freezed,
    Object? modelName = null,
    Object? modelImageUrl = null,
    Object? guideUrl = freezed,
    Object? vendorId = null,
    Object? vendorName = freezed,
    Object? vendorTel = freezed,
    Object? vendorAddress = freezed,
    Object? customerId = freezed,
    Object? customerName = freezed,
    Object? customerAddress = freezed,
    Object? installationDate = freezed,
    Object? online = freezed,
    Object? power = freezed,
    Object? error = freezed,
    Object? maintenanceTimes = null,
    Object? wifiStatus = freezed,
    Object? deviceValues = null,
    Object? cls = freezed,
    Object? queues = freezed,
    Object? areaQueues = freezed,
    Object? statistics = freezed,
    Object? engineerImages = null,
  }) {
    return _then(_value.copyWith(
      deviceId: null == deviceId
          ? _value.deviceId
          : deviceId // ignore: cast_nullable_to_non_nullable
              as int,
      mac: freezed == mac
          ? _value.mac
          : mac // ignore: cast_nullable_to_non_nullable
              as String?,
      sn: freezed == sn
          ? _value.sn
          : sn // ignore: cast_nullable_to_non_nullable
              as String?,
      type: freezed == type
          ? _value.type
          : type // ignore: cast_nullable_to_non_nullable
              as int?,
      name: freezed == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String?,
      address: freezed == address
          ? _value.address
          : address // ignore: cast_nullable_to_non_nullable
              as String?,
      placeId: freezed == placeId
          ? _value.placeId
          : placeId // ignore: cast_nullable_to_non_nullable
              as int?,
      placeName: freezed == placeName
          ? _value.placeName
          : placeName // ignore: cast_nullable_to_non_nullable
              as String?,
      areaId: freezed == areaId
          ? _value.areaId
          : areaId // ignore: cast_nullable_to_non_nullable
              as int?,
      areaName: freezed == areaName
          ? _value.areaName
          : areaName // ignore: cast_nullable_to_non_nullable
              as String?,
      modelId: freezed == modelId
          ? _value.modelId
          : modelId // ignore: cast_nullable_to_non_nullable
              as int?,
      modelName: null == modelName
          ? _value.modelName
          : modelName // ignore: cast_nullable_to_non_nullable
              as String,
      modelImageUrl: null == modelImageUrl
          ? _value.modelImageUrl
          : modelImageUrl // ignore: cast_nullable_to_non_nullable
              as String,
      guideUrl: freezed == guideUrl
          ? _value.guideUrl
          : guideUrl // ignore: cast_nullable_to_non_nullable
              as String?,
      vendorId: null == vendorId
          ? _value.vendorId
          : vendorId // ignore: cast_nullable_to_non_nullable
              as int,
      vendorName: freezed == vendorName
          ? _value.vendorName
          : vendorName // ignore: cast_nullable_to_non_nullable
              as String?,
      vendorTel: freezed == vendorTel
          ? _value.vendorTel
          : vendorTel // ignore: cast_nullable_to_non_nullable
              as String?,
      vendorAddress: freezed == vendorAddress
          ? _value.vendorAddress
          : vendorAddress // ignore: cast_nullable_to_non_nullable
              as String?,
      customerId: freezed == customerId
          ? _value.customerId
          : customerId // ignore: cast_nullable_to_non_nullable
              as int?,
      customerName: freezed == customerName
          ? _value.customerName
          : customerName // ignore: cast_nullable_to_non_nullable
              as String?,
      customerAddress: freezed == customerAddress
          ? _value.customerAddress
          : customerAddress // ignore: cast_nullable_to_non_nullable
              as String?,
      installationDate: freezed == installationDate
          ? _value.installationDate
          : installationDate // ignore: cast_nullable_to_non_nullable
              as List<int>?,
      online: freezed == online
          ? _value.online
          : online // ignore: cast_nullable_to_non_nullable
              as int?,
      power: freezed == power
          ? _value.power
          : power // ignore: cast_nullable_to_non_nullable
              as int?,
      error: freezed == error
          ? _value.error
          : error // ignore: cast_nullable_to_non_nullable
              as int?,
      maintenanceTimes: null == maintenanceTimes
          ? _value.maintenanceTimes
          : maintenanceTimes // ignore: cast_nullable_to_non_nullable
              as int,
      wifiStatus: freezed == wifiStatus
          ? _value.wifiStatus
          : wifiStatus // ignore: cast_nullable_to_non_nullable
              as int?,
      deviceValues: null == deviceValues
          ? _value.deviceValues
          : deviceValues // ignore: cast_nullable_to_non_nullable
              as List<DeviceValue>,
      cls: freezed == cls
          ? _value.cls
          : cls // ignore: cast_nullable_to_non_nullable
              as List<Cl>?,
      queues: freezed == queues
          ? _value.queues
          : queues // ignore: cast_nullable_to_non_nullable
              as List<Queue>?,
      areaQueues: freezed == areaQueues
          ? _value.areaQueues
          : areaQueues // ignore: cast_nullable_to_non_nullable
              as List<AreaQueue>?,
      statistics: freezed == statistics
          ? _value.statistics
          : statistics // ignore: cast_nullable_to_non_nullable
              as Statistics?,
      engineerImages: null == engineerImages
          ? _value.engineerImages
          : engineerImages // ignore: cast_nullable_to_non_nullable
              as List<EngineerImage>,
    ) as $Val);
  }

  @override
  @pragma('vm:prefer-inline')
  $StatisticsCopyWith<$Res>? get statistics {
    if (_value.statistics == null) {
      return null;
    }

    return $StatisticsCopyWith<$Res>(_value.statistics!, (value) {
      return _then(_value.copyWith(statistics: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$DeviceInfoResponseImplCopyWith<$Res>
    implements $DeviceInfoResponseCopyWith<$Res> {
  factory _$$DeviceInfoResponseImplCopyWith(_$DeviceInfoResponseImpl value,
          $Res Function(_$DeviceInfoResponseImpl) then) =
      __$$DeviceInfoResponseImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {@JsonKey(name: 'device_id') int deviceId,
      @JsonKey(name: 'mac') String? mac,
      @JsonKey(name: 'sn') String? sn,
      @JsonKey(name: 'type') int? type,
      @JsonKey(name: 'name') String? name,
      @JsonKey(name: 'address') String? address,
      @JsonKey(name: 'place_id') int? placeId,
      @JsonKey(name: 'place_name') String? placeName,
      @JsonKey(name: 'area_id') int? areaId,
      @JsonKey(name: 'area_name') String? areaName,
      @JsonKey(name: 'model_id') int? modelId,
      @JsonKey(name: 'model_name') String modelName,
      @JsonKey(name: 'model_image_url') String modelImageUrl,
      @JsonKey(name: 'guide_url') String? guideUrl,
      @JsonKey(name: 'vendor_id') int vendorId,
      @JsonKey(name: 'vendor_name') String? vendorName,
      @JsonKey(name: 'vendor_tel') String? vendorTel,
      @JsonKey(name: 'vendor_address') String? vendorAddress,
      @JsonKey(name: 'customer_id') int? customerId,
      @JsonKey(name: 'customer_name') String? customerName,
      @JsonKey(name: 'customer_address') String? customerAddress,
      @JsonKey(name: 'installation_date') List<int>? installationDate,
      @JsonKey(name: 'online') int? online,
      @JsonKey(name: 'power') int? power,
      @JsonKey(name: 'error') int? error,
      @JsonKey(name: 'maintenance_times') int maintenanceTimes,
      @JsonKey(name: 'wifi_status') int? wifiStatus,
      @JsonKey(name: 'device_values') List<DeviceValue> deviceValues,
      @JsonKey(name: 'cls') List<Cl>? cls,
      @JsonKey(name: 'queues') List<Queue>? queues,
      @JsonKey(name: 'area_queues') List<AreaQueue>? areaQueues,
      @JsonKey(name: 'statistics') Statistics? statistics,
      @JsonKey(name: 'engineer_images') List<EngineerImage> engineerImages});

  @override
  $StatisticsCopyWith<$Res>? get statistics;
}

/// @nodoc
class __$$DeviceInfoResponseImplCopyWithImpl<$Res>
    extends _$DeviceInfoResponseCopyWithImpl<$Res, _$DeviceInfoResponseImpl>
    implements _$$DeviceInfoResponseImplCopyWith<$Res> {
  __$$DeviceInfoResponseImplCopyWithImpl(_$DeviceInfoResponseImpl _value,
      $Res Function(_$DeviceInfoResponseImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? deviceId = null,
    Object? mac = freezed,
    Object? sn = freezed,
    Object? type = freezed,
    Object? name = freezed,
    Object? address = freezed,
    Object? placeId = freezed,
    Object? placeName = freezed,
    Object? areaId = freezed,
    Object? areaName = freezed,
    Object? modelId = freezed,
    Object? modelName = null,
    Object? modelImageUrl = null,
    Object? guideUrl = freezed,
    Object? vendorId = null,
    Object? vendorName = freezed,
    Object? vendorTel = freezed,
    Object? vendorAddress = freezed,
    Object? customerId = freezed,
    Object? customerName = freezed,
    Object? customerAddress = freezed,
    Object? installationDate = freezed,
    Object? online = freezed,
    Object? power = freezed,
    Object? error = freezed,
    Object? maintenanceTimes = null,
    Object? wifiStatus = freezed,
    Object? deviceValues = null,
    Object? cls = freezed,
    Object? queues = freezed,
    Object? areaQueues = freezed,
    Object? statistics = freezed,
    Object? engineerImages = null,
  }) {
    return _then(_$DeviceInfoResponseImpl(
      deviceId: null == deviceId
          ? _value.deviceId
          : deviceId // ignore: cast_nullable_to_non_nullable
              as int,
      mac: freezed == mac
          ? _value.mac
          : mac // ignore: cast_nullable_to_non_nullable
              as String?,
      sn: freezed == sn
          ? _value.sn
          : sn // ignore: cast_nullable_to_non_nullable
              as String?,
      type: freezed == type
          ? _value.type
          : type // ignore: cast_nullable_to_non_nullable
              as int?,
      name: freezed == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String?,
      address: freezed == address
          ? _value.address
          : address // ignore: cast_nullable_to_non_nullable
              as String?,
      placeId: freezed == placeId
          ? _value.placeId
          : placeId // ignore: cast_nullable_to_non_nullable
              as int?,
      placeName: freezed == placeName
          ? _value.placeName
          : placeName // ignore: cast_nullable_to_non_nullable
              as String?,
      areaId: freezed == areaId
          ? _value.areaId
          : areaId // ignore: cast_nullable_to_non_nullable
              as int?,
      areaName: freezed == areaName
          ? _value.areaName
          : areaName // ignore: cast_nullable_to_non_nullable
              as String?,
      modelId: freezed == modelId
          ? _value.modelId
          : modelId // ignore: cast_nullable_to_non_nullable
              as int?,
      modelName: null == modelName
          ? _value.modelName
          : modelName // ignore: cast_nullable_to_non_nullable
              as String,
      modelImageUrl: null == modelImageUrl
          ? _value.modelImageUrl
          : modelImageUrl // ignore: cast_nullable_to_non_nullable
              as String,
      guideUrl: freezed == guideUrl
          ? _value.guideUrl
          : guideUrl // ignore: cast_nullable_to_non_nullable
              as String?,
      vendorId: null == vendorId
          ? _value.vendorId
          : vendorId // ignore: cast_nullable_to_non_nullable
              as int,
      vendorName: freezed == vendorName
          ? _value.vendorName
          : vendorName // ignore: cast_nullable_to_non_nullable
              as String?,
      vendorTel: freezed == vendorTel
          ? _value.vendorTel
          : vendorTel // ignore: cast_nullable_to_non_nullable
              as String?,
      vendorAddress: freezed == vendorAddress
          ? _value.vendorAddress
          : vendorAddress // ignore: cast_nullable_to_non_nullable
              as String?,
      customerId: freezed == customerId
          ? _value.customerId
          : customerId // ignore: cast_nullable_to_non_nullable
              as int?,
      customerName: freezed == customerName
          ? _value.customerName
          : customerName // ignore: cast_nullable_to_non_nullable
              as String?,
      customerAddress: freezed == customerAddress
          ? _value.customerAddress
          : customerAddress // ignore: cast_nullable_to_non_nullable
              as String?,
      installationDate: freezed == installationDate
          ? _value._installationDate
          : installationDate // ignore: cast_nullable_to_non_nullable
              as List<int>?,
      online: freezed == online
          ? _value.online
          : online // ignore: cast_nullable_to_non_nullable
              as int?,
      power: freezed == power
          ? _value.power
          : power // ignore: cast_nullable_to_non_nullable
              as int?,
      error: freezed == error
          ? _value.error
          : error // ignore: cast_nullable_to_non_nullable
              as int?,
      maintenanceTimes: null == maintenanceTimes
          ? _value.maintenanceTimes
          : maintenanceTimes // ignore: cast_nullable_to_non_nullable
              as int,
      wifiStatus: freezed == wifiStatus
          ? _value.wifiStatus
          : wifiStatus // ignore: cast_nullable_to_non_nullable
              as int?,
      deviceValues: null == deviceValues
          ? _value._deviceValues
          : deviceValues // ignore: cast_nullable_to_non_nullable
              as List<DeviceValue>,
      cls: freezed == cls
          ? _value._cls
          : cls // ignore: cast_nullable_to_non_nullable
              as List<Cl>?,
      queues: freezed == queues
          ? _value._queues
          : queues // ignore: cast_nullable_to_non_nullable
              as List<Queue>?,
      areaQueues: freezed == areaQueues
          ? _value._areaQueues
          : areaQueues // ignore: cast_nullable_to_non_nullable
              as List<AreaQueue>?,
      statistics: freezed == statistics
          ? _value.statistics
          : statistics // ignore: cast_nullable_to_non_nullable
              as Statistics?,
      engineerImages: null == engineerImages
          ? _value._engineerImages
          : engineerImages // ignore: cast_nullable_to_non_nullable
              as List<EngineerImage>,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$DeviceInfoResponseImpl implements _DeviceInfoResponse {
  const _$DeviceInfoResponseImpl(
      {@JsonKey(name: 'device_id') required this.deviceId,
      @JsonKey(name: 'mac') this.mac,
      @JsonKey(name: 'sn') this.sn,
      @JsonKey(name: 'type') this.type,
      @JsonKey(name: 'name') this.name,
      @JsonKey(name: 'address') this.address,
      @JsonKey(name: 'place_id') this.placeId,
      @JsonKey(name: 'place_name') this.placeName,
      @JsonKey(name: 'area_id') this.areaId,
      @JsonKey(name: 'area_name') this.areaName,
      @JsonKey(name: 'model_id') this.modelId,
      @JsonKey(name: 'model_name') required this.modelName,
      @JsonKey(name: 'model_image_url') required this.modelImageUrl,
      @JsonKey(name: 'guide_url') this.guideUrl,
      @JsonKey(name: 'vendor_id') required this.vendorId,
      @JsonKey(name: 'vendor_name') this.vendorName,
      @JsonKey(name: 'vendor_tel') this.vendorTel,
      @JsonKey(name: 'vendor_address') this.vendorAddress,
      @JsonKey(name: 'customer_id') this.customerId,
      @JsonKey(name: 'customer_name') this.customerName,
      @JsonKey(name: 'customer_address') this.customerAddress,
      @JsonKey(name: 'installation_date') final List<int>? installationDate,
      @JsonKey(name: 'online') this.online,
      @JsonKey(name: 'power') this.power,
      @JsonKey(name: 'error') this.error,
      @JsonKey(name: 'maintenance_times') required this.maintenanceTimes,
      @JsonKey(name: 'wifi_status') this.wifiStatus,
      @JsonKey(name: 'device_values')
      required final List<DeviceValue> deviceValues,
      @JsonKey(name: 'cls') final List<Cl>? cls,
      @JsonKey(name: 'queues') final List<Queue>? queues,
      @JsonKey(name: 'area_queues') final List<AreaQueue>? areaQueues,
      @JsonKey(name: 'statistics') this.statistics,
      @JsonKey(name: 'engineer_images')
      required final List<EngineerImage> engineerImages})
      : _installationDate = installationDate,
        _deviceValues = deviceValues,
        _cls = cls,
        _queues = queues,
        _areaQueues = areaQueues,
        _engineerImages = engineerImages;

  factory _$DeviceInfoResponseImpl.fromJson(Map<String, dynamic> json) =>
      _$$DeviceInfoResponseImplFromJson(json);

  @override
  @JsonKey(name: 'device_id')
  final int deviceId;
  @override
  @JsonKey(name: 'mac')
  final String? mac;
  @override
  @JsonKey(name: 'sn')
  final String? sn;
  @override
  @JsonKey(name: 'type')
  final int? type;
  @override
  @JsonKey(name: 'name')
  final String? name;
  @override
  @JsonKey(name: 'address')
  final String? address;
  @override
  @JsonKey(name: 'place_id')
  final int? placeId;
  @override
  @JsonKey(name: 'place_name')
  final String? placeName;
  @override
  @JsonKey(name: 'area_id')
  final int? areaId;
  @override
  @JsonKey(name: 'area_name')
  final String? areaName;
  @override
  @JsonKey(name: 'model_id')
  final int? modelId;
  @override
  @JsonKey(name: 'model_name')
  final String modelName;
  @override
  @JsonKey(name: 'model_image_url')
  final String modelImageUrl;
  @override
  @JsonKey(name: 'guide_url')
  final String? guideUrl;
  @override
  @JsonKey(name: 'vendor_id')
  final int vendorId;
  @override
  @JsonKey(name: 'vendor_name')
  final String? vendorName;
  @override
  @JsonKey(name: 'vendor_tel')
  final String? vendorTel;
  @override
  @JsonKey(name: 'vendor_address')
  final String? vendorAddress;
  @override
  @JsonKey(name: 'customer_id')
  final int? customerId;
  @override
  @JsonKey(name: 'customer_name')
  final String? customerName;
  @override
  @JsonKey(name: 'customer_address')
  final String? customerAddress;
  final List<int>? _installationDate;
  @override
  @JsonKey(name: 'installation_date')
  List<int>? get installationDate {
    final value = _installationDate;
    if (value == null) return null;
    if (_installationDate is EqualUnmodifiableListView)
      return _installationDate;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(value);
  }

  @override
  @JsonKey(name: 'online')
  final int? online;
  @override
  @JsonKey(name: 'power')
  final int? power;
  @override
  @JsonKey(name: 'error')
  final int? error;
  @override
  @JsonKey(name: 'maintenance_times')
  final int maintenanceTimes;
  @override
  @JsonKey(name: 'wifi_status')
  final int? wifiStatus;
  final List<DeviceValue> _deviceValues;
  @override
  @JsonKey(name: 'device_values')
  List<DeviceValue> get deviceValues {
    if (_deviceValues is EqualUnmodifiableListView) return _deviceValues;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_deviceValues);
  }

  final List<Cl>? _cls;
  @override
  @JsonKey(name: 'cls')
  List<Cl>? get cls {
    final value = _cls;
    if (value == null) return null;
    if (_cls is EqualUnmodifiableListView) return _cls;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(value);
  }

  final List<Queue>? _queues;
  @override
  @JsonKey(name: 'queues')
  List<Queue>? get queues {
    final value = _queues;
    if (value == null) return null;
    if (_queues is EqualUnmodifiableListView) return _queues;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(value);
  }

  final List<AreaQueue>? _areaQueues;
  @override
  @JsonKey(name: 'area_queues')
  List<AreaQueue>? get areaQueues {
    final value = _areaQueues;
    if (value == null) return null;
    if (_areaQueues is EqualUnmodifiableListView) return _areaQueues;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(value);
  }

  @override
  @JsonKey(name: 'statistics')
  final Statistics? statistics;
  final List<EngineerImage> _engineerImages;
  @override
  @JsonKey(name: 'engineer_images')
  List<EngineerImage> get engineerImages {
    if (_engineerImages is EqualUnmodifiableListView) return _engineerImages;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_engineerImages);
  }

  @override
  String toString() {
    return 'DeviceInfoResponse(deviceId: $deviceId, mac: $mac, sn: $sn, type: $type, name: $name, address: $address, placeId: $placeId, placeName: $placeName, areaId: $areaId, areaName: $areaName, modelId: $modelId, modelName: $modelName, modelImageUrl: $modelImageUrl, guideUrl: $guideUrl, vendorId: $vendorId, vendorName: $vendorName, vendorTel: $vendorTel, vendorAddress: $vendorAddress, customerId: $customerId, customerName: $customerName, customerAddress: $customerAddress, installationDate: $installationDate, online: $online, power: $power, error: $error, maintenanceTimes: $maintenanceTimes, wifiStatus: $wifiStatus, deviceValues: $deviceValues, cls: $cls, queues: $queues, areaQueues: $areaQueues, statistics: $statistics, engineerImages: $engineerImages)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$DeviceInfoResponseImpl &&
            (identical(other.deviceId, deviceId) ||
                other.deviceId == deviceId) &&
            (identical(other.mac, mac) || other.mac == mac) &&
            (identical(other.sn, sn) || other.sn == sn) &&
            (identical(other.type, type) || other.type == type) &&
            (identical(other.name, name) || other.name == name) &&
            (identical(other.address, address) || other.address == address) &&
            (identical(other.placeId, placeId) || other.placeId == placeId) &&
            (identical(other.placeName, placeName) ||
                other.placeName == placeName) &&
            (identical(other.areaId, areaId) || other.areaId == areaId) &&
            (identical(other.areaName, areaName) ||
                other.areaName == areaName) &&
            (identical(other.modelId, modelId) || other.modelId == modelId) &&
            (identical(other.modelName, modelName) ||
                other.modelName == modelName) &&
            (identical(other.modelImageUrl, modelImageUrl) ||
                other.modelImageUrl == modelImageUrl) &&
            (identical(other.guideUrl, guideUrl) ||
                other.guideUrl == guideUrl) &&
            (identical(other.vendorId, vendorId) ||
                other.vendorId == vendorId) &&
            (identical(other.vendorName, vendorName) ||
                other.vendorName == vendorName) &&
            (identical(other.vendorTel, vendorTel) ||
                other.vendorTel == vendorTel) &&
            (identical(other.vendorAddress, vendorAddress) ||
                other.vendorAddress == vendorAddress) &&
            (identical(other.customerId, customerId) ||
                other.customerId == customerId) &&
            (identical(other.customerName, customerName) ||
                other.customerName == customerName) &&
            (identical(other.customerAddress, customerAddress) ||
                other.customerAddress == customerAddress) &&
            const DeepCollectionEquality()
                .equals(other._installationDate, _installationDate) &&
            (identical(other.online, online) || other.online == online) &&
            (identical(other.power, power) || other.power == power) &&
            (identical(other.error, error) || other.error == error) &&
            (identical(other.maintenanceTimes, maintenanceTimes) ||
                other.maintenanceTimes == maintenanceTimes) &&
            (identical(other.wifiStatus, wifiStatus) ||
                other.wifiStatus == wifiStatus) &&
            const DeepCollectionEquality()
                .equals(other._deviceValues, _deviceValues) &&
            const DeepCollectionEquality().equals(other._cls, _cls) &&
            const DeepCollectionEquality().equals(other._queues, _queues) &&
            const DeepCollectionEquality()
                .equals(other._areaQueues, _areaQueues) &&
            (identical(other.statistics, statistics) ||
                other.statistics == statistics) &&
            const DeepCollectionEquality()
                .equals(other._engineerImages, _engineerImages));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hashAll([
        runtimeType,
        deviceId,
        mac,
        sn,
        type,
        name,
        address,
        placeId,
        placeName,
        areaId,
        areaName,
        modelId,
        modelName,
        modelImageUrl,
        guideUrl,
        vendorId,
        vendorName,
        vendorTel,
        vendorAddress,
        customerId,
        customerName,
        customerAddress,
        const DeepCollectionEquality().hash(_installationDate),
        online,
        power,
        error,
        maintenanceTimes,
        wifiStatus,
        const DeepCollectionEquality().hash(_deviceValues),
        const DeepCollectionEquality().hash(_cls),
        const DeepCollectionEquality().hash(_queues),
        const DeepCollectionEquality().hash(_areaQueues),
        statistics,
        const DeepCollectionEquality().hash(_engineerImages)
      ]);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$DeviceInfoResponseImplCopyWith<_$DeviceInfoResponseImpl> get copyWith =>
      __$$DeviceInfoResponseImplCopyWithImpl<_$DeviceInfoResponseImpl>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$DeviceInfoResponseImplToJson(
      this,
    );
  }
}

abstract class _DeviceInfoResponse implements DeviceInfoResponse {
  const factory _DeviceInfoResponse(
      {@JsonKey(name: 'device_id') required final int deviceId,
      @JsonKey(name: 'mac') final String? mac,
      @JsonKey(name: 'sn') final String? sn,
      @JsonKey(name: 'type') final int? type,
      @JsonKey(name: 'name') final String? name,
      @JsonKey(name: 'address') final String? address,
      @JsonKey(name: 'place_id') final int? placeId,
      @JsonKey(name: 'place_name') final String? placeName,
      @JsonKey(name: 'area_id') final int? areaId,
      @JsonKey(name: 'area_name') final String? areaName,
      @JsonKey(name: 'model_id') final int? modelId,
      @JsonKey(name: 'model_name') required final String modelName,
      @JsonKey(name: 'model_image_url') required final String modelImageUrl,
      @JsonKey(name: 'guide_url') final String? guideUrl,
      @JsonKey(name: 'vendor_id') required final int vendorId,
      @JsonKey(name: 'vendor_name') final String? vendorName,
      @JsonKey(name: 'vendor_tel') final String? vendorTel,
      @JsonKey(name: 'vendor_address') final String? vendorAddress,
      @JsonKey(name: 'customer_id') final int? customerId,
      @JsonKey(name: 'customer_name') final String? customerName,
      @JsonKey(name: 'customer_address') final String? customerAddress,
      @JsonKey(name: 'installation_date') final List<int>? installationDate,
      @JsonKey(name: 'online') final int? online,
      @JsonKey(name: 'power') final int? power,
      @JsonKey(name: 'error') final int? error,
      @JsonKey(name: 'maintenance_times') required final int maintenanceTimes,
      @JsonKey(name: 'wifi_status') final int? wifiStatus,
      @JsonKey(name: 'device_values')
      required final List<DeviceValue> deviceValues,
      @JsonKey(name: 'cls') final List<Cl>? cls,
      @JsonKey(name: 'queues') final List<Queue>? queues,
      @JsonKey(name: 'area_queues') final List<AreaQueue>? areaQueues,
      @JsonKey(name: 'statistics') final Statistics? statistics,
      @JsonKey(name: 'engineer_images')
      required final List<EngineerImage>
          engineerImages}) = _$DeviceInfoResponseImpl;

  factory _DeviceInfoResponse.fromJson(Map<String, dynamic> json) =
      _$DeviceInfoResponseImpl.fromJson;

  @override
  @JsonKey(name: 'device_id')
  int get deviceId;
  @override
  @JsonKey(name: 'mac')
  String? get mac;
  @override
  @JsonKey(name: 'sn')
  String? get sn;
  @override
  @JsonKey(name: 'type')
  int? get type;
  @override
  @JsonKey(name: 'name')
  String? get name;
  @override
  @JsonKey(name: 'address')
  String? get address;
  @override
  @JsonKey(name: 'place_id')
  int? get placeId;
  @override
  @JsonKey(name: 'place_name')
  String? get placeName;
  @override
  @JsonKey(name: 'area_id')
  int? get areaId;
  @override
  @JsonKey(name: 'area_name')
  String? get areaName;
  @override
  @JsonKey(name: 'model_id')
  int? get modelId;
  @override
  @JsonKey(name: 'model_name')
  String get modelName;
  @override
  @JsonKey(name: 'model_image_url')
  String get modelImageUrl;
  @override
  @JsonKey(name: 'guide_url')
  String? get guideUrl;
  @override
  @JsonKey(name: 'vendor_id')
  int get vendorId;
  @override
  @JsonKey(name: 'vendor_name')
  String? get vendorName;
  @override
  @JsonKey(name: 'vendor_tel')
  String? get vendorTel;
  @override
  @JsonKey(name: 'vendor_address')
  String? get vendorAddress;
  @override
  @JsonKey(name: 'customer_id')
  int? get customerId;
  @override
  @JsonKey(name: 'customer_name')
  String? get customerName;
  @override
  @JsonKey(name: 'customer_address')
  String? get customerAddress;
  @override
  @JsonKey(name: 'installation_date')
  List<int>? get installationDate;
  @override
  @JsonKey(name: 'online')
  int? get online;
  @override
  @JsonKey(name: 'power')
  int? get power;
  @override
  @JsonKey(name: 'error')
  int? get error;
  @override
  @JsonKey(name: 'maintenance_times')
  int get maintenanceTimes;
  @override
  @JsonKey(name: 'wifi_status')
  int? get wifiStatus;
  @override
  @JsonKey(name: 'device_values')
  List<DeviceValue> get deviceValues;
  @override
  @JsonKey(name: 'cls')
  List<Cl>? get cls;
  @override
  @JsonKey(name: 'queues')
  List<Queue>? get queues;
  @override
  @JsonKey(name: 'area_queues')
  List<AreaQueue>? get areaQueues;
  @override
  @JsonKey(name: 'statistics')
  Statistics? get statistics;
  @override
  @JsonKey(name: 'engineer_images')
  List<EngineerImage> get engineerImages;
  @override
  @JsonKey(ignore: true)
  _$$DeviceInfoResponseImplCopyWith<_$DeviceInfoResponseImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

DeviceValue _$DeviceValueFromJson(Map<String, dynamic> json) {
  return _DeviceValue.fromJson(json);
}

/// @nodoc
mixin _$DeviceValue {
  @JsonKey(name: 'code')
  String get code => throw _privateConstructorUsedError;
  @JsonKey(name: 'types')
  String get types => throw _privateConstructorUsedError;
  @JsonKey(name: 'group1')
  String? get group1 => throw _privateConstructorUsedError;
  @JsonKey(name: 'group2')
  String get group2 => throw _privateConstructorUsedError;
  @JsonKey(name: 'item')
  String get item => throw _privateConstructorUsedError;
  @JsonKey(name: 'value')
  String get value => throw _privateConstructorUsedError;
  @JsonKey(name: 'remark')
  String get remark => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $DeviceValueCopyWith<DeviceValue> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $DeviceValueCopyWith<$Res> {
  factory $DeviceValueCopyWith(
          DeviceValue value, $Res Function(DeviceValue) then) =
      _$DeviceValueCopyWithImpl<$Res, DeviceValue>;
  @useResult
  $Res call(
      {@JsonKey(name: 'code') String code,
      @JsonKey(name: 'types') String types,
      @JsonKey(name: 'group1') String? group1,
      @JsonKey(name: 'group2') String group2,
      @JsonKey(name: 'item') String item,
      @JsonKey(name: 'value') String value,
      @JsonKey(name: 'remark') String remark});
}

/// @nodoc
class _$DeviceValueCopyWithImpl<$Res, $Val extends DeviceValue>
    implements $DeviceValueCopyWith<$Res> {
  _$DeviceValueCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? code = null,
    Object? types = null,
    Object? group1 = freezed,
    Object? group2 = null,
    Object? item = null,
    Object? value = null,
    Object? remark = null,
  }) {
    return _then(_value.copyWith(
      code: null == code
          ? _value.code
          : code // ignore: cast_nullable_to_non_nullable
              as String,
      types: null == types
          ? _value.types
          : types // ignore: cast_nullable_to_non_nullable
              as String,
      group1: freezed == group1
          ? _value.group1
          : group1 // ignore: cast_nullable_to_non_nullable
              as String?,
      group2: null == group2
          ? _value.group2
          : group2 // ignore: cast_nullable_to_non_nullable
              as String,
      item: null == item
          ? _value.item
          : item // ignore: cast_nullable_to_non_nullable
              as String,
      value: null == value
          ? _value.value
          : value // ignore: cast_nullable_to_non_nullable
              as String,
      remark: null == remark
          ? _value.remark
          : remark // ignore: cast_nullable_to_non_nullable
              as String,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$DeviceValueImplCopyWith<$Res>
    implements $DeviceValueCopyWith<$Res> {
  factory _$$DeviceValueImplCopyWith(
          _$DeviceValueImpl value, $Res Function(_$DeviceValueImpl) then) =
      __$$DeviceValueImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {@JsonKey(name: 'code') String code,
      @JsonKey(name: 'types') String types,
      @JsonKey(name: 'group1') String? group1,
      @JsonKey(name: 'group2') String group2,
      @JsonKey(name: 'item') String item,
      @JsonKey(name: 'value') String value,
      @JsonKey(name: 'remark') String remark});
}

/// @nodoc
class __$$DeviceValueImplCopyWithImpl<$Res>
    extends _$DeviceValueCopyWithImpl<$Res, _$DeviceValueImpl>
    implements _$$DeviceValueImplCopyWith<$Res> {
  __$$DeviceValueImplCopyWithImpl(
      _$DeviceValueImpl _value, $Res Function(_$DeviceValueImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? code = null,
    Object? types = null,
    Object? group1 = freezed,
    Object? group2 = null,
    Object? item = null,
    Object? value = null,
    Object? remark = null,
  }) {
    return _then(_$DeviceValueImpl(
      code: null == code
          ? _value.code
          : code // ignore: cast_nullable_to_non_nullable
              as String,
      types: null == types
          ? _value.types
          : types // ignore: cast_nullable_to_non_nullable
              as String,
      group1: freezed == group1
          ? _value.group1
          : group1 // ignore: cast_nullable_to_non_nullable
              as String?,
      group2: null == group2
          ? _value.group2
          : group2 // ignore: cast_nullable_to_non_nullable
              as String,
      item: null == item
          ? _value.item
          : item // ignore: cast_nullable_to_non_nullable
              as String,
      value: null == value
          ? _value.value
          : value // ignore: cast_nullable_to_non_nullable
              as String,
      remark: null == remark
          ? _value.remark
          : remark // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$DeviceValueImpl implements _DeviceValue {
  const _$DeviceValueImpl(
      {@JsonKey(name: 'code') required this.code,
      @JsonKey(name: 'types') required this.types,
      @JsonKey(name: 'group1') this.group1,
      @JsonKey(name: 'group2') required this.group2,
      @JsonKey(name: 'item') required this.item,
      @JsonKey(name: 'value') required this.value,
      @JsonKey(name: 'remark') required this.remark});

  factory _$DeviceValueImpl.fromJson(Map<String, dynamic> json) =>
      _$$DeviceValueImplFromJson(json);

  @override
  @JsonKey(name: 'code')
  final String code;
  @override
  @JsonKey(name: 'types')
  final String types;
  @override
  @JsonKey(name: 'group1')
  final String? group1;
  @override
  @JsonKey(name: 'group2')
  final String group2;
  @override
  @JsonKey(name: 'item')
  final String item;
  @override
  @JsonKey(name: 'value')
  final String value;
  @override
  @JsonKey(name: 'remark')
  final String remark;

  @override
  String toString() {
    return 'DeviceValue(code: $code, types: $types, group1: $group1, group2: $group2, item: $item, value: $value, remark: $remark)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$DeviceValueImpl &&
            (identical(other.code, code) || other.code == code) &&
            (identical(other.types, types) || other.types == types) &&
            (identical(other.group1, group1) || other.group1 == group1) &&
            (identical(other.group2, group2) || other.group2 == group2) &&
            (identical(other.item, item) || other.item == item) &&
            (identical(other.value, value) || other.value == value) &&
            (identical(other.remark, remark) || other.remark == remark));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(
      runtimeType, code, types, group1, group2, item, value, remark);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$DeviceValueImplCopyWith<_$DeviceValueImpl> get copyWith =>
      __$$DeviceValueImplCopyWithImpl<_$DeviceValueImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$DeviceValueImplToJson(
      this,
    );
  }
}

abstract class _DeviceValue implements DeviceValue {
  const factory _DeviceValue(
          {@JsonKey(name: 'code') required final String code,
          @JsonKey(name: 'types') required final String types,
          @JsonKey(name: 'group1') final String? group1,
          @JsonKey(name: 'group2') required final String group2,
          @JsonKey(name: 'item') required final String item,
          @JsonKey(name: 'value') required final String value,
          @JsonKey(name: 'remark') required final String remark}) =
      _$DeviceValueImpl;

  factory _DeviceValue.fromJson(Map<String, dynamic> json) =
      _$DeviceValueImpl.fromJson;

  @override
  @JsonKey(name: 'code')
  String get code;
  @override
  @JsonKey(name: 'types')
  String get types;
  @override
  @JsonKey(name: 'group1')
  String? get group1;
  @override
  @JsonKey(name: 'group2')
  String get group2;
  @override
  @JsonKey(name: 'item')
  String get item;
  @override
  @JsonKey(name: 'value')
  String get value;
  @override
  @JsonKey(name: 'remark')
  String get remark;
  @override
  @JsonKey(ignore: true)
  _$$DeviceValueImplCopyWith<_$DeviceValueImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

Cl _$ClFromJson(Map<String, dynamic> json) {
  return _Cl.fromJson(json);
}

/// @nodoc
mixin _$Cl {
  @JsonKey(name: 'cl')
  String get cl => throw _privateConstructorUsedError;
  @JsonKey(name: 'value')
  String? get value => throw _privateConstructorUsedError;
  @JsonKey(name: 'cy')
  int? get cy => throw _privateConstructorUsedError;
  @JsonKey(name: 'date_of_month')
  int? get dateOfMonth => throw _privateConstructorUsedError;
  @JsonKey(name: 'weeks')
  String? get weeks => throw _privateConstructorUsedError;
  @JsonKey(name: 'times')
  String? get times => throw _privateConstructorUsedError;
  @JsonKey(name: 'notice')
  int? get notice => throw _privateConstructorUsedError;
  @JsonKey(name: 'name')
  String get name => throw _privateConstructorUsedError;
  @JsonKey(name: 'installation_date')
  String get installationDate => throw _privateConstructorUsedError;
  @JsonKey(name: 'life_month')
  int get lifeMonth => throw _privateConstructorUsedError;
  @JsonKey(name: 'life_rate')
  int get lifeRate => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $ClCopyWith<Cl> get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ClCopyWith<$Res> {
  factory $ClCopyWith(Cl value, $Res Function(Cl) then) =
      _$ClCopyWithImpl<$Res, Cl>;
  @useResult
  $Res call(
      {@JsonKey(name: 'cl') String cl,
      @JsonKey(name: 'value') String? value,
      @JsonKey(name: 'cy') int? cy,
      @JsonKey(name: 'date_of_month') int? dateOfMonth,
      @JsonKey(name: 'weeks') String? weeks,
      @JsonKey(name: 'times') String? times,
      @JsonKey(name: 'notice') int? notice,
      @JsonKey(name: 'name') String name,
      @JsonKey(name: 'installation_date') String installationDate,
      @JsonKey(name: 'life_month') int lifeMonth,
      @JsonKey(name: 'life_rate') int lifeRate});
}

/// @nodoc
class _$ClCopyWithImpl<$Res, $Val extends Cl> implements $ClCopyWith<$Res> {
  _$ClCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? cl = null,
    Object? value = freezed,
    Object? cy = freezed,
    Object? dateOfMonth = freezed,
    Object? weeks = freezed,
    Object? times = freezed,
    Object? notice = freezed,
    Object? name = null,
    Object? installationDate = null,
    Object? lifeMonth = null,
    Object? lifeRate = null,
  }) {
    return _then(_value.copyWith(
      cl: null == cl
          ? _value.cl
          : cl // ignore: cast_nullable_to_non_nullable
              as String,
      value: freezed == value
          ? _value.value
          : value // ignore: cast_nullable_to_non_nullable
              as String?,
      cy: freezed == cy
          ? _value.cy
          : cy // ignore: cast_nullable_to_non_nullable
              as int?,
      dateOfMonth: freezed == dateOfMonth
          ? _value.dateOfMonth
          : dateOfMonth // ignore: cast_nullable_to_non_nullable
              as int?,
      weeks: freezed == weeks
          ? _value.weeks
          : weeks // ignore: cast_nullable_to_non_nullable
              as String?,
      times: freezed == times
          ? _value.times
          : times // ignore: cast_nullable_to_non_nullable
              as String?,
      notice: freezed == notice
          ? _value.notice
          : notice // ignore: cast_nullable_to_non_nullable
              as int?,
      name: null == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
      installationDate: null == installationDate
          ? _value.installationDate
          : installationDate // ignore: cast_nullable_to_non_nullable
              as String,
      lifeMonth: null == lifeMonth
          ? _value.lifeMonth
          : lifeMonth // ignore: cast_nullable_to_non_nullable
              as int,
      lifeRate: null == lifeRate
          ? _value.lifeRate
          : lifeRate // ignore: cast_nullable_to_non_nullable
              as int,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$ClImplCopyWith<$Res> implements $ClCopyWith<$Res> {
  factory _$$ClImplCopyWith(_$ClImpl value, $Res Function(_$ClImpl) then) =
      __$$ClImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {@JsonKey(name: 'cl') String cl,
      @JsonKey(name: 'value') String? value,
      @JsonKey(name: 'cy') int? cy,
      @JsonKey(name: 'date_of_month') int? dateOfMonth,
      @JsonKey(name: 'weeks') String? weeks,
      @JsonKey(name: 'times') String? times,
      @JsonKey(name: 'notice') int? notice,
      @JsonKey(name: 'name') String name,
      @JsonKey(name: 'installation_date') String installationDate,
      @JsonKey(name: 'life_month') int lifeMonth,
      @JsonKey(name: 'life_rate') int lifeRate});
}

/// @nodoc
class __$$ClImplCopyWithImpl<$Res> extends _$ClCopyWithImpl<$Res, _$ClImpl>
    implements _$$ClImplCopyWith<$Res> {
  __$$ClImplCopyWithImpl(_$ClImpl _value, $Res Function(_$ClImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? cl = null,
    Object? value = freezed,
    Object? cy = freezed,
    Object? dateOfMonth = freezed,
    Object? weeks = freezed,
    Object? times = freezed,
    Object? notice = freezed,
    Object? name = null,
    Object? installationDate = null,
    Object? lifeMonth = null,
    Object? lifeRate = null,
  }) {
    return _then(_$ClImpl(
      cl: null == cl
          ? _value.cl
          : cl // ignore: cast_nullable_to_non_nullable
              as String,
      value: freezed == value
          ? _value.value
          : value // ignore: cast_nullable_to_non_nullable
              as String?,
      cy: freezed == cy
          ? _value.cy
          : cy // ignore: cast_nullable_to_non_nullable
              as int?,
      dateOfMonth: freezed == dateOfMonth
          ? _value.dateOfMonth
          : dateOfMonth // ignore: cast_nullable_to_non_nullable
              as int?,
      weeks: freezed == weeks
          ? _value.weeks
          : weeks // ignore: cast_nullable_to_non_nullable
              as String?,
      times: freezed == times
          ? _value.times
          : times // ignore: cast_nullable_to_non_nullable
              as String?,
      notice: freezed == notice
          ? _value.notice
          : notice // ignore: cast_nullable_to_non_nullable
              as int?,
      name: null == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
      installationDate: null == installationDate
          ? _value.installationDate
          : installationDate // ignore: cast_nullable_to_non_nullable
              as String,
      lifeMonth: null == lifeMonth
          ? _value.lifeMonth
          : lifeMonth // ignore: cast_nullable_to_non_nullable
              as int,
      lifeRate: null == lifeRate
          ? _value.lifeRate
          : lifeRate // ignore: cast_nullable_to_non_nullable
              as int,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$ClImpl implements _Cl {
  const _$ClImpl(
      {@JsonKey(name: 'cl') required this.cl,
      @JsonKey(name: 'value') this.value,
      @JsonKey(name: 'cy') this.cy,
      @JsonKey(name: 'date_of_month') this.dateOfMonth,
      @JsonKey(name: 'weeks') this.weeks,
      @JsonKey(name: 'times') this.times,
      @JsonKey(name: 'notice') this.notice,
      @JsonKey(name: 'name') required this.name,
      @JsonKey(name: 'installation_date') required this.installationDate,
      @JsonKey(name: 'life_month') required this.lifeMonth,
      @JsonKey(name: 'life_rate') required this.lifeRate});

  factory _$ClImpl.fromJson(Map<String, dynamic> json) =>
      _$$ClImplFromJson(json);

  @override
  @JsonKey(name: 'cl')
  final String cl;
  @override
  @JsonKey(name: 'value')
  final String? value;
  @override
  @JsonKey(name: 'cy')
  final int? cy;
  @override
  @JsonKey(name: 'date_of_month')
  final int? dateOfMonth;
  @override
  @JsonKey(name: 'weeks')
  final String? weeks;
  @override
  @JsonKey(name: 'times')
  final String? times;
  @override
  @JsonKey(name: 'notice')
  final int? notice;
  @override
  @JsonKey(name: 'name')
  final String name;
  @override
  @JsonKey(name: 'installation_date')
  final String installationDate;
  @override
  @JsonKey(name: 'life_month')
  final int lifeMonth;
  @override
  @JsonKey(name: 'life_rate')
  final int lifeRate;

  @override
  String toString() {
    return 'Cl(cl: $cl, value: $value, cy: $cy, dateOfMonth: $dateOfMonth, weeks: $weeks, times: $times, notice: $notice, name: $name, installationDate: $installationDate, lifeMonth: $lifeMonth, lifeRate: $lifeRate)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ClImpl &&
            (identical(other.cl, cl) || other.cl == cl) &&
            (identical(other.value, value) || other.value == value) &&
            (identical(other.cy, cy) || other.cy == cy) &&
            (identical(other.dateOfMonth, dateOfMonth) ||
                other.dateOfMonth == dateOfMonth) &&
            (identical(other.weeks, weeks) || other.weeks == weeks) &&
            (identical(other.times, times) || other.times == times) &&
            (identical(other.notice, notice) || other.notice == notice) &&
            (identical(other.name, name) || other.name == name) &&
            (identical(other.installationDate, installationDate) ||
                other.installationDate == installationDate) &&
            (identical(other.lifeMonth, lifeMonth) ||
                other.lifeMonth == lifeMonth) &&
            (identical(other.lifeRate, lifeRate) ||
                other.lifeRate == lifeRate));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, cl, value, cy, dateOfMonth,
      weeks, times, notice, name, installationDate, lifeMonth, lifeRate);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$ClImplCopyWith<_$ClImpl> get copyWith =>
      __$$ClImplCopyWithImpl<_$ClImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$ClImplToJson(
      this,
    );
  }
}

abstract class _Cl implements Cl {
  const factory _Cl(
      {@JsonKey(name: 'cl') required final String cl,
      @JsonKey(name: 'value') final String? value,
      @JsonKey(name: 'cy') final int? cy,
      @JsonKey(name: 'date_of_month') final int? dateOfMonth,
      @JsonKey(name: 'weeks') final String? weeks,
      @JsonKey(name: 'times') final String? times,
      @JsonKey(name: 'notice') final int? notice,
      @JsonKey(name: 'name') required final String name,
      @JsonKey(name: 'installation_date')
      required final String installationDate,
      @JsonKey(name: 'life_month') required final int lifeMonth,
      @JsonKey(name: 'life_rate') required final int lifeRate}) = _$ClImpl;

  factory _Cl.fromJson(Map<String, dynamic> json) = _$ClImpl.fromJson;

  @override
  @JsonKey(name: 'cl')
  String get cl;
  @override
  @JsonKey(name: 'value')
  String? get value;
  @override
  @JsonKey(name: 'cy')
  int? get cy;
  @override
  @JsonKey(name: 'date_of_month')
  int? get dateOfMonth;
  @override
  @JsonKey(name: 'weeks')
  String? get weeks;
  @override
  @JsonKey(name: 'times')
  String? get times;
  @override
  @JsonKey(name: 'notice')
  int? get notice;
  @override
  @JsonKey(name: 'name')
  String get name;
  @override
  @JsonKey(name: 'installation_date')
  String get installationDate;
  @override
  @JsonKey(name: 'life_month')
  int get lifeMonth;
  @override
  @JsonKey(name: 'life_rate')
  int get lifeRate;
  @override
  @JsonKey(ignore: true)
  _$$ClImplCopyWith<_$ClImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

Queue _$QueueFromJson(Map<String, dynamic> json) {
  return _Queue.fromJson(json);
}

/// @nodoc
mixin _$Queue {
  @JsonKey(name: 'q_id')
  int get qId => throw _privateConstructorUsedError;
  @JsonKey(name: 'device_id')
  int get deviceId => throw _privateConstructorUsedError;
  @JsonKey(name: 'name')
  String get name => throw _privateConstructorUsedError;
  @JsonKey(name: 'weeks')
  String get weeks => throw _privateConstructorUsedError;
  @JsonKey(name: 'open_times')
  String get openTimes => throw _privateConstructorUsedError;
  @JsonKey(name: 'sleep_times')
  String get sleepTimes => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $QueueCopyWith<Queue> get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $QueueCopyWith<$Res> {
  factory $QueueCopyWith(Queue value, $Res Function(Queue) then) =
      _$QueueCopyWithImpl<$Res, Queue>;
  @useResult
  $Res call(
      {@JsonKey(name: 'q_id') int qId,
      @JsonKey(name: 'device_id') int deviceId,
      @JsonKey(name: 'name') String name,
      @JsonKey(name: 'weeks') String weeks,
      @JsonKey(name: 'open_times') String openTimes,
      @JsonKey(name: 'sleep_times') String sleepTimes});
}

/// @nodoc
class _$QueueCopyWithImpl<$Res, $Val extends Queue>
    implements $QueueCopyWith<$Res> {
  _$QueueCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? qId = null,
    Object? deviceId = null,
    Object? name = null,
    Object? weeks = null,
    Object? openTimes = null,
    Object? sleepTimes = null,
  }) {
    return _then(_value.copyWith(
      qId: null == qId
          ? _value.qId
          : qId // ignore: cast_nullable_to_non_nullable
              as int,
      deviceId: null == deviceId
          ? _value.deviceId
          : deviceId // ignore: cast_nullable_to_non_nullable
              as int,
      name: null == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
      weeks: null == weeks
          ? _value.weeks
          : weeks // ignore: cast_nullable_to_non_nullable
              as String,
      openTimes: null == openTimes
          ? _value.openTimes
          : openTimes // ignore: cast_nullable_to_non_nullable
              as String,
      sleepTimes: null == sleepTimes
          ? _value.sleepTimes
          : sleepTimes // ignore: cast_nullable_to_non_nullable
              as String,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$QueueImplCopyWith<$Res> implements $QueueCopyWith<$Res> {
  factory _$$QueueImplCopyWith(
          _$QueueImpl value, $Res Function(_$QueueImpl) then) =
      __$$QueueImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {@JsonKey(name: 'q_id') int qId,
      @JsonKey(name: 'device_id') int deviceId,
      @JsonKey(name: 'name') String name,
      @JsonKey(name: 'weeks') String weeks,
      @JsonKey(name: 'open_times') String openTimes,
      @JsonKey(name: 'sleep_times') String sleepTimes});
}

/// @nodoc
class __$$QueueImplCopyWithImpl<$Res>
    extends _$QueueCopyWithImpl<$Res, _$QueueImpl>
    implements _$$QueueImplCopyWith<$Res> {
  __$$QueueImplCopyWithImpl(
      _$QueueImpl _value, $Res Function(_$QueueImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? qId = null,
    Object? deviceId = null,
    Object? name = null,
    Object? weeks = null,
    Object? openTimes = null,
    Object? sleepTimes = null,
  }) {
    return _then(_$QueueImpl(
      qId: null == qId
          ? _value.qId
          : qId // ignore: cast_nullable_to_non_nullable
              as int,
      deviceId: null == deviceId
          ? _value.deviceId
          : deviceId // ignore: cast_nullable_to_non_nullable
              as int,
      name: null == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
      weeks: null == weeks
          ? _value.weeks
          : weeks // ignore: cast_nullable_to_non_nullable
              as String,
      openTimes: null == openTimes
          ? _value.openTimes
          : openTimes // ignore: cast_nullable_to_non_nullable
              as String,
      sleepTimes: null == sleepTimes
          ? _value.sleepTimes
          : sleepTimes // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$QueueImpl implements _Queue {
  const _$QueueImpl(
      {@JsonKey(name: 'q_id') required this.qId,
      @JsonKey(name: 'device_id') required this.deviceId,
      @JsonKey(name: 'name') required this.name,
      @JsonKey(name: 'weeks') required this.weeks,
      @JsonKey(name: 'open_times') required this.openTimes,
      @JsonKey(name: 'sleep_times') required this.sleepTimes});

  factory _$QueueImpl.fromJson(Map<String, dynamic> json) =>
      _$$QueueImplFromJson(json);

  @override
  @JsonKey(name: 'q_id')
  final int qId;
  @override
  @JsonKey(name: 'device_id')
  final int deviceId;
  @override
  @JsonKey(name: 'name')
  final String name;
  @override
  @JsonKey(name: 'weeks')
  final String weeks;
  @override
  @JsonKey(name: 'open_times')
  final String openTimes;
  @override
  @JsonKey(name: 'sleep_times')
  final String sleepTimes;

  @override
  String toString() {
    return 'Queue(qId: $qId, deviceId: $deviceId, name: $name, weeks: $weeks, openTimes: $openTimes, sleepTimes: $sleepTimes)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$QueueImpl &&
            (identical(other.qId, qId) || other.qId == qId) &&
            (identical(other.deviceId, deviceId) ||
                other.deviceId == deviceId) &&
            (identical(other.name, name) || other.name == name) &&
            (identical(other.weeks, weeks) || other.weeks == weeks) &&
            (identical(other.openTimes, openTimes) ||
                other.openTimes == openTimes) &&
            (identical(other.sleepTimes, sleepTimes) ||
                other.sleepTimes == sleepTimes));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(
      runtimeType, qId, deviceId, name, weeks, openTimes, sleepTimes);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$QueueImplCopyWith<_$QueueImpl> get copyWith =>
      __$$QueueImplCopyWithImpl<_$QueueImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$QueueImplToJson(
      this,
    );
  }
}

abstract class _Queue implements Queue {
  const factory _Queue(
          {@JsonKey(name: 'q_id') required final int qId,
          @JsonKey(name: 'device_id') required final int deviceId,
          @JsonKey(name: 'name') required final String name,
          @JsonKey(name: 'weeks') required final String weeks,
          @JsonKey(name: 'open_times') required final String openTimes,
          @JsonKey(name: 'sleep_times') required final String sleepTimes}) =
      _$QueueImpl;

  factory _Queue.fromJson(Map<String, dynamic> json) = _$QueueImpl.fromJson;

  @override
  @JsonKey(name: 'q_id')
  int get qId;
  @override
  @JsonKey(name: 'device_id')
  int get deviceId;
  @override
  @JsonKey(name: 'name')
  String get name;
  @override
  @JsonKey(name: 'weeks')
  String get weeks;
  @override
  @JsonKey(name: 'open_times')
  String get openTimes;
  @override
  @JsonKey(name: 'sleep_times')
  String get sleepTimes;
  @override
  @JsonKey(ignore: true)
  _$$QueueImplCopyWith<_$QueueImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

AreaQueue _$AreaQueueFromJson(Map<String, dynamic> json) {
  return _AreaQueue.fromJson(json);
}

/// @nodoc
mixin _$AreaQueue {
  @JsonKey(name: 'q_id')
  int get qId => throw _privateConstructorUsedError;
  @JsonKey(name: 'area_id')
  int get areaId => throw _privateConstructorUsedError;
  @JsonKey(name: 'name')
  String get name => throw _privateConstructorUsedError;
  @JsonKey(name: 'weeks')
  String get weeks => throw _privateConstructorUsedError;
  @JsonKey(name: 'open_times')
  String get openTimes => throw _privateConstructorUsedError;
  @JsonKey(name: 'sleep_times')
  String get sleepTimes => throw _privateConstructorUsedError;
  @JsonKey(name: 'added_time')
  String get addedTime => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $AreaQueueCopyWith<AreaQueue> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $AreaQueueCopyWith<$Res> {
  factory $AreaQueueCopyWith(AreaQueue value, $Res Function(AreaQueue) then) =
      _$AreaQueueCopyWithImpl<$Res, AreaQueue>;
  @useResult
  $Res call(
      {@JsonKey(name: 'q_id') int qId,
      @JsonKey(name: 'area_id') int areaId,
      @JsonKey(name: 'name') String name,
      @JsonKey(name: 'weeks') String weeks,
      @JsonKey(name: 'open_times') String openTimes,
      @JsonKey(name: 'sleep_times') String sleepTimes,
      @JsonKey(name: 'added_time') String addedTime});
}

/// @nodoc
class _$AreaQueueCopyWithImpl<$Res, $Val extends AreaQueue>
    implements $AreaQueueCopyWith<$Res> {
  _$AreaQueueCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? qId = null,
    Object? areaId = null,
    Object? name = null,
    Object? weeks = null,
    Object? openTimes = null,
    Object? sleepTimes = null,
    Object? addedTime = null,
  }) {
    return _then(_value.copyWith(
      qId: null == qId
          ? _value.qId
          : qId // ignore: cast_nullable_to_non_nullable
              as int,
      areaId: null == areaId
          ? _value.areaId
          : areaId // ignore: cast_nullable_to_non_nullable
              as int,
      name: null == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
      weeks: null == weeks
          ? _value.weeks
          : weeks // ignore: cast_nullable_to_non_nullable
              as String,
      openTimes: null == openTimes
          ? _value.openTimes
          : openTimes // ignore: cast_nullable_to_non_nullable
              as String,
      sleepTimes: null == sleepTimes
          ? _value.sleepTimes
          : sleepTimes // ignore: cast_nullable_to_non_nullable
              as String,
      addedTime: null == addedTime
          ? _value.addedTime
          : addedTime // ignore: cast_nullable_to_non_nullable
              as String,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$AreaQueueImplCopyWith<$Res>
    implements $AreaQueueCopyWith<$Res> {
  factory _$$AreaQueueImplCopyWith(
          _$AreaQueueImpl value, $Res Function(_$AreaQueueImpl) then) =
      __$$AreaQueueImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {@JsonKey(name: 'q_id') int qId,
      @JsonKey(name: 'area_id') int areaId,
      @JsonKey(name: 'name') String name,
      @JsonKey(name: 'weeks') String weeks,
      @JsonKey(name: 'open_times') String openTimes,
      @JsonKey(name: 'sleep_times') String sleepTimes,
      @JsonKey(name: 'added_time') String addedTime});
}

/// @nodoc
class __$$AreaQueueImplCopyWithImpl<$Res>
    extends _$AreaQueueCopyWithImpl<$Res, _$AreaQueueImpl>
    implements _$$AreaQueueImplCopyWith<$Res> {
  __$$AreaQueueImplCopyWithImpl(
      _$AreaQueueImpl _value, $Res Function(_$AreaQueueImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? qId = null,
    Object? areaId = null,
    Object? name = null,
    Object? weeks = null,
    Object? openTimes = null,
    Object? sleepTimes = null,
    Object? addedTime = null,
  }) {
    return _then(_$AreaQueueImpl(
      qId: null == qId
          ? _value.qId
          : qId // ignore: cast_nullable_to_non_nullable
              as int,
      areaId: null == areaId
          ? _value.areaId
          : areaId // ignore: cast_nullable_to_non_nullable
              as int,
      name: null == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
      weeks: null == weeks
          ? _value.weeks
          : weeks // ignore: cast_nullable_to_non_nullable
              as String,
      openTimes: null == openTimes
          ? _value.openTimes
          : openTimes // ignore: cast_nullable_to_non_nullable
              as String,
      sleepTimes: null == sleepTimes
          ? _value.sleepTimes
          : sleepTimes // ignore: cast_nullable_to_non_nullable
              as String,
      addedTime: null == addedTime
          ? _value.addedTime
          : addedTime // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$AreaQueueImpl implements _AreaQueue {
  const _$AreaQueueImpl(
      {@JsonKey(name: 'q_id') required this.qId,
      @JsonKey(name: 'area_id') required this.areaId,
      @JsonKey(name: 'name') required this.name,
      @JsonKey(name: 'weeks') required this.weeks,
      @JsonKey(name: 'open_times') required this.openTimes,
      @JsonKey(name: 'sleep_times') required this.sleepTimes,
      @JsonKey(name: 'added_time') required this.addedTime});

  factory _$AreaQueueImpl.fromJson(Map<String, dynamic> json) =>
      _$$AreaQueueImplFromJson(json);

  @override
  @JsonKey(name: 'q_id')
  final int qId;
  @override
  @JsonKey(name: 'area_id')
  final int areaId;
  @override
  @JsonKey(name: 'name')
  final String name;
  @override
  @JsonKey(name: 'weeks')
  final String weeks;
  @override
  @JsonKey(name: 'open_times')
  final String openTimes;
  @override
  @JsonKey(name: 'sleep_times')
  final String sleepTimes;
  @override
  @JsonKey(name: 'added_time')
  final String addedTime;

  @override
  String toString() {
    return 'AreaQueue(qId: $qId, areaId: $areaId, name: $name, weeks: $weeks, openTimes: $openTimes, sleepTimes: $sleepTimes, addedTime: $addedTime)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$AreaQueueImpl &&
            (identical(other.qId, qId) || other.qId == qId) &&
            (identical(other.areaId, areaId) || other.areaId == areaId) &&
            (identical(other.name, name) || other.name == name) &&
            (identical(other.weeks, weeks) || other.weeks == weeks) &&
            (identical(other.openTimes, openTimes) ||
                other.openTimes == openTimes) &&
            (identical(other.sleepTimes, sleepTimes) ||
                other.sleepTimes == sleepTimes) &&
            (identical(other.addedTime, addedTime) ||
                other.addedTime == addedTime));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(
      runtimeType, qId, areaId, name, weeks, openTimes, sleepTimes, addedTime);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$AreaQueueImplCopyWith<_$AreaQueueImpl> get copyWith =>
      __$$AreaQueueImplCopyWithImpl<_$AreaQueueImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$AreaQueueImplToJson(
      this,
    );
  }
}

abstract class _AreaQueue implements AreaQueue {
  const factory _AreaQueue(
          {@JsonKey(name: 'q_id') required final int qId,
          @JsonKey(name: 'area_id') required final int areaId,
          @JsonKey(name: 'name') required final String name,
          @JsonKey(name: 'weeks') required final String weeks,
          @JsonKey(name: 'open_times') required final String openTimes,
          @JsonKey(name: 'sleep_times') required final String sleepTimes,
          @JsonKey(name: 'added_time') required final String addedTime}) =
      _$AreaQueueImpl;

  factory _AreaQueue.fromJson(Map<String, dynamic> json) =
      _$AreaQueueImpl.fromJson;

  @override
  @JsonKey(name: 'q_id')
  int get qId;
  @override
  @JsonKey(name: 'area_id')
  int get areaId;
  @override
  @JsonKey(name: 'name')
  String get name;
  @override
  @JsonKey(name: 'weeks')
  String get weeks;
  @override
  @JsonKey(name: 'open_times')
  String get openTimes;
  @override
  @JsonKey(name: 'sleep_times')
  String get sleepTimes;
  @override
  @JsonKey(name: 'added_time')
  String get addedTime;
  @override
  @JsonKey(ignore: true)
  _$$AreaQueueImplCopyWith<_$AreaQueueImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

Statistics _$StatisticsFromJson(Map<String, dynamic> json) {
  return _Statistics.fromJson(json);
}

/// @nodoc
mixin _$Statistics {
  @JsonKey(name: 'h08')
  int get h08 => throw _privateConstructorUsedError;
  @JsonKey(name: 'h09')
  int get h09 => throw _privateConstructorUsedError;
  @JsonKey(name: 'h0a')
  int get h0a => throw _privateConstructorUsedError;
  @JsonKey(name: 'h12a')
  String? get h12a => throw _privateConstructorUsedError;
  @JsonKey(name: 'h00')
  int get h00 => throw _privateConstructorUsedError;
  @JsonKey(name: 'h03')
  int get h03 => throw _privateConstructorUsedError;
  @JsonKey(name: 'h04')
  int get h04 => throw _privateConstructorUsedError;
  @JsonKey(name: 'p01')
  int get p01 => throw _privateConstructorUsedError;
  @JsonKey(name: 'h01')
  int? get h01 => throw _privateConstructorUsedError;
  @JsonKey(name: 'h05')
  String? get h05 => throw _privateConstructorUsedError;
  @JsonKey(name: 'h07')
  String? get h07 => throw _privateConstructorUsedError;
  @JsonKey(name: 'h25')
  String? get h25 => throw _privateConstructorUsedError;
  @JsonKey(name: 'h25_a')
  String? get h25A => throw _privateConstructorUsedError;
  @JsonKey(name: 'h24')
  String? get h24 => throw _privateConstructorUsedError;
  @JsonKey(name: 'h00a')
  int get h00a => throw _privateConstructorUsedError;
  @JsonKey(name: 'h2e')
  int get h2e => throw _privateConstructorUsedError;
  @JsonKey(name: 'h2e_n')
  String? get h2eN => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $StatisticsCopyWith<Statistics> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $StatisticsCopyWith<$Res> {
  factory $StatisticsCopyWith(
          Statistics value, $Res Function(Statistics) then) =
      _$StatisticsCopyWithImpl<$Res, Statistics>;
  @useResult
  $Res call(
      {@JsonKey(name: 'h08') int h08,
      @JsonKey(name: 'h09') int h09,
      @JsonKey(name: 'h0a') int h0a,
      @JsonKey(name: 'h12a') String? h12a,
      @JsonKey(name: 'h00') int h00,
      @JsonKey(name: 'h03') int h03,
      @JsonKey(name: 'h04') int h04,
      @JsonKey(name: 'p01') int p01,
      @JsonKey(name: 'h01') int? h01,
      @JsonKey(name: 'h05') String? h05,
      @JsonKey(name: 'h07') String? h07,
      @JsonKey(name: 'h25') String? h25,
      @JsonKey(name: 'h25_a') String? h25A,
      @JsonKey(name: 'h24') String? h24,
      @JsonKey(name: 'h00a') int h00a,
      @JsonKey(name: 'h2e') int h2e,
      @JsonKey(name: 'h2e_n') String? h2eN});
}

/// @nodoc
class _$StatisticsCopyWithImpl<$Res, $Val extends Statistics>
    implements $StatisticsCopyWith<$Res> {
  _$StatisticsCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? h08 = null,
    Object? h09 = null,
    Object? h0a = null,
    Object? h12a = freezed,
    Object? h00 = null,
    Object? h03 = null,
    Object? h04 = null,
    Object? p01 = null,
    Object? h01 = freezed,
    Object? h05 = freezed,
    Object? h07 = freezed,
    Object? h25 = freezed,
    Object? h25A = freezed,
    Object? h24 = freezed,
    Object? h00a = null,
    Object? h2e = null,
    Object? h2eN = freezed,
  }) {
    return _then(_value.copyWith(
      h08: null == h08
          ? _value.h08
          : h08 // ignore: cast_nullable_to_non_nullable
              as int,
      h09: null == h09
          ? _value.h09
          : h09 // ignore: cast_nullable_to_non_nullable
              as int,
      h0a: null == h0a
          ? _value.h0a
          : h0a // ignore: cast_nullable_to_non_nullable
              as int,
      h12a: freezed == h12a
          ? _value.h12a
          : h12a // ignore: cast_nullable_to_non_nullable
              as String?,
      h00: null == h00
          ? _value.h00
          : h00 // ignore: cast_nullable_to_non_nullable
              as int,
      h03: null == h03
          ? _value.h03
          : h03 // ignore: cast_nullable_to_non_nullable
              as int,
      h04: null == h04
          ? _value.h04
          : h04 // ignore: cast_nullable_to_non_nullable
              as int,
      p01: null == p01
          ? _value.p01
          : p01 // ignore: cast_nullable_to_non_nullable
              as int,
      h01: freezed == h01
          ? _value.h01
          : h01 // ignore: cast_nullable_to_non_nullable
              as int?,
      h05: freezed == h05
          ? _value.h05
          : h05 // ignore: cast_nullable_to_non_nullable
              as String?,
      h07: freezed == h07
          ? _value.h07
          : h07 // ignore: cast_nullable_to_non_nullable
              as String?,
      h25: freezed == h25
          ? _value.h25
          : h25 // ignore: cast_nullable_to_non_nullable
              as String?,
      h25A: freezed == h25A
          ? _value.h25A
          : h25A // ignore: cast_nullable_to_non_nullable
              as String?,
      h24: freezed == h24
          ? _value.h24
          : h24 // ignore: cast_nullable_to_non_nullable
              as String?,
      h00a: null == h00a
          ? _value.h00a
          : h00a // ignore: cast_nullable_to_non_nullable
              as int,
      h2e: null == h2e
          ? _value.h2e
          : h2e // ignore: cast_nullable_to_non_nullable
              as int,
      h2eN: freezed == h2eN
          ? _value.h2eN
          : h2eN // ignore: cast_nullable_to_non_nullable
              as String?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$StatisticsImplCopyWith<$Res>
    implements $StatisticsCopyWith<$Res> {
  factory _$$StatisticsImplCopyWith(
          _$StatisticsImpl value, $Res Function(_$StatisticsImpl) then) =
      __$$StatisticsImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {@JsonKey(name: 'h08') int h08,
      @JsonKey(name: 'h09') int h09,
      @JsonKey(name: 'h0a') int h0a,
      @JsonKey(name: 'h12a') String? h12a,
      @JsonKey(name: 'h00') int h00,
      @JsonKey(name: 'h03') int h03,
      @JsonKey(name: 'h04') int h04,
      @JsonKey(name: 'p01') int p01,
      @JsonKey(name: 'h01') int? h01,
      @JsonKey(name: 'h05') String? h05,
      @JsonKey(name: 'h07') String? h07,
      @JsonKey(name: 'h25') String? h25,
      @JsonKey(name: 'h25_a') String? h25A,
      @JsonKey(name: 'h24') String? h24,
      @JsonKey(name: 'h00a') int h00a,
      @JsonKey(name: 'h2e') int h2e,
      @JsonKey(name: 'h2e_n') String? h2eN});
}

/// @nodoc
class __$$StatisticsImplCopyWithImpl<$Res>
    extends _$StatisticsCopyWithImpl<$Res, _$StatisticsImpl>
    implements _$$StatisticsImplCopyWith<$Res> {
  __$$StatisticsImplCopyWithImpl(
      _$StatisticsImpl _value, $Res Function(_$StatisticsImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? h08 = null,
    Object? h09 = null,
    Object? h0a = null,
    Object? h12a = freezed,
    Object? h00 = null,
    Object? h03 = null,
    Object? h04 = null,
    Object? p01 = null,
    Object? h01 = freezed,
    Object? h05 = freezed,
    Object? h07 = freezed,
    Object? h25 = freezed,
    Object? h25A = freezed,
    Object? h24 = freezed,
    Object? h00a = null,
    Object? h2e = null,
    Object? h2eN = freezed,
  }) {
    return _then(_$StatisticsImpl(
      h08: null == h08
          ? _value.h08
          : h08 // ignore: cast_nullable_to_non_nullable
              as int,
      h09: null == h09
          ? _value.h09
          : h09 // ignore: cast_nullable_to_non_nullable
              as int,
      h0a: null == h0a
          ? _value.h0a
          : h0a // ignore: cast_nullable_to_non_nullable
              as int,
      h12a: freezed == h12a
          ? _value.h12a
          : h12a // ignore: cast_nullable_to_non_nullable
              as String?,
      h00: null == h00
          ? _value.h00
          : h00 // ignore: cast_nullable_to_non_nullable
              as int,
      h03: null == h03
          ? _value.h03
          : h03 // ignore: cast_nullable_to_non_nullable
              as int,
      h04: null == h04
          ? _value.h04
          : h04 // ignore: cast_nullable_to_non_nullable
              as int,
      p01: null == p01
          ? _value.p01
          : p01 // ignore: cast_nullable_to_non_nullable
              as int,
      h01: freezed == h01
          ? _value.h01
          : h01 // ignore: cast_nullable_to_non_nullable
              as int?,
      h05: freezed == h05
          ? _value.h05
          : h05 // ignore: cast_nullable_to_non_nullable
              as String?,
      h07: freezed == h07
          ? _value.h07
          : h07 // ignore: cast_nullable_to_non_nullable
              as String?,
      h25: freezed == h25
          ? _value.h25
          : h25 // ignore: cast_nullable_to_non_nullable
              as String?,
      h25A: freezed == h25A
          ? _value.h25A
          : h25A // ignore: cast_nullable_to_non_nullable
              as String?,
      h24: freezed == h24
          ? _value.h24
          : h24 // ignore: cast_nullable_to_non_nullable
              as String?,
      h00a: null == h00a
          ? _value.h00a
          : h00a // ignore: cast_nullable_to_non_nullable
              as int,
      h2e: null == h2e
          ? _value.h2e
          : h2e // ignore: cast_nullable_to_non_nullable
              as int,
      h2eN: freezed == h2eN
          ? _value.h2eN
          : h2eN // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$StatisticsImpl implements _Statistics {
  const _$StatisticsImpl(
      {@JsonKey(name: 'h08') required this.h08,
      @JsonKey(name: 'h09') required this.h09,
      @JsonKey(name: 'h0a') required this.h0a,
      @JsonKey(name: 'h12a') this.h12a,
      @JsonKey(name: 'h00') required this.h00,
      @JsonKey(name: 'h03') required this.h03,
      @JsonKey(name: 'h04') required this.h04,
      @JsonKey(name: 'p01') required this.p01,
      @JsonKey(name: 'h01') this.h01,
      @JsonKey(name: 'h05') this.h05,
      @JsonKey(name: 'h07') this.h07,
      @JsonKey(name: 'h25') this.h25,
      @JsonKey(name: 'h25_a') this.h25A,
      @JsonKey(name: 'h24') this.h24,
      @JsonKey(name: 'h00a') required this.h00a,
      @JsonKey(name: 'h2e') required this.h2e,
      @JsonKey(name: 'h2e_n') this.h2eN});

  factory _$StatisticsImpl.fromJson(Map<String, dynamic> json) =>
      _$$StatisticsImplFromJson(json);

  @override
  @JsonKey(name: 'h08')
  final int h08;
  @override
  @JsonKey(name: 'h09')
  final int h09;
  @override
  @JsonKey(name: 'h0a')
  final int h0a;
  @override
  @JsonKey(name: 'h12a')
  final String? h12a;
  @override
  @JsonKey(name: 'h00')
  final int h00;
  @override
  @JsonKey(name: 'h03')
  final int h03;
  @override
  @JsonKey(name: 'h04')
  final int h04;
  @override
  @JsonKey(name: 'p01')
  final int p01;
  @override
  @JsonKey(name: 'h01')
  final int? h01;
  @override
  @JsonKey(name: 'h05')
  final String? h05;
  @override
  @JsonKey(name: 'h07')
  final String? h07;
  @override
  @JsonKey(name: 'h25')
  final String? h25;
  @override
  @JsonKey(name: 'h25_a')
  final String? h25A;
  @override
  @JsonKey(name: 'h24')
  final String? h24;
  @override
  @JsonKey(name: 'h00a')
  final int h00a;
  @override
  @JsonKey(name: 'h2e')
  final int h2e;
  @override
  @JsonKey(name: 'h2e_n')
  final String? h2eN;

  @override
  String toString() {
    return 'Statistics(h08: $h08, h09: $h09, h0a: $h0a, h12a: $h12a, h00: $h00, h03: $h03, h04: $h04, p01: $p01, h01: $h01, h05: $h05, h07: $h07, h25: $h25, h25A: $h25A, h24: $h24, h00a: $h00a, h2e: $h2e, h2eN: $h2eN)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$StatisticsImpl &&
            (identical(other.h08, h08) || other.h08 == h08) &&
            (identical(other.h09, h09) || other.h09 == h09) &&
            (identical(other.h0a, h0a) || other.h0a == h0a) &&
            (identical(other.h12a, h12a) || other.h12a == h12a) &&
            (identical(other.h00, h00) || other.h00 == h00) &&
            (identical(other.h03, h03) || other.h03 == h03) &&
            (identical(other.h04, h04) || other.h04 == h04) &&
            (identical(other.p01, p01) || other.p01 == p01) &&
            (identical(other.h01, h01) || other.h01 == h01) &&
            (identical(other.h05, h05) || other.h05 == h05) &&
            (identical(other.h07, h07) || other.h07 == h07) &&
            (identical(other.h25, h25) || other.h25 == h25) &&
            (identical(other.h25A, h25A) || other.h25A == h25A) &&
            (identical(other.h24, h24) || other.h24 == h24) &&
            (identical(other.h00a, h00a) || other.h00a == h00a) &&
            (identical(other.h2e, h2e) || other.h2e == h2e) &&
            (identical(other.h2eN, h2eN) || other.h2eN == h2eN));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, h08, h09, h0a, h12a, h00, h03,
      h04, p01, h01, h05, h07, h25, h25A, h24, h00a, h2e, h2eN);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$StatisticsImplCopyWith<_$StatisticsImpl> get copyWith =>
      __$$StatisticsImplCopyWithImpl<_$StatisticsImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$StatisticsImplToJson(
      this,
    );
  }
}

abstract class _Statistics implements Statistics {
  const factory _Statistics(
      {@JsonKey(name: 'h08') required final int h08,
      @JsonKey(name: 'h09') required final int h09,
      @JsonKey(name: 'h0a') required final int h0a,
      @JsonKey(name: 'h12a') final String? h12a,
      @JsonKey(name: 'h00') required final int h00,
      @JsonKey(name: 'h03') required final int h03,
      @JsonKey(name: 'h04') required final int h04,
      @JsonKey(name: 'p01') required final int p01,
      @JsonKey(name: 'h01') final int? h01,
      @JsonKey(name: 'h05') final String? h05,
      @JsonKey(name: 'h07') final String? h07,
      @JsonKey(name: 'h25') final String? h25,
      @JsonKey(name: 'h25_a') final String? h25A,
      @JsonKey(name: 'h24') final String? h24,
      @JsonKey(name: 'h00a') required final int h00a,
      @JsonKey(name: 'h2e') required final int h2e,
      @JsonKey(name: 'h2e_n') final String? h2eN}) = _$StatisticsImpl;

  factory _Statistics.fromJson(Map<String, dynamic> json) =
      _$StatisticsImpl.fromJson;

  @override
  @JsonKey(name: 'h08')
  int get h08;
  @override
  @JsonKey(name: 'h09')
  int get h09;
  @override
  @JsonKey(name: 'h0a')
  int get h0a;
  @override
  @JsonKey(name: 'h12a')
  String? get h12a;
  @override
  @JsonKey(name: 'h00')
  int get h00;
  @override
  @JsonKey(name: 'h03')
  int get h03;
  @override
  @JsonKey(name: 'h04')
  int get h04;
  @override
  @JsonKey(name: 'p01')
  int get p01;
  @override
  @JsonKey(name: 'h01')
  int? get h01;
  @override
  @JsonKey(name: 'h05')
  String? get h05;
  @override
  @JsonKey(name: 'h07')
  String? get h07;
  @override
  @JsonKey(name: 'h25')
  String? get h25;
  @override
  @JsonKey(name: 'h25_a')
  String? get h25A;
  @override
  @JsonKey(name: 'h24')
  String? get h24;
  @override
  @JsonKey(name: 'h00a')
  int get h00a;
  @override
  @JsonKey(name: 'h2e')
  int get h2e;
  @override
  @JsonKey(name: 'h2e_n')
  String? get h2eN;
  @override
  @JsonKey(ignore: true)
  _$$StatisticsImplCopyWith<_$StatisticsImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

EngineerImage _$EngineerImageFromJson(Map<String, dynamic> json) {
  return _EngineerImage.fromJson(json);
}

/// @nodoc
mixin _$EngineerImage {
  @JsonKey(name: 'device_id')
  int get deviceId => throw _privateConstructorUsedError;
  @JsonKey(name: 'd_e_image_id')
  int get deImageId => throw _privateConstructorUsedError;
  @JsonKey(name: 'kind')
  int get kind => throw _privateConstructorUsedError;
  @JsonKey(name: 'image_url')
  String get imageUrl => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $EngineerImageCopyWith<EngineerImage> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $EngineerImageCopyWith<$Res> {
  factory $EngineerImageCopyWith(
          EngineerImage value, $Res Function(EngineerImage) then) =
      _$EngineerImageCopyWithImpl<$Res, EngineerImage>;
  @useResult
  $Res call(
      {@JsonKey(name: 'device_id') int deviceId,
      @JsonKey(name: 'd_e_image_id') int deImageId,
      @JsonKey(name: 'kind') int kind,
      @JsonKey(name: 'image_url') String imageUrl});
}

/// @nodoc
class _$EngineerImageCopyWithImpl<$Res, $Val extends EngineerImage>
    implements $EngineerImageCopyWith<$Res> {
  _$EngineerImageCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? deviceId = null,
    Object? deImageId = null,
    Object? kind = null,
    Object? imageUrl = null,
  }) {
    return _then(_value.copyWith(
      deviceId: null == deviceId
          ? _value.deviceId
          : deviceId // ignore: cast_nullable_to_non_nullable
              as int,
      deImageId: null == deImageId
          ? _value.deImageId
          : deImageId // ignore: cast_nullable_to_non_nullable
              as int,
      kind: null == kind
          ? _value.kind
          : kind // ignore: cast_nullable_to_non_nullable
              as int,
      imageUrl: null == imageUrl
          ? _value.imageUrl
          : imageUrl // ignore: cast_nullable_to_non_nullable
              as String,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$EngineerImageImplCopyWith<$Res>
    implements $EngineerImageCopyWith<$Res> {
  factory _$$EngineerImageImplCopyWith(
          _$EngineerImageImpl value, $Res Function(_$EngineerImageImpl) then) =
      __$$EngineerImageImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {@JsonKey(name: 'device_id') int deviceId,
      @JsonKey(name: 'd_e_image_id') int deImageId,
      @JsonKey(name: 'kind') int kind,
      @JsonKey(name: 'image_url') String imageUrl});
}

/// @nodoc
class __$$EngineerImageImplCopyWithImpl<$Res>
    extends _$EngineerImageCopyWithImpl<$Res, _$EngineerImageImpl>
    implements _$$EngineerImageImplCopyWith<$Res> {
  __$$EngineerImageImplCopyWithImpl(
      _$EngineerImageImpl _value, $Res Function(_$EngineerImageImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? deviceId = null,
    Object? deImageId = null,
    Object? kind = null,
    Object? imageUrl = null,
  }) {
    return _then(_$EngineerImageImpl(
      deviceId: null == deviceId
          ? _value.deviceId
          : deviceId // ignore: cast_nullable_to_non_nullable
              as int,
      deImageId: null == deImageId
          ? _value.deImageId
          : deImageId // ignore: cast_nullable_to_non_nullable
              as int,
      kind: null == kind
          ? _value.kind
          : kind // ignore: cast_nullable_to_non_nullable
              as int,
      imageUrl: null == imageUrl
          ? _value.imageUrl
          : imageUrl // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$EngineerImageImpl implements _EngineerImage {
  const _$EngineerImageImpl(
      {@JsonKey(name: 'device_id') required this.deviceId,
      @JsonKey(name: 'd_e_image_id') required this.deImageId,
      @JsonKey(name: 'kind') required this.kind,
      @JsonKey(name: 'image_url') required this.imageUrl});

  factory _$EngineerImageImpl.fromJson(Map<String, dynamic> json) =>
      _$$EngineerImageImplFromJson(json);

  @override
  @JsonKey(name: 'device_id')
  final int deviceId;
  @override
  @JsonKey(name: 'd_e_image_id')
  final int deImageId;
  @override
  @JsonKey(name: 'kind')
  final int kind;
  @override
  @JsonKey(name: 'image_url')
  final String imageUrl;

  @override
  String toString() {
    return 'EngineerImage(deviceId: $deviceId, deImageId: $deImageId, kind: $kind, imageUrl: $imageUrl)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$EngineerImageImpl &&
            (identical(other.deviceId, deviceId) ||
                other.deviceId == deviceId) &&
            (identical(other.deImageId, deImageId) ||
                other.deImageId == deImageId) &&
            (identical(other.kind, kind) || other.kind == kind) &&
            (identical(other.imageUrl, imageUrl) ||
                other.imageUrl == imageUrl));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode =>
      Object.hash(runtimeType, deviceId, deImageId, kind, imageUrl);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$EngineerImageImplCopyWith<_$EngineerImageImpl> get copyWith =>
      __$$EngineerImageImplCopyWithImpl<_$EngineerImageImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$EngineerImageImplToJson(
      this,
    );
  }
}

abstract class _EngineerImage implements EngineerImage {
  const factory _EngineerImage(
          {@JsonKey(name: 'device_id') required final int deviceId,
          @JsonKey(name: 'd_e_image_id') required final int deImageId,
          @JsonKey(name: 'kind') required final int kind,
          @JsonKey(name: 'image_url') required final String imageUrl}) =
      _$EngineerImageImpl;

  factory _EngineerImage.fromJson(Map<String, dynamic> json) =
      _$EngineerImageImpl.fromJson;

  @override
  @JsonKey(name: 'device_id')
  int get deviceId;
  @override
  @JsonKey(name: 'd_e_image_id')
  int get deImageId;
  @override
  @JsonKey(name: 'kind')
  int get kind;
  @override
  @JsonKey(name: 'image_url')
  String get imageUrl;
  @override
  @JsonKey(ignore: true)
  _$$EngineerImageImplCopyWith<_$EngineerImageImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
