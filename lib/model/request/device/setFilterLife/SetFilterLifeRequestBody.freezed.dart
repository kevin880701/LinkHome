// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'SetFilterLifeRequestBody.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

SetFilterLifeRequestBody _$SetFilterLifeRequestBodyFromJson(
    Map<String, dynamic> json) {
  return _SetFilterLifeRequestBody.fromJson(json);
}

/// @nodoc
mixin _$SetFilterLifeRequestBody {
  @JsonKey(name: 'cl')
  String get cl => throw _privateConstructorUsedError;
  @JsonKey(name: 'device_id')
  int get deviceId => throw _privateConstructorUsedError;
  @JsonKey(name: 'installation_date')
  String get installationDate => throw _privateConstructorUsedError;
  @JsonKey(name: 'life_month')
  int get lifeMonth => throw _privateConstructorUsedError;
  @JsonKey(name: 'name')
  String get name => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $SetFilterLifeRequestBodyCopyWith<SetFilterLifeRequestBody> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $SetFilterLifeRequestBodyCopyWith<$Res> {
  factory $SetFilterLifeRequestBodyCopyWith(SetFilterLifeRequestBody value,
          $Res Function(SetFilterLifeRequestBody) then) =
      _$SetFilterLifeRequestBodyCopyWithImpl<$Res, SetFilterLifeRequestBody>;
  @useResult
  $Res call(
      {@JsonKey(name: 'cl') String cl,
      @JsonKey(name: 'device_id') int deviceId,
      @JsonKey(name: 'installation_date') String installationDate,
      @JsonKey(name: 'life_month') int lifeMonth,
      @JsonKey(name: 'name') String name});
}

/// @nodoc
class _$SetFilterLifeRequestBodyCopyWithImpl<$Res,
        $Val extends SetFilterLifeRequestBody>
    implements $SetFilterLifeRequestBodyCopyWith<$Res> {
  _$SetFilterLifeRequestBodyCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? cl = null,
    Object? deviceId = null,
    Object? installationDate = null,
    Object? lifeMonth = null,
    Object? name = null,
  }) {
    return _then(_value.copyWith(
      cl: null == cl
          ? _value.cl
          : cl // ignore: cast_nullable_to_non_nullable
              as String,
      deviceId: null == deviceId
          ? _value.deviceId
          : deviceId // ignore: cast_nullable_to_non_nullable
              as int,
      installationDate: null == installationDate
          ? _value.installationDate
          : installationDate // ignore: cast_nullable_to_non_nullable
              as String,
      lifeMonth: null == lifeMonth
          ? _value.lifeMonth
          : lifeMonth // ignore: cast_nullable_to_non_nullable
              as int,
      name: null == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$SetFilterLifeRequestBodyImplCopyWith<$Res>
    implements $SetFilterLifeRequestBodyCopyWith<$Res> {
  factory _$$SetFilterLifeRequestBodyImplCopyWith(
          _$SetFilterLifeRequestBodyImpl value,
          $Res Function(_$SetFilterLifeRequestBodyImpl) then) =
      __$$SetFilterLifeRequestBodyImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {@JsonKey(name: 'cl') String cl,
      @JsonKey(name: 'device_id') int deviceId,
      @JsonKey(name: 'installation_date') String installationDate,
      @JsonKey(name: 'life_month') int lifeMonth,
      @JsonKey(name: 'name') String name});
}

/// @nodoc
class __$$SetFilterLifeRequestBodyImplCopyWithImpl<$Res>
    extends _$SetFilterLifeRequestBodyCopyWithImpl<$Res,
        _$SetFilterLifeRequestBodyImpl>
    implements _$$SetFilterLifeRequestBodyImplCopyWith<$Res> {
  __$$SetFilterLifeRequestBodyImplCopyWithImpl(
      _$SetFilterLifeRequestBodyImpl _value,
      $Res Function(_$SetFilterLifeRequestBodyImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? cl = null,
    Object? deviceId = null,
    Object? installationDate = null,
    Object? lifeMonth = null,
    Object? name = null,
  }) {
    return _then(_$SetFilterLifeRequestBodyImpl(
      cl: null == cl
          ? _value.cl
          : cl // ignore: cast_nullable_to_non_nullable
              as String,
      deviceId: null == deviceId
          ? _value.deviceId
          : deviceId // ignore: cast_nullable_to_non_nullable
              as int,
      installationDate: null == installationDate
          ? _value.installationDate
          : installationDate // ignore: cast_nullable_to_non_nullable
              as String,
      lifeMonth: null == lifeMonth
          ? _value.lifeMonth
          : lifeMonth // ignore: cast_nullable_to_non_nullable
              as int,
      name: null == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$SetFilterLifeRequestBodyImpl implements _SetFilterLifeRequestBody {
  const _$SetFilterLifeRequestBodyImpl(
      {@JsonKey(name: 'cl') required this.cl,
      @JsonKey(name: 'device_id') required this.deviceId,
      @JsonKey(name: 'installation_date') required this.installationDate,
      @JsonKey(name: 'life_month') required this.lifeMonth,
      @JsonKey(name: 'name') required this.name});

  factory _$SetFilterLifeRequestBodyImpl.fromJson(Map<String, dynamic> json) =>
      _$$SetFilterLifeRequestBodyImplFromJson(json);

  @override
  @JsonKey(name: 'cl')
  final String cl;
  @override
  @JsonKey(name: 'device_id')
  final int deviceId;
  @override
  @JsonKey(name: 'installation_date')
  final String installationDate;
  @override
  @JsonKey(name: 'life_month')
  final int lifeMonth;
  @override
  @JsonKey(name: 'name')
  final String name;

  @override
  String toString() {
    return 'SetFilterLifeRequestBody(cl: $cl, deviceId: $deviceId, installationDate: $installationDate, lifeMonth: $lifeMonth, name: $name)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$SetFilterLifeRequestBodyImpl &&
            (identical(other.cl, cl) || other.cl == cl) &&
            (identical(other.deviceId, deviceId) ||
                other.deviceId == deviceId) &&
            (identical(other.installationDate, installationDate) ||
                other.installationDate == installationDate) &&
            (identical(other.lifeMonth, lifeMonth) ||
                other.lifeMonth == lifeMonth) &&
            (identical(other.name, name) || other.name == name));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode =>
      Object.hash(runtimeType, cl, deviceId, installationDate, lifeMonth, name);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$SetFilterLifeRequestBodyImplCopyWith<_$SetFilterLifeRequestBodyImpl>
      get copyWith => __$$SetFilterLifeRequestBodyImplCopyWithImpl<
          _$SetFilterLifeRequestBodyImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$SetFilterLifeRequestBodyImplToJson(
      this,
    );
  }
}

abstract class _SetFilterLifeRequestBody implements SetFilterLifeRequestBody {
  const factory _SetFilterLifeRequestBody(
          {@JsonKey(name: 'cl') required final String cl,
          @JsonKey(name: 'device_id') required final int deviceId,
          @JsonKey(name: 'installation_date')
          required final String installationDate,
          @JsonKey(name: 'life_month') required final int lifeMonth,
          @JsonKey(name: 'name') required final String name}) =
      _$SetFilterLifeRequestBodyImpl;

  factory _SetFilterLifeRequestBody.fromJson(Map<String, dynamic> json) =
      _$SetFilterLifeRequestBodyImpl.fromJson;

  @override
  @JsonKey(name: 'cl')
  String get cl;
  @override
  @JsonKey(name: 'device_id')
  int get deviceId;
  @override
  @JsonKey(name: 'installation_date')
  String get installationDate;
  @override
  @JsonKey(name: 'life_month')
  int get lifeMonth;
  @override
  @JsonKey(name: 'name')
  String get name;
  @override
  @JsonKey(ignore: true)
  _$$SetFilterLifeRequestBodyImplCopyWith<_$SetFilterLifeRequestBodyImpl>
      get copyWith => throw _privateConstructorUsedError;
}
