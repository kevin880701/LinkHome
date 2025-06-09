// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'UserResponse.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

UserResponse _$UserResponseFromJson(Map<String, dynamic> json) {
  return _UserResponse.fromJson(json);
}

/// @nodoc
mixin _$UserResponse {
  @JsonKey(name: 'user_id')
  int get userId => throw _privateConstructorUsedError;
  String get account => throw _privateConstructorUsedError;
  String? get headshot => throw _privateConstructorUsedError;
  String? get name => throw _privateConstructorUsedError;
  @JsonKey(name: 'roles_name')
  String get rolesName => throw _privateConstructorUsedError;
  @JsonKey(name: 'vendor_id')
  int? get vendorId => throw _privateConstructorUsedError;
  @JsonKey(name: 'vendor_name')
  String? get vendorName => throw _privateConstructorUsedError;
  String? get tel => throw _privateConstructorUsedError;
  String? get city => throw _privateConstructorUsedError;
  String? get region => throw _privateConstructorUsedError;
  int get vip => throw _privateConstructorUsedError;
  @JsonKey(name: 'added_time')
  String get addedTime => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $UserResponseCopyWith<UserResponse> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $UserResponseCopyWith<$Res> {
  factory $UserResponseCopyWith(
          UserResponse value, $Res Function(UserResponse) then) =
      _$UserResponseCopyWithImpl<$Res, UserResponse>;
  @useResult
  $Res call(
      {@JsonKey(name: 'user_id') int userId,
      String account,
      String? headshot,
      String? name,
      @JsonKey(name: 'roles_name') String rolesName,
      @JsonKey(name: 'vendor_id') int? vendorId,
      @JsonKey(name: 'vendor_name') String? vendorName,
      String? tel,
      String? city,
      String? region,
      int vip,
      @JsonKey(name: 'added_time') String addedTime});
}

/// @nodoc
class _$UserResponseCopyWithImpl<$Res, $Val extends UserResponse>
    implements $UserResponseCopyWith<$Res> {
  _$UserResponseCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? userId = null,
    Object? account = null,
    Object? headshot = freezed,
    Object? name = freezed,
    Object? rolesName = null,
    Object? vendorId = freezed,
    Object? vendorName = freezed,
    Object? tel = freezed,
    Object? city = freezed,
    Object? region = freezed,
    Object? vip = null,
    Object? addedTime = null,
  }) {
    return _then(_value.copyWith(
      userId: null == userId
          ? _value.userId
          : userId // ignore: cast_nullable_to_non_nullable
              as int,
      account: null == account
          ? _value.account
          : account // ignore: cast_nullable_to_non_nullable
              as String,
      headshot: freezed == headshot
          ? _value.headshot
          : headshot // ignore: cast_nullable_to_non_nullable
              as String?,
      name: freezed == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String?,
      rolesName: null == rolesName
          ? _value.rolesName
          : rolesName // ignore: cast_nullable_to_non_nullable
              as String,
      vendorId: freezed == vendorId
          ? _value.vendorId
          : vendorId // ignore: cast_nullable_to_non_nullable
              as int?,
      vendorName: freezed == vendorName
          ? _value.vendorName
          : vendorName // ignore: cast_nullable_to_non_nullable
              as String?,
      tel: freezed == tel
          ? _value.tel
          : tel // ignore: cast_nullable_to_non_nullable
              as String?,
      city: freezed == city
          ? _value.city
          : city // ignore: cast_nullable_to_non_nullable
              as String?,
      region: freezed == region
          ? _value.region
          : region // ignore: cast_nullable_to_non_nullable
              as String?,
      vip: null == vip
          ? _value.vip
          : vip // ignore: cast_nullable_to_non_nullable
              as int,
      addedTime: null == addedTime
          ? _value.addedTime
          : addedTime // ignore: cast_nullable_to_non_nullable
              as String,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$UserResponseImplCopyWith<$Res>
    implements $UserResponseCopyWith<$Res> {
  factory _$$UserResponseImplCopyWith(
          _$UserResponseImpl value, $Res Function(_$UserResponseImpl) then) =
      __$$UserResponseImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {@JsonKey(name: 'user_id') int userId,
      String account,
      String? headshot,
      String? name,
      @JsonKey(name: 'roles_name') String rolesName,
      @JsonKey(name: 'vendor_id') int? vendorId,
      @JsonKey(name: 'vendor_name') String? vendorName,
      String? tel,
      String? city,
      String? region,
      int vip,
      @JsonKey(name: 'added_time') String addedTime});
}

/// @nodoc
class __$$UserResponseImplCopyWithImpl<$Res>
    extends _$UserResponseCopyWithImpl<$Res, _$UserResponseImpl>
    implements _$$UserResponseImplCopyWith<$Res> {
  __$$UserResponseImplCopyWithImpl(
      _$UserResponseImpl _value, $Res Function(_$UserResponseImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? userId = null,
    Object? account = null,
    Object? headshot = freezed,
    Object? name = freezed,
    Object? rolesName = null,
    Object? vendorId = freezed,
    Object? vendorName = freezed,
    Object? tel = freezed,
    Object? city = freezed,
    Object? region = freezed,
    Object? vip = null,
    Object? addedTime = null,
  }) {
    return _then(_$UserResponseImpl(
      userId: null == userId
          ? _value.userId
          : userId // ignore: cast_nullable_to_non_nullable
              as int,
      account: null == account
          ? _value.account
          : account // ignore: cast_nullable_to_non_nullable
              as String,
      headshot: freezed == headshot
          ? _value.headshot
          : headshot // ignore: cast_nullable_to_non_nullable
              as String?,
      name: freezed == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String?,
      rolesName: null == rolesName
          ? _value.rolesName
          : rolesName // ignore: cast_nullable_to_non_nullable
              as String,
      vendorId: freezed == vendorId
          ? _value.vendorId
          : vendorId // ignore: cast_nullable_to_non_nullable
              as int?,
      vendorName: freezed == vendorName
          ? _value.vendorName
          : vendorName // ignore: cast_nullable_to_non_nullable
              as String?,
      tel: freezed == tel
          ? _value.tel
          : tel // ignore: cast_nullable_to_non_nullable
              as String?,
      city: freezed == city
          ? _value.city
          : city // ignore: cast_nullable_to_non_nullable
              as String?,
      region: freezed == region
          ? _value.region
          : region // ignore: cast_nullable_to_non_nullable
              as String?,
      vip: null == vip
          ? _value.vip
          : vip // ignore: cast_nullable_to_non_nullable
              as int,
      addedTime: null == addedTime
          ? _value.addedTime
          : addedTime // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$UserResponseImpl implements _UserResponse {
  const _$UserResponseImpl(
      {@JsonKey(name: 'user_id') required this.userId,
      required this.account,
      required this.headshot,
      required this.name,
      @JsonKey(name: 'roles_name') required this.rolesName,
      @JsonKey(name: 'vendor_id') this.vendorId,
      @JsonKey(name: 'vendor_name') this.vendorName,
      this.tel,
      required this.city,
      required this.region,
      required this.vip,
      @JsonKey(name: 'added_time') required this.addedTime});

  factory _$UserResponseImpl.fromJson(Map<String, dynamic> json) =>
      _$$UserResponseImplFromJson(json);

  @override
  @JsonKey(name: 'user_id')
  final int userId;
  @override
  final String account;
  @override
  final String? headshot;
  @override
  final String? name;
  @override
  @JsonKey(name: 'roles_name')
  final String rolesName;
  @override
  @JsonKey(name: 'vendor_id')
  final int? vendorId;
  @override
  @JsonKey(name: 'vendor_name')
  final String? vendorName;
  @override
  final String? tel;
  @override
  final String? city;
  @override
  final String? region;
  @override
  final int vip;
  @override
  @JsonKey(name: 'added_time')
  final String addedTime;

  @override
  String toString() {
    return 'UserResponse(userId: $userId, account: $account, headshot: $headshot, name: $name, rolesName: $rolesName, vendorId: $vendorId, vendorName: $vendorName, tel: $tel, city: $city, region: $region, vip: $vip, addedTime: $addedTime)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$UserResponseImpl &&
            (identical(other.userId, userId) || other.userId == userId) &&
            (identical(other.account, account) || other.account == account) &&
            (identical(other.headshot, headshot) ||
                other.headshot == headshot) &&
            (identical(other.name, name) || other.name == name) &&
            (identical(other.rolesName, rolesName) ||
                other.rolesName == rolesName) &&
            (identical(other.vendorId, vendorId) ||
                other.vendorId == vendorId) &&
            (identical(other.vendorName, vendorName) ||
                other.vendorName == vendorName) &&
            (identical(other.tel, tel) || other.tel == tel) &&
            (identical(other.city, city) || other.city == city) &&
            (identical(other.region, region) || other.region == region) &&
            (identical(other.vip, vip) || other.vip == vip) &&
            (identical(other.addedTime, addedTime) ||
                other.addedTime == addedTime));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, userId, account, headshot, name,
      rolesName, vendorId, vendorName, tel, city, region, vip, addedTime);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$UserResponseImplCopyWith<_$UserResponseImpl> get copyWith =>
      __$$UserResponseImplCopyWithImpl<_$UserResponseImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$UserResponseImplToJson(
      this,
    );
  }
}

abstract class _UserResponse implements UserResponse {
  const factory _UserResponse(
          {@JsonKey(name: 'user_id') required final int userId,
          required final String account,
          required final String? headshot,
          required final String? name,
          @JsonKey(name: 'roles_name') required final String rolesName,
          @JsonKey(name: 'vendor_id') final int? vendorId,
          @JsonKey(name: 'vendor_name') final String? vendorName,
          final String? tel,
          required final String? city,
          required final String? region,
          required final int vip,
          @JsonKey(name: 'added_time') required final String addedTime}) =
      _$UserResponseImpl;

  factory _UserResponse.fromJson(Map<String, dynamic> json) =
      _$UserResponseImpl.fromJson;

  @override
  @JsonKey(name: 'user_id')
  int get userId;
  @override
  String get account;
  @override
  String? get headshot;
  @override
  String? get name;
  @override
  @JsonKey(name: 'roles_name')
  String get rolesName;
  @override
  @JsonKey(name: 'vendor_id')
  int? get vendorId;
  @override
  @JsonKey(name: 'vendor_name')
  String? get vendorName;
  @override
  String? get tel;
  @override
  String? get city;
  @override
  String? get region;
  @override
  int get vip;
  @override
  @JsonKey(name: 'added_time')
  String get addedTime;
  @override
  @JsonKey(ignore: true)
  _$$UserResponseImplCopyWith<_$UserResponseImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
