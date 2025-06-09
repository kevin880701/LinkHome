// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'GetInstallationRecordRequestParams.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

GetInstallationRecordRequestParams _$GetInstallationRecordRequestParamsFromJson(
    Map<String, dynamic> json) {
  return _GetInstallationRecordRequestParams.fromJson(json);
}

/// @nodoc
mixin _$GetInstallationRecordRequestParams {
  @JsonKey(name: 'period')
  int get period => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $GetInstallationRecordRequestParamsCopyWith<
          GetInstallationRecordRequestParams>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $GetInstallationRecordRequestParamsCopyWith<$Res> {
  factory $GetInstallationRecordRequestParamsCopyWith(
          GetInstallationRecordRequestParams value,
          $Res Function(GetInstallationRecordRequestParams) then) =
      _$GetInstallationRecordRequestParamsCopyWithImpl<$Res,
          GetInstallationRecordRequestParams>;
  @useResult
  $Res call({@JsonKey(name: 'period') int period});
}

/// @nodoc
class _$GetInstallationRecordRequestParamsCopyWithImpl<$Res,
        $Val extends GetInstallationRecordRequestParams>
    implements $GetInstallationRecordRequestParamsCopyWith<$Res> {
  _$GetInstallationRecordRequestParamsCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? period = null,
  }) {
    return _then(_value.copyWith(
      period: null == period
          ? _value.period
          : period // ignore: cast_nullable_to_non_nullable
              as int,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$GetInstallationRecordRequestParamsImplCopyWith<$Res>
    implements $GetInstallationRecordRequestParamsCopyWith<$Res> {
  factory _$$GetInstallationRecordRequestParamsImplCopyWith(
          _$GetInstallationRecordRequestParamsImpl value,
          $Res Function(_$GetInstallationRecordRequestParamsImpl) then) =
      __$$GetInstallationRecordRequestParamsImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({@JsonKey(name: 'period') int period});
}

/// @nodoc
class __$$GetInstallationRecordRequestParamsImplCopyWithImpl<$Res>
    extends _$GetInstallationRecordRequestParamsCopyWithImpl<$Res,
        _$GetInstallationRecordRequestParamsImpl>
    implements _$$GetInstallationRecordRequestParamsImplCopyWith<$Res> {
  __$$GetInstallationRecordRequestParamsImplCopyWithImpl(
      _$GetInstallationRecordRequestParamsImpl _value,
      $Res Function(_$GetInstallationRecordRequestParamsImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? period = null,
  }) {
    return _then(_$GetInstallationRecordRequestParamsImpl(
      period: null == period
          ? _value.period
          : period // ignore: cast_nullable_to_non_nullable
              as int,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$GetInstallationRecordRequestParamsImpl
    implements _GetInstallationRecordRequestParams {
  const _$GetInstallationRecordRequestParamsImpl(
      {@JsonKey(name: 'period') required this.period});

  factory _$GetInstallationRecordRequestParamsImpl.fromJson(
          Map<String, dynamic> json) =>
      _$$GetInstallationRecordRequestParamsImplFromJson(json);

  @override
  @JsonKey(name: 'period')
  final int period;

  @override
  String toString() {
    return 'GetInstallationRecordRequestParams(period: $period)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$GetInstallationRecordRequestParamsImpl &&
            (identical(other.period, period) || other.period == period));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, period);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$GetInstallationRecordRequestParamsImplCopyWith<
          _$GetInstallationRecordRequestParamsImpl>
      get copyWith => __$$GetInstallationRecordRequestParamsImplCopyWithImpl<
          _$GetInstallationRecordRequestParamsImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$GetInstallationRecordRequestParamsImplToJson(
      this,
    );
  }
}

abstract class _GetInstallationRecordRequestParams
    implements GetInstallationRecordRequestParams {
  const factory _GetInstallationRecordRequestParams(
          {@JsonKey(name: 'period') required final int period}) =
      _$GetInstallationRecordRequestParamsImpl;

  factory _GetInstallationRecordRequestParams.fromJson(
          Map<String, dynamic> json) =
      _$GetInstallationRecordRequestParamsImpl.fromJson;

  @override
  @JsonKey(name: 'period')
  int get period;
  @override
  @JsonKey(ignore: true)
  _$$GetInstallationRecordRequestParamsImplCopyWith<
          _$GetInstallationRecordRequestParamsImpl>
      get copyWith => throw _privateConstructorUsedError;
}
