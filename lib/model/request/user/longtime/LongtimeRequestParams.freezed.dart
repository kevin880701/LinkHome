// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'LongtimeRequestParams.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

LongtimeRequestParams _$LongtimeRequestParamsFromJson(
    Map<String, dynamic> json) {
  return _LongtimeRequestParams.fromJson(json);
}

/// @nodoc
mixin _$LongtimeRequestParams {
  @JsonKey(name: 'loginType')
  String get loginType => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $LongtimeRequestParamsCopyWith<LongtimeRequestParams> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $LongtimeRequestParamsCopyWith<$Res> {
  factory $LongtimeRequestParamsCopyWith(LongtimeRequestParams value,
          $Res Function(LongtimeRequestParams) then) =
      _$LongtimeRequestParamsCopyWithImpl<$Res, LongtimeRequestParams>;
  @useResult
  $Res call({@JsonKey(name: 'loginType') String loginType});
}

/// @nodoc
class _$LongtimeRequestParamsCopyWithImpl<$Res,
        $Val extends LongtimeRequestParams>
    implements $LongtimeRequestParamsCopyWith<$Res> {
  _$LongtimeRequestParamsCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? loginType = null,
  }) {
    return _then(_value.copyWith(
      loginType: null == loginType
          ? _value.loginType
          : loginType // ignore: cast_nullable_to_non_nullable
              as String,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$LongtimeRequestParamsImplCopyWith<$Res>
    implements $LongtimeRequestParamsCopyWith<$Res> {
  factory _$$LongtimeRequestParamsImplCopyWith(
          _$LongtimeRequestParamsImpl value,
          $Res Function(_$LongtimeRequestParamsImpl) then) =
      __$$LongtimeRequestParamsImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({@JsonKey(name: 'loginType') String loginType});
}

/// @nodoc
class __$$LongtimeRequestParamsImplCopyWithImpl<$Res>
    extends _$LongtimeRequestParamsCopyWithImpl<$Res,
        _$LongtimeRequestParamsImpl>
    implements _$$LongtimeRequestParamsImplCopyWith<$Res> {
  __$$LongtimeRequestParamsImplCopyWithImpl(_$LongtimeRequestParamsImpl _value,
      $Res Function(_$LongtimeRequestParamsImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? loginType = null,
  }) {
    return _then(_$LongtimeRequestParamsImpl(
      loginType: null == loginType
          ? _value.loginType
          : loginType // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$LongtimeRequestParamsImpl implements _LongtimeRequestParams {
  const _$LongtimeRequestParamsImpl(
      {@JsonKey(name: 'loginType') required this.loginType});

  factory _$LongtimeRequestParamsImpl.fromJson(Map<String, dynamic> json) =>
      _$$LongtimeRequestParamsImplFromJson(json);

  @override
  @JsonKey(name: 'loginType')
  final String loginType;

  @override
  String toString() {
    return 'LongtimeRequestParams(loginType: $loginType)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$LongtimeRequestParamsImpl &&
            (identical(other.loginType, loginType) ||
                other.loginType == loginType));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, loginType);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$LongtimeRequestParamsImplCopyWith<_$LongtimeRequestParamsImpl>
      get copyWith => __$$LongtimeRequestParamsImplCopyWithImpl<
          _$LongtimeRequestParamsImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$LongtimeRequestParamsImplToJson(
      this,
    );
  }
}

abstract class _LongtimeRequestParams implements LongtimeRequestParams {
  const factory _LongtimeRequestParams(
          {@JsonKey(name: 'loginType') required final String loginType}) =
      _$LongtimeRequestParamsImpl;

  factory _LongtimeRequestParams.fromJson(Map<String, dynamic> json) =
      _$LongtimeRequestParamsImpl.fromJson;

  @override
  @JsonKey(name: 'loginType')
  String get loginType;
  @override
  @JsonKey(ignore: true)
  _$$LongtimeRequestParamsImplCopyWith<_$LongtimeRequestParamsImpl>
      get copyWith => throw _privateConstructorUsedError;
}
