// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'EngineerWorkOrderResponse.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

EngineerWorkOrderResponse _$EngineerWorkOrderResponseFromJson(
    Map<String, dynamic> json) {
  return _EngineerWorkOrderResponse.fromJson(json);
}

/// @nodoc
mixin _$EngineerWorkOrderResponse {
  @JsonKey(name: 'm_id')
  int get mId => throw _privateConstructorUsedError;
  @JsonKey(name: 'status')
  int get status => throw _privateConstructorUsedError;
  @JsonKey(name: 'type_name')
  String get typeName => throw _privateConstructorUsedError;
  @JsonKey(name: 'status_name')
  String get statusName => throw _privateConstructorUsedError;
  @JsonKey(name: 'name')
  String get name => throw _privateConstructorUsedError;
  @JsonKey(name: 'address')
  String? get address => throw _privateConstructorUsedError;
  @JsonKey(name: 'continuance')
  int get continuance => throw _privateConstructorUsedError;
  @JsonKey(name: 'appointed_datetime')
  String get appointedDatetime => throw _privateConstructorUsedError;
  @JsonKey(name: 'added_time')
  String get addedTime => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $EngineerWorkOrderResponseCopyWith<EngineerWorkOrderResponse> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $EngineerWorkOrderResponseCopyWith<$Res> {
  factory $EngineerWorkOrderResponseCopyWith(EngineerWorkOrderResponse value,
          $Res Function(EngineerWorkOrderResponse) then) =
      _$EngineerWorkOrderResponseCopyWithImpl<$Res, EngineerWorkOrderResponse>;
  @useResult
  $Res call(
      {@JsonKey(name: 'm_id') int mId,
      @JsonKey(name: 'status') int status,
      @JsonKey(name: 'type_name') String typeName,
      @JsonKey(name: 'status_name') String statusName,
      @JsonKey(name: 'name') String name,
      @JsonKey(name: 'address') String? address,
      @JsonKey(name: 'continuance') int continuance,
      @JsonKey(name: 'appointed_datetime') String appointedDatetime,
      @JsonKey(name: 'added_time') String addedTime});
}

/// @nodoc
class _$EngineerWorkOrderResponseCopyWithImpl<$Res,
        $Val extends EngineerWorkOrderResponse>
    implements $EngineerWorkOrderResponseCopyWith<$Res> {
  _$EngineerWorkOrderResponseCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? mId = null,
    Object? status = null,
    Object? typeName = null,
    Object? statusName = null,
    Object? name = null,
    Object? address = freezed,
    Object? continuance = null,
    Object? appointedDatetime = null,
    Object? addedTime = null,
  }) {
    return _then(_value.copyWith(
      mId: null == mId
          ? _value.mId
          : mId // ignore: cast_nullable_to_non_nullable
              as int,
      status: null == status
          ? _value.status
          : status // ignore: cast_nullable_to_non_nullable
              as int,
      typeName: null == typeName
          ? _value.typeName
          : typeName // ignore: cast_nullable_to_non_nullable
              as String,
      statusName: null == statusName
          ? _value.statusName
          : statusName // ignore: cast_nullable_to_non_nullable
              as String,
      name: null == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
      address: freezed == address
          ? _value.address
          : address // ignore: cast_nullable_to_non_nullable
              as String?,
      continuance: null == continuance
          ? _value.continuance
          : continuance // ignore: cast_nullable_to_non_nullable
              as int,
      appointedDatetime: null == appointedDatetime
          ? _value.appointedDatetime
          : appointedDatetime // ignore: cast_nullable_to_non_nullable
              as String,
      addedTime: null == addedTime
          ? _value.addedTime
          : addedTime // ignore: cast_nullable_to_non_nullable
              as String,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$EngineerWorkOrderResponseImplCopyWith<$Res>
    implements $EngineerWorkOrderResponseCopyWith<$Res> {
  factory _$$EngineerWorkOrderResponseImplCopyWith(
          _$EngineerWorkOrderResponseImpl value,
          $Res Function(_$EngineerWorkOrderResponseImpl) then) =
      __$$EngineerWorkOrderResponseImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {@JsonKey(name: 'm_id') int mId,
      @JsonKey(name: 'status') int status,
      @JsonKey(name: 'type_name') String typeName,
      @JsonKey(name: 'status_name') String statusName,
      @JsonKey(name: 'name') String name,
      @JsonKey(name: 'address') String? address,
      @JsonKey(name: 'continuance') int continuance,
      @JsonKey(name: 'appointed_datetime') String appointedDatetime,
      @JsonKey(name: 'added_time') String addedTime});
}

/// @nodoc
class __$$EngineerWorkOrderResponseImplCopyWithImpl<$Res>
    extends _$EngineerWorkOrderResponseCopyWithImpl<$Res,
        _$EngineerWorkOrderResponseImpl>
    implements _$$EngineerWorkOrderResponseImplCopyWith<$Res> {
  __$$EngineerWorkOrderResponseImplCopyWithImpl(
      _$EngineerWorkOrderResponseImpl _value,
      $Res Function(_$EngineerWorkOrderResponseImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? mId = null,
    Object? status = null,
    Object? typeName = null,
    Object? statusName = null,
    Object? name = null,
    Object? address = freezed,
    Object? continuance = null,
    Object? appointedDatetime = null,
    Object? addedTime = null,
  }) {
    return _then(_$EngineerWorkOrderResponseImpl(
      mId: null == mId
          ? _value.mId
          : mId // ignore: cast_nullable_to_non_nullable
              as int,
      status: null == status
          ? _value.status
          : status // ignore: cast_nullable_to_non_nullable
              as int,
      typeName: null == typeName
          ? _value.typeName
          : typeName // ignore: cast_nullable_to_non_nullable
              as String,
      statusName: null == statusName
          ? _value.statusName
          : statusName // ignore: cast_nullable_to_non_nullable
              as String,
      name: null == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
      address: freezed == address
          ? _value.address
          : address // ignore: cast_nullable_to_non_nullable
              as String?,
      continuance: null == continuance
          ? _value.continuance
          : continuance // ignore: cast_nullable_to_non_nullable
              as int,
      appointedDatetime: null == appointedDatetime
          ? _value.appointedDatetime
          : appointedDatetime // ignore: cast_nullable_to_non_nullable
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
class _$EngineerWorkOrderResponseImpl implements _EngineerWorkOrderResponse {
  const _$EngineerWorkOrderResponseImpl(
      {@JsonKey(name: 'm_id') required this.mId,
      @JsonKey(name: 'status') required this.status,
      @JsonKey(name: 'type_name') required this.typeName,
      @JsonKey(name: 'status_name') required this.statusName,
      @JsonKey(name: 'name') required this.name,
      @JsonKey(name: 'address') this.address,
      @JsonKey(name: 'continuance') required this.continuance,
      @JsonKey(name: 'appointed_datetime') required this.appointedDatetime,
      @JsonKey(name: 'added_time') required this.addedTime});

  factory _$EngineerWorkOrderResponseImpl.fromJson(Map<String, dynamic> json) =>
      _$$EngineerWorkOrderResponseImplFromJson(json);

  @override
  @JsonKey(name: 'm_id')
  final int mId;
  @override
  @JsonKey(name: 'status')
  final int status;
  @override
  @JsonKey(name: 'type_name')
  final String typeName;
  @override
  @JsonKey(name: 'status_name')
  final String statusName;
  @override
  @JsonKey(name: 'name')
  final String name;
  @override
  @JsonKey(name: 'address')
  final String? address;
  @override
  @JsonKey(name: 'continuance')
  final int continuance;
  @override
  @JsonKey(name: 'appointed_datetime')
  final String appointedDatetime;
  @override
  @JsonKey(name: 'added_time')
  final String addedTime;

  @override
  String toString() {
    return 'EngineerWorkOrderResponse(mId: $mId, status: $status, typeName: $typeName, statusName: $statusName, name: $name, address: $address, continuance: $continuance, appointedDatetime: $appointedDatetime, addedTime: $addedTime)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$EngineerWorkOrderResponseImpl &&
            (identical(other.mId, mId) || other.mId == mId) &&
            (identical(other.status, status) || other.status == status) &&
            (identical(other.typeName, typeName) ||
                other.typeName == typeName) &&
            (identical(other.statusName, statusName) ||
                other.statusName == statusName) &&
            (identical(other.name, name) || other.name == name) &&
            (identical(other.address, address) || other.address == address) &&
            (identical(other.continuance, continuance) ||
                other.continuance == continuance) &&
            (identical(other.appointedDatetime, appointedDatetime) ||
                other.appointedDatetime == appointedDatetime) &&
            (identical(other.addedTime, addedTime) ||
                other.addedTime == addedTime));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, mId, status, typeName,
      statusName, name, address, continuance, appointedDatetime, addedTime);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$EngineerWorkOrderResponseImplCopyWith<_$EngineerWorkOrderResponseImpl>
      get copyWith => __$$EngineerWorkOrderResponseImplCopyWithImpl<
          _$EngineerWorkOrderResponseImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$EngineerWorkOrderResponseImplToJson(
      this,
    );
  }
}

abstract class _EngineerWorkOrderResponse implements EngineerWorkOrderResponse {
  const factory _EngineerWorkOrderResponse(
          {@JsonKey(name: 'm_id') required final int mId,
          @JsonKey(name: 'status') required final int status,
          @JsonKey(name: 'type_name') required final String typeName,
          @JsonKey(name: 'status_name') required final String statusName,
          @JsonKey(name: 'name') required final String name,
          @JsonKey(name: 'address') final String? address,
          @JsonKey(name: 'continuance') required final int continuance,
          @JsonKey(name: 'appointed_datetime')
          required final String appointedDatetime,
          @JsonKey(name: 'added_time') required final String addedTime}) =
      _$EngineerWorkOrderResponseImpl;

  factory _EngineerWorkOrderResponse.fromJson(Map<String, dynamic> json) =
      _$EngineerWorkOrderResponseImpl.fromJson;

  @override
  @JsonKey(name: 'm_id')
  int get mId;
  @override
  @JsonKey(name: 'status')
  int get status;
  @override
  @JsonKey(name: 'type_name')
  String get typeName;
  @override
  @JsonKey(name: 'status_name')
  String get statusName;
  @override
  @JsonKey(name: 'name')
  String get name;
  @override
  @JsonKey(name: 'address')
  String? get address;
  @override
  @JsonKey(name: 'continuance')
  int get continuance;
  @override
  @JsonKey(name: 'appointed_datetime')
  String get appointedDatetime;
  @override
  @JsonKey(name: 'added_time')
  String get addedTime;
  @override
  @JsonKey(ignore: true)
  _$$EngineerWorkOrderResponseImplCopyWith<_$EngineerWorkOrderResponseImpl>
      get copyWith => throw _privateConstructorUsedError;
}
