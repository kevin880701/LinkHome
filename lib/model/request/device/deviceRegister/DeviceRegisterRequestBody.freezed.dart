// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'DeviceRegisterRequestBody.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

DeviceRegisterRequestBody _$DeviceRegisterRequestBodyFromJson(
    Map<String, dynamic> json) {
  return _DeviceRegisterRequestBody.fromJson(json);
}

/// @nodoc
mixin _$DeviceRegisterRequestBody {
  @JsonKey(name: 'sn')
  String get sn => throw _privateConstructorUsedError;
  @JsonKey(name: 'mac')
  String? get mac => throw _privateConstructorUsedError;
  @JsonKey(name: 'name')
  String get name => throw _privateConstructorUsedError;
  @JsonKey(name: 'place_id')
  int? get placeId => throw _privateConstructorUsedError;
  @JsonKey(name: 'area_id')
  int? get areaId => throw _privateConstructorUsedError;
  @JsonKey(name: 'customer_id')
  int? get customerId => throw _privateConstructorUsedError;
  @JsonKey(name: 'vendor_id')
  int get vendorId => throw _privateConstructorUsedError;
  @JsonKey(name: 'model_id')
  int get modelId => throw _privateConstructorUsedError;
  @JsonKey(name: 'customer_address')
  String? get customerAddress => throw _privateConstructorUsedError;
  @JsonKey(name: 'owner')
  String? get owner => throw _privateConstructorUsedError;
  @JsonKey(name: 'warranty_email')
  String? get warrantyEmail => throw _privateConstructorUsedError;
  @JsonKey(name: 'warranty_tel')
  String? get warrantyTel => throw _privateConstructorUsedError;
  @JsonKey(name: 'inv_date')
  String get invDate => throw _privateConstructorUsedError;
  @JsonKey(name: 'work_order_number')
  String? get workOrderNumber => throw _privateConstructorUsedError;
  @JsonKey(name: 'manual_brand')
  String? get manualBrand => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $DeviceRegisterRequestBodyCopyWith<DeviceRegisterRequestBody> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $DeviceRegisterRequestBodyCopyWith<$Res> {
  factory $DeviceRegisterRequestBodyCopyWith(DeviceRegisterRequestBody value,
          $Res Function(DeviceRegisterRequestBody) then) =
      _$DeviceRegisterRequestBodyCopyWithImpl<$Res, DeviceRegisterRequestBody>;
  @useResult
  $Res call(
      {@JsonKey(name: 'sn') String sn,
      @JsonKey(name: 'mac') String? mac,
      @JsonKey(name: 'name') String name,
      @JsonKey(name: 'place_id') int? placeId,
      @JsonKey(name: 'area_id') int? areaId,
      @JsonKey(name: 'customer_id') int? customerId,
      @JsonKey(name: 'vendor_id') int vendorId,
      @JsonKey(name: 'model_id') int modelId,
      @JsonKey(name: 'customer_address') String? customerAddress,
      @JsonKey(name: 'owner') String? owner,
      @JsonKey(name: 'warranty_email') String? warrantyEmail,
      @JsonKey(name: 'warranty_tel') String? warrantyTel,
      @JsonKey(name: 'inv_date') String invDate,
      @JsonKey(name: 'work_order_number') String? workOrderNumber,
      @JsonKey(name: 'manual_brand') String? manualBrand});
}

/// @nodoc
class _$DeviceRegisterRequestBodyCopyWithImpl<$Res,
        $Val extends DeviceRegisterRequestBody>
    implements $DeviceRegisterRequestBodyCopyWith<$Res> {
  _$DeviceRegisterRequestBodyCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? sn = null,
    Object? mac = freezed,
    Object? name = null,
    Object? placeId = freezed,
    Object? areaId = freezed,
    Object? customerId = freezed,
    Object? vendorId = null,
    Object? modelId = null,
    Object? customerAddress = freezed,
    Object? owner = freezed,
    Object? warrantyEmail = freezed,
    Object? warrantyTel = freezed,
    Object? invDate = null,
    Object? workOrderNumber = freezed,
    Object? manualBrand = freezed,
  }) {
    return _then(_value.copyWith(
      sn: null == sn
          ? _value.sn
          : sn // ignore: cast_nullable_to_non_nullable
              as String,
      mac: freezed == mac
          ? _value.mac
          : mac // ignore: cast_nullable_to_non_nullable
              as String?,
      name: null == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
      placeId: freezed == placeId
          ? _value.placeId
          : placeId // ignore: cast_nullable_to_non_nullable
              as int?,
      areaId: freezed == areaId
          ? _value.areaId
          : areaId // ignore: cast_nullable_to_non_nullable
              as int?,
      customerId: freezed == customerId
          ? _value.customerId
          : customerId // ignore: cast_nullable_to_non_nullable
              as int?,
      vendorId: null == vendorId
          ? _value.vendorId
          : vendorId // ignore: cast_nullable_to_non_nullable
              as int,
      modelId: null == modelId
          ? _value.modelId
          : modelId // ignore: cast_nullable_to_non_nullable
              as int,
      customerAddress: freezed == customerAddress
          ? _value.customerAddress
          : customerAddress // ignore: cast_nullable_to_non_nullable
              as String?,
      owner: freezed == owner
          ? _value.owner
          : owner // ignore: cast_nullable_to_non_nullable
              as String?,
      warrantyEmail: freezed == warrantyEmail
          ? _value.warrantyEmail
          : warrantyEmail // ignore: cast_nullable_to_non_nullable
              as String?,
      warrantyTel: freezed == warrantyTel
          ? _value.warrantyTel
          : warrantyTel // ignore: cast_nullable_to_non_nullable
              as String?,
      invDate: null == invDate
          ? _value.invDate
          : invDate // ignore: cast_nullable_to_non_nullable
              as String,
      workOrderNumber: freezed == workOrderNumber
          ? _value.workOrderNumber
          : workOrderNumber // ignore: cast_nullable_to_non_nullable
              as String?,
      manualBrand: freezed == manualBrand
          ? _value.manualBrand
          : manualBrand // ignore: cast_nullable_to_non_nullable
              as String?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$DeviceRegisterRequestBodyImplCopyWith<$Res>
    implements $DeviceRegisterRequestBodyCopyWith<$Res> {
  factory _$$DeviceRegisterRequestBodyImplCopyWith(
          _$DeviceRegisterRequestBodyImpl value,
          $Res Function(_$DeviceRegisterRequestBodyImpl) then) =
      __$$DeviceRegisterRequestBodyImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {@JsonKey(name: 'sn') String sn,
      @JsonKey(name: 'mac') String? mac,
      @JsonKey(name: 'name') String name,
      @JsonKey(name: 'place_id') int? placeId,
      @JsonKey(name: 'area_id') int? areaId,
      @JsonKey(name: 'customer_id') int? customerId,
      @JsonKey(name: 'vendor_id') int vendorId,
      @JsonKey(name: 'model_id') int modelId,
      @JsonKey(name: 'customer_address') String? customerAddress,
      @JsonKey(name: 'owner') String? owner,
      @JsonKey(name: 'warranty_email') String? warrantyEmail,
      @JsonKey(name: 'warranty_tel') String? warrantyTel,
      @JsonKey(name: 'inv_date') String invDate,
      @JsonKey(name: 'work_order_number') String? workOrderNumber,
      @JsonKey(name: 'manual_brand') String? manualBrand});
}

/// @nodoc
class __$$DeviceRegisterRequestBodyImplCopyWithImpl<$Res>
    extends _$DeviceRegisterRequestBodyCopyWithImpl<$Res,
        _$DeviceRegisterRequestBodyImpl>
    implements _$$DeviceRegisterRequestBodyImplCopyWith<$Res> {
  __$$DeviceRegisterRequestBodyImplCopyWithImpl(
      _$DeviceRegisterRequestBodyImpl _value,
      $Res Function(_$DeviceRegisterRequestBodyImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? sn = null,
    Object? mac = freezed,
    Object? name = null,
    Object? placeId = freezed,
    Object? areaId = freezed,
    Object? customerId = freezed,
    Object? vendorId = null,
    Object? modelId = null,
    Object? customerAddress = freezed,
    Object? owner = freezed,
    Object? warrantyEmail = freezed,
    Object? warrantyTel = freezed,
    Object? invDate = null,
    Object? workOrderNumber = freezed,
    Object? manualBrand = freezed,
  }) {
    return _then(_$DeviceRegisterRequestBodyImpl(
      sn: null == sn
          ? _value.sn
          : sn // ignore: cast_nullable_to_non_nullable
              as String,
      mac: freezed == mac
          ? _value.mac
          : mac // ignore: cast_nullable_to_non_nullable
              as String?,
      name: null == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
      placeId: freezed == placeId
          ? _value.placeId
          : placeId // ignore: cast_nullable_to_non_nullable
              as int?,
      areaId: freezed == areaId
          ? _value.areaId
          : areaId // ignore: cast_nullable_to_non_nullable
              as int?,
      customerId: freezed == customerId
          ? _value.customerId
          : customerId // ignore: cast_nullable_to_non_nullable
              as int?,
      vendorId: null == vendorId
          ? _value.vendorId
          : vendorId // ignore: cast_nullable_to_non_nullable
              as int,
      modelId: null == modelId
          ? _value.modelId
          : modelId // ignore: cast_nullable_to_non_nullable
              as int,
      customerAddress: freezed == customerAddress
          ? _value.customerAddress
          : customerAddress // ignore: cast_nullable_to_non_nullable
              as String?,
      owner: freezed == owner
          ? _value.owner
          : owner // ignore: cast_nullable_to_non_nullable
              as String?,
      warrantyEmail: freezed == warrantyEmail
          ? _value.warrantyEmail
          : warrantyEmail // ignore: cast_nullable_to_non_nullable
              as String?,
      warrantyTel: freezed == warrantyTel
          ? _value.warrantyTel
          : warrantyTel // ignore: cast_nullable_to_non_nullable
              as String?,
      invDate: null == invDate
          ? _value.invDate
          : invDate // ignore: cast_nullable_to_non_nullable
              as String,
      workOrderNumber: freezed == workOrderNumber
          ? _value.workOrderNumber
          : workOrderNumber // ignore: cast_nullable_to_non_nullable
              as String?,
      manualBrand: freezed == manualBrand
          ? _value.manualBrand
          : manualBrand // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$DeviceRegisterRequestBodyImpl implements _DeviceRegisterRequestBody {
  const _$DeviceRegisterRequestBodyImpl(
      {@JsonKey(name: 'sn') required this.sn,
      @JsonKey(name: 'mac') this.mac,
      @JsonKey(name: 'name') required this.name,
      @JsonKey(name: 'place_id') this.placeId,
      @JsonKey(name: 'area_id') this.areaId,
      @JsonKey(name: 'customer_id') this.customerId,
      @JsonKey(name: 'vendor_id') required this.vendorId,
      @JsonKey(name: 'model_id') required this.modelId,
      @JsonKey(name: 'customer_address') this.customerAddress,
      @JsonKey(name: 'owner') this.owner,
      @JsonKey(name: 'warranty_email') this.warrantyEmail,
      @JsonKey(name: 'warranty_tel') this.warrantyTel,
      @JsonKey(name: 'inv_date') required this.invDate,
      @JsonKey(name: 'work_order_number') this.workOrderNumber,
      @JsonKey(name: 'manual_brand') this.manualBrand});

  factory _$DeviceRegisterRequestBodyImpl.fromJson(Map<String, dynamic> json) =>
      _$$DeviceRegisterRequestBodyImplFromJson(json);

  @override
  @JsonKey(name: 'sn')
  final String sn;
  @override
  @JsonKey(name: 'mac')
  final String? mac;
  @override
  @JsonKey(name: 'name')
  final String name;
  @override
  @JsonKey(name: 'place_id')
  final int? placeId;
  @override
  @JsonKey(name: 'area_id')
  final int? areaId;
  @override
  @JsonKey(name: 'customer_id')
  final int? customerId;
  @override
  @JsonKey(name: 'vendor_id')
  final int vendorId;
  @override
  @JsonKey(name: 'model_id')
  final int modelId;
  @override
  @JsonKey(name: 'customer_address')
  final String? customerAddress;
  @override
  @JsonKey(name: 'owner')
  final String? owner;
  @override
  @JsonKey(name: 'warranty_email')
  final String? warrantyEmail;
  @override
  @JsonKey(name: 'warranty_tel')
  final String? warrantyTel;
  @override
  @JsonKey(name: 'inv_date')
  final String invDate;
  @override
  @JsonKey(name: 'work_order_number')
  final String? workOrderNumber;
  @override
  @JsonKey(name: 'manual_brand')
  final String? manualBrand;

  @override
  String toString() {
    return 'DeviceRegisterRequestBody(sn: $sn, mac: $mac, name: $name, placeId: $placeId, areaId: $areaId, customerId: $customerId, vendorId: $vendorId, modelId: $modelId, customerAddress: $customerAddress, owner: $owner, warrantyEmail: $warrantyEmail, warrantyTel: $warrantyTel, invDate: $invDate, workOrderNumber: $workOrderNumber, manualBrand: $manualBrand)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$DeviceRegisterRequestBodyImpl &&
            (identical(other.sn, sn) || other.sn == sn) &&
            (identical(other.mac, mac) || other.mac == mac) &&
            (identical(other.name, name) || other.name == name) &&
            (identical(other.placeId, placeId) || other.placeId == placeId) &&
            (identical(other.areaId, areaId) || other.areaId == areaId) &&
            (identical(other.customerId, customerId) ||
                other.customerId == customerId) &&
            (identical(other.vendorId, vendorId) ||
                other.vendorId == vendorId) &&
            (identical(other.modelId, modelId) || other.modelId == modelId) &&
            (identical(other.customerAddress, customerAddress) ||
                other.customerAddress == customerAddress) &&
            (identical(other.owner, owner) || other.owner == owner) &&
            (identical(other.warrantyEmail, warrantyEmail) ||
                other.warrantyEmail == warrantyEmail) &&
            (identical(other.warrantyTel, warrantyTel) ||
                other.warrantyTel == warrantyTel) &&
            (identical(other.invDate, invDate) || other.invDate == invDate) &&
            (identical(other.workOrderNumber, workOrderNumber) ||
                other.workOrderNumber == workOrderNumber) &&
            (identical(other.manualBrand, manualBrand) ||
                other.manualBrand == manualBrand));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      sn,
      mac,
      name,
      placeId,
      areaId,
      customerId,
      vendorId,
      modelId,
      customerAddress,
      owner,
      warrantyEmail,
      warrantyTel,
      invDate,
      workOrderNumber,
      manualBrand);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$DeviceRegisterRequestBodyImplCopyWith<_$DeviceRegisterRequestBodyImpl>
      get copyWith => __$$DeviceRegisterRequestBodyImplCopyWithImpl<
          _$DeviceRegisterRequestBodyImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$DeviceRegisterRequestBodyImplToJson(
      this,
    );
  }
}

abstract class _DeviceRegisterRequestBody implements DeviceRegisterRequestBody {
  const factory _DeviceRegisterRequestBody(
          {@JsonKey(name: 'sn') required final String sn,
          @JsonKey(name: 'mac') final String? mac,
          @JsonKey(name: 'name') required final String name,
          @JsonKey(name: 'place_id') final int? placeId,
          @JsonKey(name: 'area_id') final int? areaId,
          @JsonKey(name: 'customer_id') final int? customerId,
          @JsonKey(name: 'vendor_id') required final int vendorId,
          @JsonKey(name: 'model_id') required final int modelId,
          @JsonKey(name: 'customer_address') final String? customerAddress,
          @JsonKey(name: 'owner') final String? owner,
          @JsonKey(name: 'warranty_email') final String? warrantyEmail,
          @JsonKey(name: 'warranty_tel') final String? warrantyTel,
          @JsonKey(name: 'inv_date') required final String invDate,
          @JsonKey(name: 'work_order_number') final String? workOrderNumber,
          @JsonKey(name: 'manual_brand') final String? manualBrand}) =
      _$DeviceRegisterRequestBodyImpl;

  factory _DeviceRegisterRequestBody.fromJson(Map<String, dynamic> json) =
      _$DeviceRegisterRequestBodyImpl.fromJson;

  @override
  @JsonKey(name: 'sn')
  String get sn;
  @override
  @JsonKey(name: 'mac')
  String? get mac;
  @override
  @JsonKey(name: 'name')
  String get name;
  @override
  @JsonKey(name: 'place_id')
  int? get placeId;
  @override
  @JsonKey(name: 'area_id')
  int? get areaId;
  @override
  @JsonKey(name: 'customer_id')
  int? get customerId;
  @override
  @JsonKey(name: 'vendor_id')
  int get vendorId;
  @override
  @JsonKey(name: 'model_id')
  int get modelId;
  @override
  @JsonKey(name: 'customer_address')
  String? get customerAddress;
  @override
  @JsonKey(name: 'owner')
  String? get owner;
  @override
  @JsonKey(name: 'warranty_email')
  String? get warrantyEmail;
  @override
  @JsonKey(name: 'warranty_tel')
  String? get warrantyTel;
  @override
  @JsonKey(name: 'inv_date')
  String get invDate;
  @override
  @JsonKey(name: 'work_order_number')
  String? get workOrderNumber;
  @override
  @JsonKey(name: 'manual_brand')
  String? get manualBrand;
  @override
  @JsonKey(ignore: true)
  _$$DeviceRegisterRequestBodyImplCopyWith<_$DeviceRegisterRequestBodyImpl>
      get copyWith => throw _privateConstructorUsedError;
}
