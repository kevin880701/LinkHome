// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'AppleLoginRequestParams.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

AppleLoginRequestParams _$AppleLoginRequestParamsFromJson(
    Map<String, dynamic> json) {
  return _AppleLoginRequestParams.fromJson(json);
}

/// @nodoc
mixin _$AppleLoginRequestParams {
  @JsonKey(name: 'code')
  String get code => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $AppleLoginRequestParamsCopyWith<AppleLoginRequestParams> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $AppleLoginRequestParamsCopyWith<$Res> {
  factory $AppleLoginRequestParamsCopyWith(AppleLoginRequestParams value,
          $Res Function(AppleLoginRequestParams) then) =
      _$AppleLoginRequestParamsCopyWithImpl<$Res, AppleLoginRequestParams>;
  @useResult
  $Res call({@JsonKey(name: 'code') String code});
}

/// @nodoc
class _$AppleLoginRequestParamsCopyWithImpl<$Res,
        $Val extends AppleLoginRequestParams>
    implements $AppleLoginRequestParamsCopyWith<$Res> {
  _$AppleLoginRequestParamsCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? code = null,
  }) {
    return _then(_value.copyWith(
      code: null == code
          ? _value.code
          : code // ignore: cast_nullable_to_non_nullable
              as String,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$AppleLoginRequestParamsImplCopyWith<$Res>
    implements $AppleLoginRequestParamsCopyWith<$Res> {
  factory _$$AppleLoginRequestParamsImplCopyWith(
          _$AppleLoginRequestParamsImpl value,
          $Res Function(_$AppleLoginRequestParamsImpl) then) =
      __$$AppleLoginRequestParamsImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({@JsonKey(name: 'code') String code});
}

/// @nodoc
class __$$AppleLoginRequestParamsImplCopyWithImpl<$Res>
    extends _$AppleLoginRequestParamsCopyWithImpl<$Res,
        _$AppleLoginRequestParamsImpl>
    implements _$$AppleLoginRequestParamsImplCopyWith<$Res> {
  __$$AppleLoginRequestParamsImplCopyWithImpl(
      _$AppleLoginRequestParamsImpl _value,
      $Res Function(_$AppleLoginRequestParamsImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? code = null,
  }) {
    return _then(_$AppleLoginRequestParamsImpl(
      code: null == code
          ? _value.code
          : code // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$AppleLoginRequestParamsImpl implements _AppleLoginRequestParams {
  const _$AppleLoginRequestParamsImpl(
      {@JsonKey(name: 'code') required this.code});

  factory _$AppleLoginRequestParamsImpl.fromJson(Map<String, dynamic> json) =>
      _$$AppleLoginRequestParamsImplFromJson(json);

  @override
  @JsonKey(name: 'code')
  final String code;

  @override
  String toString() {
    return 'AppleLoginRequestParams(code: $code)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$AppleLoginRequestParamsImpl &&
            (identical(other.code, code) || other.code == code));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, code);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$AppleLoginRequestParamsImplCopyWith<_$AppleLoginRequestParamsImpl>
      get copyWith => __$$AppleLoginRequestParamsImplCopyWithImpl<
          _$AppleLoginRequestParamsImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$AppleLoginRequestParamsImplToJson(
      this,
    );
  }
}

abstract class _AppleLoginRequestParams implements AppleLoginRequestParams {
  const factory _AppleLoginRequestParams(
          {@JsonKey(name: 'code') required final String code}) =
      _$AppleLoginRequestParamsImpl;

  factory _AppleLoginRequestParams.fromJson(Map<String, dynamic> json) =
      _$AppleLoginRequestParamsImpl.fromJson;

  @override
  @JsonKey(name: 'code')
  String get code;
  @override
  @JsonKey(ignore: true)
  _$$AppleLoginRequestParamsImplCopyWith<_$AppleLoginRequestParamsImpl>
      get copyWith => throw _privateConstructorUsedError;
}
