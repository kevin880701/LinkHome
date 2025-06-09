// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'DeviceScanResponse.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

DeviceScanResponse _$DeviceScanResponseFromJson(Map<String, dynamic> json) {
  return _DeviceScanResponse.fromJson(json);
}

/// @nodoc
mixin _$DeviceScanResponse {
  @JsonKey(name: 'device_id')
  int get deviceId => throw _privateConstructorUsedError;
  @JsonKey(name: 'sn')
  String? get sn => throw _privateConstructorUsedError;
  @JsonKey(name: 'mac')
  String get mac => throw _privateConstructorUsedError;
  @JsonKey(name: 'user_id')
  int? get userId => throw _privateConstructorUsedError;
  @JsonKey(name: 'name')
  String get name => throw _privateConstructorUsedError;
  @JsonKey(name: 'model_id')
  int get modelId => throw _privateConstructorUsedError;
  @JsonKey(name: 'model_name')
  String get modelName => throw _privateConstructorUsedError;
  @JsonKey(name: 'model_image_url')
  String get modelImageUrl => throw _privateConstructorUsedError;
  @JsonKey(name: 'vendor_id')
  int get vendorId => throw _privateConstructorUsedError;
  @JsonKey(name: 'vendor_name')
  String? get vendorName => throw _privateConstructorUsedError;
  @JsonKey(name: 'address')
  String get address => throw _privateConstructorUsedError;
  @JsonKey(name: 'customer_id')
  int get customerId => throw _privateConstructorUsedError;
  @JsonKey(name: 'customer_name')
  String get customerName => throw _privateConstructorUsedError;
  @JsonKey(name: 'inv_date')
  List<int> get invDate => throw _privateConstructorUsedError;
  @JsonKey(name: 'warranty')
  int get warranty => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $DeviceScanResponseCopyWith<DeviceScanResponse> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $DeviceScanResponseCopyWith<$Res> {
  factory $DeviceScanResponseCopyWith(
          DeviceScanResponse value, $Res Function(DeviceScanResponse) then) =
      _$DeviceScanResponseCopyWithImpl<$Res, DeviceScanResponse>;
  @useResult
  $Res call(
      {@JsonKey(name: 'device_id') int deviceId,
      @JsonKey(name: 'sn') String? sn,
      @JsonKey(name: 'mac') String mac,
      @JsonKey(name: 'user_id') int? userId,
      @JsonKey(name: 'name') String name,
      @JsonKey(name: 'model_id') int modelId,
      @JsonKey(name: 'model_name') String modelName,
      @JsonKey(name: 'model_image_url') String modelImageUrl,
      @JsonKey(name: 'vendor_id') int vendorId,
      @JsonKey(name: 'vendor_name') String? vendorName,
      @JsonKey(name: 'address') String address,
      @JsonKey(name: 'customer_id') int customerId,
      @JsonKey(name: 'customer_name') String customerName,
      @JsonKey(name: 'inv_date') List<int> invDate,
      @JsonKey(name: 'warranty') int warranty});
}

/// @nodoc
class _$DeviceScanResponseCopyWithImpl<$Res, $Val extends DeviceScanResponse>
    implements $DeviceScanResponseCopyWith<$Res> {
  _$DeviceScanResponseCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? deviceId = null,
    Object? sn = freezed,
    Object? mac = null,
    Object? userId = freezed,
    Object? name = null,
    Object? modelId = null,
    Object? modelName = null,
    Object? modelImageUrl = null,
    Object? vendorId = null,
    Object? vendorName = freezed,
    Object? address = null,
    Object? customerId = null,
    Object? customerName = null,
    Object? invDate = null,
    Object? warranty = null,
  }) {
    return _then(_value.copyWith(
      deviceId: null == deviceId
          ? _value.deviceId
          : deviceId // ignore: cast_nullable_to_non_nullable
              as int,
      sn: freezed == sn
          ? _value.sn
          : sn // ignore: cast_nullable_to_non_nullable
              as String?,
      mac: null == mac
          ? _value.mac
          : mac // ignore: cast_nullable_to_non_nullable
              as String,
      userId: freezed == userId
          ? _value.userId
          : userId // ignore: cast_nullable_to_non_nullable
              as int?,
      name: null == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
      modelId: null == modelId
          ? _value.modelId
          : modelId // ignore: cast_nullable_to_non_nullable
              as int,
      modelName: null == modelName
          ? _value.modelName
          : modelName // ignore: cast_nullable_to_non_nullable
              as String,
      modelImageUrl: null == modelImageUrl
          ? _value.modelImageUrl
          : modelImageUrl // ignore: cast_nullable_to_non_nullable
              as String,
      vendorId: null == vendorId
          ? _value.vendorId
          : vendorId // ignore: cast_nullable_to_non_nullable
              as int,
      vendorName: freezed == vendorName
          ? _value.vendorName
          : vendorName // ignore: cast_nullable_to_non_nullable
              as String?,
      address: null == address
          ? _value.address
          : address // ignore: cast_nullable_to_non_nullable
              as String,
      customerId: null == customerId
          ? _value.customerId
          : customerId // ignore: cast_nullable_to_non_nullable
              as int,
      customerName: null == customerName
          ? _value.customerName
          : customerName // ignore: cast_nullable_to_non_nullable
              as String,
      invDate: null == invDate
          ? _value.invDate
          : invDate // ignore: cast_nullable_to_non_nullable
              as List<int>,
      warranty: null == warranty
          ? _value.warranty
          : warranty // ignore: cast_nullable_to_non_nullable
              as int,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$DeviceScanResponseImplCopyWith<$Res>
    implements $DeviceScanResponseCopyWith<$Res> {
  factory _$$DeviceScanResponseImplCopyWith(_$DeviceScanResponseImpl value,
          $Res Function(_$DeviceScanResponseImpl) then) =
      __$$DeviceScanResponseImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {@JsonKey(name: 'device_id') int deviceId,
      @JsonKey(name: 'sn') String? sn,
      @JsonKey(name: 'mac') String mac,
      @JsonKey(name: 'user_id') int? userId,
      @JsonKey(name: 'name') String name,
      @JsonKey(name: 'model_id') int modelId,
      @JsonKey(name: 'model_name') String modelName,
      @JsonKey(name: 'model_image_url') String modelImageUrl,
      @JsonKey(name: 'vendor_id') int vendorId,
      @JsonKey(name: 'vendor_name') String? vendorName,
      @JsonKey(name: 'address') String address,
      @JsonKey(name: 'customer_id') int customerId,
      @JsonKey(name: 'customer_name') String customerName,
      @JsonKey(name: 'inv_date') List<int> invDate,
      @JsonKey(name: 'warranty') int warranty});
}

/// @nodoc
class __$$DeviceScanResponseImplCopyWithImpl<$Res>
    extends _$DeviceScanResponseCopyWithImpl<$Res, _$DeviceScanResponseImpl>
    implements _$$DeviceScanResponseImplCopyWith<$Res> {
  __$$DeviceScanResponseImplCopyWithImpl(_$DeviceScanResponseImpl _value,
      $Res Function(_$DeviceScanResponseImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? deviceId = null,
    Object? sn = freezed,
    Object? mac = null,
    Object? userId = freezed,
    Object? name = null,
    Object? modelId = null,
    Object? modelName = null,
    Object? modelImageUrl = null,
    Object? vendorId = null,
    Object? vendorName = freezed,
    Object? address = null,
    Object? customerId = null,
    Object? customerName = null,
    Object? invDate = null,
    Object? warranty = null,
  }) {
    return _then(_$DeviceScanResponseImpl(
      deviceId: null == deviceId
          ? _value.deviceId
          : deviceId // ignore: cast_nullable_to_non_nullable
              as int,
      sn: freezed == sn
          ? _value.sn
          : sn // ignore: cast_nullable_to_non_nullable
              as String?,
      mac: null == mac
          ? _value.mac
          : mac // ignore: cast_nullable_to_non_nullable
              as String,
      userId: freezed == userId
          ? _value.userId
          : userId // ignore: cast_nullable_to_non_nullable
              as int?,
      name: null == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
      modelId: null == modelId
          ? _value.modelId
          : modelId // ignore: cast_nullable_to_non_nullable
              as int,
      modelName: null == modelName
          ? _value.modelName
          : modelName // ignore: cast_nullable_to_non_nullable
              as String,
      modelImageUrl: null == modelImageUrl
          ? _value.modelImageUrl
          : modelImageUrl // ignore: cast_nullable_to_non_nullable
              as String,
      vendorId: null == vendorId
          ? _value.vendorId
          : vendorId // ignore: cast_nullable_to_non_nullable
              as int,
      vendorName: freezed == vendorName
          ? _value.vendorName
          : vendorName // ignore: cast_nullable_to_non_nullable
              as String?,
      address: null == address
          ? _value.address
          : address // ignore: cast_nullable_to_non_nullable
              as String,
      customerId: null == customerId
          ? _value.customerId
          : customerId // ignore: cast_nullable_to_non_nullable
              as int,
      customerName: null == customerName
          ? _value.customerName
          : customerName // ignore: cast_nullable_to_non_nullable
              as String,
      invDate: null == invDate
          ? _value._invDate
          : invDate // ignore: cast_nullable_to_non_nullable
              as List<int>,
      warranty: null == warranty
          ? _value.warranty
          : warranty // ignore: cast_nullable_to_non_nullable
              as int,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$DeviceScanResponseImpl implements _DeviceScanResponse {
  const _$DeviceScanResponseImpl(
      {@JsonKey(name: 'device_id') required this.deviceId,
      @JsonKey(name: 'sn') this.sn,
      @JsonKey(name: 'mac') required this.mac,
      @JsonKey(name: 'user_id') this.userId,
      @JsonKey(name: 'name') required this.name,
      @JsonKey(name: 'model_id') required this.modelId,
      @JsonKey(name: 'model_name') required this.modelName,
      @JsonKey(name: 'model_image_url') required this.modelImageUrl,
      @JsonKey(name: 'vendor_id') required this.vendorId,
      @JsonKey(name: 'vendor_name') this.vendorName,
      @JsonKey(name: 'address') required this.address,
      @JsonKey(name: 'customer_id') required this.customerId,
      @JsonKey(name: 'customer_name') required this.customerName,
      @JsonKey(name: 'inv_date') required final List<int> invDate,
      @JsonKey(name: 'warranty') required this.warranty})
      : _invDate = invDate;

  factory _$DeviceScanResponseImpl.fromJson(Map<String, dynamic> json) =>
      _$$DeviceScanResponseImplFromJson(json);

  @override
  @JsonKey(name: 'device_id')
  final int deviceId;
  @override
  @JsonKey(name: 'sn')
  final String? sn;
  @override
  @JsonKey(name: 'mac')
  final String mac;
  @override
  @JsonKey(name: 'user_id')
  final int? userId;
  @override
  @JsonKey(name: 'name')
  final String name;
  @override
  @JsonKey(name: 'model_id')
  final int modelId;
  @override
  @JsonKey(name: 'model_name')
  final String modelName;
  @override
  @JsonKey(name: 'model_image_url')
  final String modelImageUrl;
  @override
  @JsonKey(name: 'vendor_id')
  final int vendorId;
  @override
  @JsonKey(name: 'vendor_name')
  final String? vendorName;
  @override
  @JsonKey(name: 'address')
  final String address;
  @override
  @JsonKey(name: 'customer_id')
  final int customerId;
  @override
  @JsonKey(name: 'customer_name')
  final String customerName;
  final List<int> _invDate;
  @override
  @JsonKey(name: 'inv_date')
  List<int> get invDate {
    if (_invDate is EqualUnmodifiableListView) return _invDate;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_invDate);
  }

  @override
  @JsonKey(name: 'warranty')
  final int warranty;

  @override
  String toString() {
    return 'DeviceScanResponse(deviceId: $deviceId, sn: $sn, mac: $mac, userId: $userId, name: $name, modelId: $modelId, modelName: $modelName, modelImageUrl: $modelImageUrl, vendorId: $vendorId, vendorName: $vendorName, address: $address, customerId: $customerId, customerName: $customerName, invDate: $invDate, warranty: $warranty)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$DeviceScanResponseImpl &&
            (identical(other.deviceId, deviceId) ||
                other.deviceId == deviceId) &&
            (identical(other.sn, sn) || other.sn == sn) &&
            (identical(other.mac, mac) || other.mac == mac) &&
            (identical(other.userId, userId) || other.userId == userId) &&
            (identical(other.name, name) || other.name == name) &&
            (identical(other.modelId, modelId) || other.modelId == modelId) &&
            (identical(other.modelName, modelName) ||
                other.modelName == modelName) &&
            (identical(other.modelImageUrl, modelImageUrl) ||
                other.modelImageUrl == modelImageUrl) &&
            (identical(other.vendorId, vendorId) ||
                other.vendorId == vendorId) &&
            (identical(other.vendorName, vendorName) ||
                other.vendorName == vendorName) &&
            (identical(other.address, address) || other.address == address) &&
            (identical(other.customerId, customerId) ||
                other.customerId == customerId) &&
            (identical(other.customerName, customerName) ||
                other.customerName == customerName) &&
            const DeepCollectionEquality().equals(other._invDate, _invDate) &&
            (identical(other.warranty, warranty) ||
                other.warranty == warranty));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      deviceId,
      sn,
      mac,
      userId,
      name,
      modelId,
      modelName,
      modelImageUrl,
      vendorId,
      vendorName,
      address,
      customerId,
      customerName,
      const DeepCollectionEquality().hash(_invDate),
      warranty);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$DeviceScanResponseImplCopyWith<_$DeviceScanResponseImpl> get copyWith =>
      __$$DeviceScanResponseImplCopyWithImpl<_$DeviceScanResponseImpl>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$DeviceScanResponseImplToJson(
      this,
    );
  }
}

abstract class _DeviceScanResponse implements DeviceScanResponse {
  const factory _DeviceScanResponse(
          {@JsonKey(name: 'device_id') required final int deviceId,
          @JsonKey(name: 'sn') final String? sn,
          @JsonKey(name: 'mac') required final String mac,
          @JsonKey(name: 'user_id') final int? userId,
          @JsonKey(name: 'name') required final String name,
          @JsonKey(name: 'model_id') required final int modelId,
          @JsonKey(name: 'model_name') required final String modelName,
          @JsonKey(name: 'model_image_url') required final String modelImageUrl,
          @JsonKey(name: 'vendor_id') required final int vendorId,
          @JsonKey(name: 'vendor_name') final String? vendorName,
          @JsonKey(name: 'address') required final String address,
          @JsonKey(name: 'customer_id') required final int customerId,
          @JsonKey(name: 'customer_name') required final String customerName,
          @JsonKey(name: 'inv_date') required final List<int> invDate,
          @JsonKey(name: 'warranty') required final int warranty}) =
      _$DeviceScanResponseImpl;

  factory _DeviceScanResponse.fromJson(Map<String, dynamic> json) =
      _$DeviceScanResponseImpl.fromJson;

  @override
  @JsonKey(name: 'device_id')
  int get deviceId;
  @override
  @JsonKey(name: 'sn')
  String? get sn;
  @override
  @JsonKey(name: 'mac')
  String get mac;
  @override
  @JsonKey(name: 'user_id')
  int? get userId;
  @override
  @JsonKey(name: 'name')
  String get name;
  @override
  @JsonKey(name: 'model_id')
  int get modelId;
  @override
  @JsonKey(name: 'model_name')
  String get modelName;
  @override
  @JsonKey(name: 'model_image_url')
  String get modelImageUrl;
  @override
  @JsonKey(name: 'vendor_id')
  int get vendorId;
  @override
  @JsonKey(name: 'vendor_name')
  String? get vendorName;
  @override
  @JsonKey(name: 'address')
  String get address;
  @override
  @JsonKey(name: 'customer_id')
  int get customerId;
  @override
  @JsonKey(name: 'customer_name')
  String get customerName;
  @override
  @JsonKey(name: 'inv_date')
  List<int> get invDate;
  @override
  @JsonKey(name: 'warranty')
  int get warranty;
  @override
  @JsonKey(ignore: true)
  _$$DeviceScanResponseImplCopyWith<_$DeviceScanResponseImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
