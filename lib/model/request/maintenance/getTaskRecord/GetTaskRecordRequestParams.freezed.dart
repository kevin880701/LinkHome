// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'GetTaskRecordRequestParams.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

GetTaskRecordRequestParams _$GetTaskRecordRequestParamsFromJson(
    Map<String, dynamic> json) {
  return _GetTaskRecordRequestParams.fromJson(json);
}

/// @nodoc
mixin _$GetTaskRecordRequestParams {
  @JsonKey(name: 'period')
  int get period => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $GetTaskRecordRequestParamsCopyWith<GetTaskRecordRequestParams>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $GetTaskRecordRequestParamsCopyWith<$Res> {
  factory $GetTaskRecordRequestParamsCopyWith(GetTaskRecordRequestParams value,
          $Res Function(GetTaskRecordRequestParams) then) =
      _$GetTaskRecordRequestParamsCopyWithImpl<$Res,
          GetTaskRecordRequestParams>;
  @useResult
  $Res call({@JsonKey(name: 'period') int period});
}

/// @nodoc
class _$GetTaskRecordRequestParamsCopyWithImpl<$Res,
        $Val extends GetTaskRecordRequestParams>
    implements $GetTaskRecordRequestParamsCopyWith<$Res> {
  _$GetTaskRecordRequestParamsCopyWithImpl(this._value, this._then);

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
abstract class _$$GetTaskRecordRequestParamsImplCopyWith<$Res>
    implements $GetTaskRecordRequestParamsCopyWith<$Res> {
  factory _$$GetTaskRecordRequestParamsImplCopyWith(
          _$GetTaskRecordRequestParamsImpl value,
          $Res Function(_$GetTaskRecordRequestParamsImpl) then) =
      __$$GetTaskRecordRequestParamsImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({@JsonKey(name: 'period') int period});
}

/// @nodoc
class __$$GetTaskRecordRequestParamsImplCopyWithImpl<$Res>
    extends _$GetTaskRecordRequestParamsCopyWithImpl<$Res,
        _$GetTaskRecordRequestParamsImpl>
    implements _$$GetTaskRecordRequestParamsImplCopyWith<$Res> {
  __$$GetTaskRecordRequestParamsImplCopyWithImpl(
      _$GetTaskRecordRequestParamsImpl _value,
      $Res Function(_$GetTaskRecordRequestParamsImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? period = null,
  }) {
    return _then(_$GetTaskRecordRequestParamsImpl(
      period: null == period
          ? _value.period
          : period // ignore: cast_nullable_to_non_nullable
              as int,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$GetTaskRecordRequestParamsImpl implements _GetTaskRecordRequestParams {
  const _$GetTaskRecordRequestParamsImpl(
      {@JsonKey(name: 'period') required this.period});

  factory _$GetTaskRecordRequestParamsImpl.fromJson(
          Map<String, dynamic> json) =>
      _$$GetTaskRecordRequestParamsImplFromJson(json);

  @override
  @JsonKey(name: 'period')
  final int period;

  @override
  String toString() {
    return 'GetTaskRecordRequestParams(period: $period)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$GetTaskRecordRequestParamsImpl &&
            (identical(other.period, period) || other.period == period));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, period);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$GetTaskRecordRequestParamsImplCopyWith<_$GetTaskRecordRequestParamsImpl>
      get copyWith => __$$GetTaskRecordRequestParamsImplCopyWithImpl<
          _$GetTaskRecordRequestParamsImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$GetTaskRecordRequestParamsImplToJson(
      this,
    );
  }
}

abstract class _GetTaskRecordRequestParams
    implements GetTaskRecordRequestParams {
  const factory _GetTaskRecordRequestParams(
          {@JsonKey(name: 'period') required final int period}) =
      _$GetTaskRecordRequestParamsImpl;

  factory _GetTaskRecordRequestParams.fromJson(Map<String, dynamic> json) =
      _$GetTaskRecordRequestParamsImpl.fromJson;

  @override
  @JsonKey(name: 'period')
  int get period;
  @override
  @JsonKey(ignore: true)
  _$$GetTaskRecordRequestParamsImplCopyWith<_$GetTaskRecordRequestParamsImpl>
      get copyWith => throw _privateConstructorUsedError;
}
