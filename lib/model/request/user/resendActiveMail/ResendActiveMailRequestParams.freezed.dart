// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'ResendActiveMailRequestParams.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

ResendActiveMailRequestParams _$ResendActiveMailRequestParamsFromJson(
    Map<String, dynamic> json) {
  return _ResendActiveMailRequestParams.fromJson(json);
}

/// @nodoc
mixin _$ResendActiveMailRequestParams {
  @JsonKey(name: 'account')
  String get account => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $ResendActiveMailRequestParamsCopyWith<ResendActiveMailRequestParams>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ResendActiveMailRequestParamsCopyWith<$Res> {
  factory $ResendActiveMailRequestParamsCopyWith(
          ResendActiveMailRequestParams value,
          $Res Function(ResendActiveMailRequestParams) then) =
      _$ResendActiveMailRequestParamsCopyWithImpl<$Res,
          ResendActiveMailRequestParams>;
  @useResult
  $Res call({@JsonKey(name: 'account') String account});
}

/// @nodoc
class _$ResendActiveMailRequestParamsCopyWithImpl<$Res,
        $Val extends ResendActiveMailRequestParams>
    implements $ResendActiveMailRequestParamsCopyWith<$Res> {
  _$ResendActiveMailRequestParamsCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? account = null,
  }) {
    return _then(_value.copyWith(
      account: null == account
          ? _value.account
          : account // ignore: cast_nullable_to_non_nullable
              as String,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$ResendActiveMailRequestParamsImplCopyWith<$Res>
    implements $ResendActiveMailRequestParamsCopyWith<$Res> {
  factory _$$ResendActiveMailRequestParamsImplCopyWith(
          _$ResendActiveMailRequestParamsImpl value,
          $Res Function(_$ResendActiveMailRequestParamsImpl) then) =
      __$$ResendActiveMailRequestParamsImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({@JsonKey(name: 'account') String account});
}

/// @nodoc
class __$$ResendActiveMailRequestParamsImplCopyWithImpl<$Res>
    extends _$ResendActiveMailRequestParamsCopyWithImpl<$Res,
        _$ResendActiveMailRequestParamsImpl>
    implements _$$ResendActiveMailRequestParamsImplCopyWith<$Res> {
  __$$ResendActiveMailRequestParamsImplCopyWithImpl(
      _$ResendActiveMailRequestParamsImpl _value,
      $Res Function(_$ResendActiveMailRequestParamsImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? account = null,
  }) {
    return _then(_$ResendActiveMailRequestParamsImpl(
      account: null == account
          ? _value.account
          : account // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$ResendActiveMailRequestParamsImpl
    implements _ResendActiveMailRequestParams {
  const _$ResendActiveMailRequestParamsImpl(
      {@JsonKey(name: 'account') required this.account});

  factory _$ResendActiveMailRequestParamsImpl.fromJson(
          Map<String, dynamic> json) =>
      _$$ResendActiveMailRequestParamsImplFromJson(json);

  @override
  @JsonKey(name: 'account')
  final String account;

  @override
  String toString() {
    return 'ResendActiveMailRequestParams(account: $account)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ResendActiveMailRequestParamsImpl &&
            (identical(other.account, account) || other.account == account));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, account);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$ResendActiveMailRequestParamsImplCopyWith<
          _$ResendActiveMailRequestParamsImpl>
      get copyWith => __$$ResendActiveMailRequestParamsImplCopyWithImpl<
          _$ResendActiveMailRequestParamsImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$ResendActiveMailRequestParamsImplToJson(
      this,
    );
  }
}

abstract class _ResendActiveMailRequestParams
    implements ResendActiveMailRequestParams {
  const factory _ResendActiveMailRequestParams(
          {@JsonKey(name: 'account') required final String account}) =
      _$ResendActiveMailRequestParamsImpl;

  factory _ResendActiveMailRequestParams.fromJson(Map<String, dynamic> json) =
      _$ResendActiveMailRequestParamsImpl.fromJson;

  @override
  @JsonKey(name: 'account')
  String get account;
  @override
  @JsonKey(ignore: true)
  _$$ResendActiveMailRequestParamsImplCopyWith<
          _$ResendActiveMailRequestParamsImpl>
      get copyWith => throw _privateConstructorUsedError;
}
