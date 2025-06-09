// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'EngineerWorkOrderRequestParams.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

EngineerWorkOrderRequestParams _$EngineerWorkOrderRequestParamsFromJson(
    Map<String, dynamic> json) {
  return _EngineerWorkOrderRequestParams.fromJson(json);
}

/// @nodoc
mixin _$EngineerWorkOrderRequestParams {
  @JsonKey(name: 'year')
  int get year => throw _privateConstructorUsedError;
  @JsonKey(name: 'month')
  int get month => throw _privateConstructorUsedError;
  @JsonKey(name: 'day')
  int? get day => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $EngineerWorkOrderRequestParamsCopyWith<EngineerWorkOrderRequestParams>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $EngineerWorkOrderRequestParamsCopyWith<$Res> {
  factory $EngineerWorkOrderRequestParamsCopyWith(
          EngineerWorkOrderRequestParams value,
          $Res Function(EngineerWorkOrderRequestParams) then) =
      _$EngineerWorkOrderRequestParamsCopyWithImpl<$Res,
          EngineerWorkOrderRequestParams>;
  @useResult
  $Res call(
      {@JsonKey(name: 'year') int year,
      @JsonKey(name: 'month') int month,
      @JsonKey(name: 'day') int? day});
}

/// @nodoc
class _$EngineerWorkOrderRequestParamsCopyWithImpl<$Res,
        $Val extends EngineerWorkOrderRequestParams>
    implements $EngineerWorkOrderRequestParamsCopyWith<$Res> {
  _$EngineerWorkOrderRequestParamsCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? year = null,
    Object? month = null,
    Object? day = freezed,
  }) {
    return _then(_value.copyWith(
      year: null == year
          ? _value.year
          : year // ignore: cast_nullable_to_non_nullable
              as int,
      month: null == month
          ? _value.month
          : month // ignore: cast_nullable_to_non_nullable
              as int,
      day: freezed == day
          ? _value.day
          : day // ignore: cast_nullable_to_non_nullable
              as int?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$EngineerWorkOrderRequestParamsImplCopyWith<$Res>
    implements $EngineerWorkOrderRequestParamsCopyWith<$Res> {
  factory _$$EngineerWorkOrderRequestParamsImplCopyWith(
          _$EngineerWorkOrderRequestParamsImpl value,
          $Res Function(_$EngineerWorkOrderRequestParamsImpl) then) =
      __$$EngineerWorkOrderRequestParamsImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {@JsonKey(name: 'year') int year,
      @JsonKey(name: 'month') int month,
      @JsonKey(name: 'day') int? day});
}

/// @nodoc
class __$$EngineerWorkOrderRequestParamsImplCopyWithImpl<$Res>
    extends _$EngineerWorkOrderRequestParamsCopyWithImpl<$Res,
        _$EngineerWorkOrderRequestParamsImpl>
    implements _$$EngineerWorkOrderRequestParamsImplCopyWith<$Res> {
  __$$EngineerWorkOrderRequestParamsImplCopyWithImpl(
      _$EngineerWorkOrderRequestParamsImpl _value,
      $Res Function(_$EngineerWorkOrderRequestParamsImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? year = null,
    Object? month = null,
    Object? day = freezed,
  }) {
    return _then(_$EngineerWorkOrderRequestParamsImpl(
      year: null == year
          ? _value.year
          : year // ignore: cast_nullable_to_non_nullable
              as int,
      month: null == month
          ? _value.month
          : month // ignore: cast_nullable_to_non_nullable
              as int,
      day: freezed == day
          ? _value.day
          : day // ignore: cast_nullable_to_non_nullable
              as int?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$EngineerWorkOrderRequestParamsImpl
    implements _EngineerWorkOrderRequestParams {
  const _$EngineerWorkOrderRequestParamsImpl(
      {@JsonKey(name: 'year') required this.year,
      @JsonKey(name: 'month') required this.month,
      @JsonKey(name: 'day') this.day});

  factory _$EngineerWorkOrderRequestParamsImpl.fromJson(
          Map<String, dynamic> json) =>
      _$$EngineerWorkOrderRequestParamsImplFromJson(json);

  @override
  @JsonKey(name: 'year')
  final int year;
  @override
  @JsonKey(name: 'month')
  final int month;
  @override
  @JsonKey(name: 'day')
  final int? day;

  @override
  String toString() {
    return 'EngineerWorkOrderRequestParams(year: $year, month: $month, day: $day)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$EngineerWorkOrderRequestParamsImpl &&
            (identical(other.year, year) || other.year == year) &&
            (identical(other.month, month) || other.month == month) &&
            (identical(other.day, day) || other.day == day));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, year, month, day);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$EngineerWorkOrderRequestParamsImplCopyWith<
          _$EngineerWorkOrderRequestParamsImpl>
      get copyWith => __$$EngineerWorkOrderRequestParamsImplCopyWithImpl<
          _$EngineerWorkOrderRequestParamsImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$EngineerWorkOrderRequestParamsImplToJson(
      this,
    );
  }
}

abstract class _EngineerWorkOrderRequestParams
    implements EngineerWorkOrderRequestParams {
  const factory _EngineerWorkOrderRequestParams(
          {@JsonKey(name: 'year') required final int year,
          @JsonKey(name: 'month') required final int month,
          @JsonKey(name: 'day') final int? day}) =
      _$EngineerWorkOrderRequestParamsImpl;

  factory _EngineerWorkOrderRequestParams.fromJson(Map<String, dynamic> json) =
      _$EngineerWorkOrderRequestParamsImpl.fromJson;

  @override
  @JsonKey(name: 'year')
  int get year;
  @override
  @JsonKey(name: 'month')
  int get month;
  @override
  @JsonKey(name: 'day')
  int? get day;
  @override
  @JsonKey(ignore: true)
  _$$EngineerWorkOrderRequestParamsImplCopyWith<
          _$EngineerWorkOrderRequestParamsImpl>
      get copyWith => throw _privateConstructorUsedError;
}
