// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'GetVendorInfoResponse.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

GetVendorInfoResponse _$GetVendorInfoResponseFromJson(
    Map<String, dynamic> json) {
  return _GetVendorInfoResponse.fromJson(json);
}

/// @nodoc
mixin _$GetVendorInfoResponse {
  @JsonKey(name: 'vendor_id')
  int get vendorId => throw _privateConstructorUsedError;
  @JsonKey(name: 'name')
  String get name => throw _privateConstructorUsedError;
  @JsonKey(name: 'tel')
  String get tel => throw _privateConstructorUsedError;
  @JsonKey(name: 'tax_id')
  String get taxId => throw _privateConstructorUsedError;
  @JsonKey(name: 'city')
  String get city => throw _privateConstructorUsedError;
  @JsonKey(name: 'region')
  String get region => throw _privateConstructorUsedError;
  @JsonKey(name: 'address')
  String get address => throw _privateConstructorUsedError;
  @JsonKey(name: 'token')
  String get token => throw _privateConstructorUsedError;
  @JsonKey(name: 'description')
  String get description => throw _privateConstructorUsedError;
  @JsonKey(name: 'erp')
  String get erp => throw _privateConstructorUsedError;
  @JsonKey(name: 'added_time')
  String get addedTime => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $GetVendorInfoResponseCopyWith<GetVendorInfoResponse> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $GetVendorInfoResponseCopyWith<$Res> {
  factory $GetVendorInfoResponseCopyWith(GetVendorInfoResponse value,
          $Res Function(GetVendorInfoResponse) then) =
      _$GetVendorInfoResponseCopyWithImpl<$Res, GetVendorInfoResponse>;
  @useResult
  $Res call(
      {@JsonKey(name: 'vendor_id') int vendorId,
      @JsonKey(name: 'name') String name,
      @JsonKey(name: 'tel') String tel,
      @JsonKey(name: 'tax_id') String taxId,
      @JsonKey(name: 'city') String city,
      @JsonKey(name: 'region') String region,
      @JsonKey(name: 'address') String address,
      @JsonKey(name: 'token') String token,
      @JsonKey(name: 'description') String description,
      @JsonKey(name: 'erp') String erp,
      @JsonKey(name: 'added_time') String addedTime});
}

/// @nodoc
class _$GetVendorInfoResponseCopyWithImpl<$Res,
        $Val extends GetVendorInfoResponse>
    implements $GetVendorInfoResponseCopyWith<$Res> {
  _$GetVendorInfoResponseCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? vendorId = null,
    Object? name = null,
    Object? tel = null,
    Object? taxId = null,
    Object? city = null,
    Object? region = null,
    Object? address = null,
    Object? token = null,
    Object? description = null,
    Object? erp = null,
    Object? addedTime = null,
  }) {
    return _then(_value.copyWith(
      vendorId: null == vendorId
          ? _value.vendorId
          : vendorId // ignore: cast_nullable_to_non_nullable
              as int,
      name: null == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
      tel: null == tel
          ? _value.tel
          : tel // ignore: cast_nullable_to_non_nullable
              as String,
      taxId: null == taxId
          ? _value.taxId
          : taxId // ignore: cast_nullable_to_non_nullable
              as String,
      city: null == city
          ? _value.city
          : city // ignore: cast_nullable_to_non_nullable
              as String,
      region: null == region
          ? _value.region
          : region // ignore: cast_nullable_to_non_nullable
              as String,
      address: null == address
          ? _value.address
          : address // ignore: cast_nullable_to_non_nullable
              as String,
      token: null == token
          ? _value.token
          : token // ignore: cast_nullable_to_non_nullable
              as String,
      description: null == description
          ? _value.description
          : description // ignore: cast_nullable_to_non_nullable
              as String,
      erp: null == erp
          ? _value.erp
          : erp // ignore: cast_nullable_to_non_nullable
              as String,
      addedTime: null == addedTime
          ? _value.addedTime
          : addedTime // ignore: cast_nullable_to_non_nullable
              as String,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$GetVendorInfoResponseImplCopyWith<$Res>
    implements $GetVendorInfoResponseCopyWith<$Res> {
  factory _$$GetVendorInfoResponseImplCopyWith(
          _$GetVendorInfoResponseImpl value,
          $Res Function(_$GetVendorInfoResponseImpl) then) =
      __$$GetVendorInfoResponseImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {@JsonKey(name: 'vendor_id') int vendorId,
      @JsonKey(name: 'name') String name,
      @JsonKey(name: 'tel') String tel,
      @JsonKey(name: 'tax_id') String taxId,
      @JsonKey(name: 'city') String city,
      @JsonKey(name: 'region') String region,
      @JsonKey(name: 'address') String address,
      @JsonKey(name: 'token') String token,
      @JsonKey(name: 'description') String description,
      @JsonKey(name: 'erp') String erp,
      @JsonKey(name: 'added_time') String addedTime});
}

/// @nodoc
class __$$GetVendorInfoResponseImplCopyWithImpl<$Res>
    extends _$GetVendorInfoResponseCopyWithImpl<$Res,
        _$GetVendorInfoResponseImpl>
    implements _$$GetVendorInfoResponseImplCopyWith<$Res> {
  __$$GetVendorInfoResponseImplCopyWithImpl(_$GetVendorInfoResponseImpl _value,
      $Res Function(_$GetVendorInfoResponseImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? vendorId = null,
    Object? name = null,
    Object? tel = null,
    Object? taxId = null,
    Object? city = null,
    Object? region = null,
    Object? address = null,
    Object? token = null,
    Object? description = null,
    Object? erp = null,
    Object? addedTime = null,
  }) {
    return _then(_$GetVendorInfoResponseImpl(
      vendorId: null == vendorId
          ? _value.vendorId
          : vendorId // ignore: cast_nullable_to_non_nullable
              as int,
      name: null == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
      tel: null == tel
          ? _value.tel
          : tel // ignore: cast_nullable_to_non_nullable
              as String,
      taxId: null == taxId
          ? _value.taxId
          : taxId // ignore: cast_nullable_to_non_nullable
              as String,
      city: null == city
          ? _value.city
          : city // ignore: cast_nullable_to_non_nullable
              as String,
      region: null == region
          ? _value.region
          : region // ignore: cast_nullable_to_non_nullable
              as String,
      address: null == address
          ? _value.address
          : address // ignore: cast_nullable_to_non_nullable
              as String,
      token: null == token
          ? _value.token
          : token // ignore: cast_nullable_to_non_nullable
              as String,
      description: null == description
          ? _value.description
          : description // ignore: cast_nullable_to_non_nullable
              as String,
      erp: null == erp
          ? _value.erp
          : erp // ignore: cast_nullable_to_non_nullable
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
class _$GetVendorInfoResponseImpl implements _GetVendorInfoResponse {
  const _$GetVendorInfoResponseImpl(
      {@JsonKey(name: 'vendor_id') required this.vendorId,
      @JsonKey(name: 'name') required this.name,
      @JsonKey(name: 'tel') required this.tel,
      @JsonKey(name: 'tax_id') required this.taxId,
      @JsonKey(name: 'city') required this.city,
      @JsonKey(name: 'region') required this.region,
      @JsonKey(name: 'address') required this.address,
      @JsonKey(name: 'token') required this.token,
      @JsonKey(name: 'description') required this.description,
      @JsonKey(name: 'erp') required this.erp,
      @JsonKey(name: 'added_time') required this.addedTime});

  factory _$GetVendorInfoResponseImpl.fromJson(Map<String, dynamic> json) =>
      _$$GetVendorInfoResponseImplFromJson(json);

  @override
  @JsonKey(name: 'vendor_id')
  final int vendorId;
  @override
  @JsonKey(name: 'name')
  final String name;
  @override
  @JsonKey(name: 'tel')
  final String tel;
  @override
  @JsonKey(name: 'tax_id')
  final String taxId;
  @override
  @JsonKey(name: 'city')
  final String city;
  @override
  @JsonKey(name: 'region')
  final String region;
  @override
  @JsonKey(name: 'address')
  final String address;
  @override
  @JsonKey(name: 'token')
  final String token;
  @override
  @JsonKey(name: 'description')
  final String description;
  @override
  @JsonKey(name: 'erp')
  final String erp;
  @override
  @JsonKey(name: 'added_time')
  final String addedTime;

  @override
  String toString() {
    return 'GetVendorInfoResponse(vendorId: $vendorId, name: $name, tel: $tel, taxId: $taxId, city: $city, region: $region, address: $address, token: $token, description: $description, erp: $erp, addedTime: $addedTime)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$GetVendorInfoResponseImpl &&
            (identical(other.vendorId, vendorId) ||
                other.vendorId == vendorId) &&
            (identical(other.name, name) || other.name == name) &&
            (identical(other.tel, tel) || other.tel == tel) &&
            (identical(other.taxId, taxId) || other.taxId == taxId) &&
            (identical(other.city, city) || other.city == city) &&
            (identical(other.region, region) || other.region == region) &&
            (identical(other.address, address) || other.address == address) &&
            (identical(other.token, token) || other.token == token) &&
            (identical(other.description, description) ||
                other.description == description) &&
            (identical(other.erp, erp) || other.erp == erp) &&
            (identical(other.addedTime, addedTime) ||
                other.addedTime == addedTime));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, vendorId, name, tel, taxId, city,
      region, address, token, description, erp, addedTime);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$GetVendorInfoResponseImplCopyWith<_$GetVendorInfoResponseImpl>
      get copyWith => __$$GetVendorInfoResponseImplCopyWithImpl<
          _$GetVendorInfoResponseImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$GetVendorInfoResponseImplToJson(
      this,
    );
  }
}

abstract class _GetVendorInfoResponse implements GetVendorInfoResponse {
  const factory _GetVendorInfoResponse(
          {@JsonKey(name: 'vendor_id') required final int vendorId,
          @JsonKey(name: 'name') required final String name,
          @JsonKey(name: 'tel') required final String tel,
          @JsonKey(name: 'tax_id') required final String taxId,
          @JsonKey(name: 'city') required final String city,
          @JsonKey(name: 'region') required final String region,
          @JsonKey(name: 'address') required final String address,
          @JsonKey(name: 'token') required final String token,
          @JsonKey(name: 'description') required final String description,
          @JsonKey(name: 'erp') required final String erp,
          @JsonKey(name: 'added_time') required final String addedTime}) =
      _$GetVendorInfoResponseImpl;

  factory _GetVendorInfoResponse.fromJson(Map<String, dynamic> json) =
      _$GetVendorInfoResponseImpl.fromJson;

  @override
  @JsonKey(name: 'vendor_id')
  int get vendorId;
  @override
  @JsonKey(name: 'name')
  String get name;
  @override
  @JsonKey(name: 'tel')
  String get tel;
  @override
  @JsonKey(name: 'tax_id')
  String get taxId;
  @override
  @JsonKey(name: 'city')
  String get city;
  @override
  @JsonKey(name: 'region')
  String get region;
  @override
  @JsonKey(name: 'address')
  String get address;
  @override
  @JsonKey(name: 'token')
  String get token;
  @override
  @JsonKey(name: 'description')
  String get description;
  @override
  @JsonKey(name: 'erp')
  String get erp;
  @override
  @JsonKey(name: 'added_time')
  String get addedTime;
  @override
  @JsonKey(ignore: true)
  _$$GetVendorInfoResponseImplCopyWith<_$GetVendorInfoResponseImpl>
      get copyWith => throw _privateConstructorUsedError;
}
