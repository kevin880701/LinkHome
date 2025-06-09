// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'UserExistRequestParams.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

UserExistRequestParams _$UserExistRequestParamsFromJson(
    Map<String, dynamic> json) {
  return _UserExistRequestParams.fromJson(json);
}

/// @nodoc
mixin _$UserExistRequestParams {
  String get account => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $UserExistRequestParamsCopyWith<UserExistRequestParams> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $UserExistRequestParamsCopyWith<$Res> {
  factory $UserExistRequestParamsCopyWith(UserExistRequestParams value,
          $Res Function(UserExistRequestParams) then) =
      _$UserExistRequestParamsCopyWithImpl<$Res, UserExistRequestParams>;
  @useResult
  $Res call({String account});
}

/// @nodoc
class _$UserExistRequestParamsCopyWithImpl<$Res,
        $Val extends UserExistRequestParams>
    implements $UserExistRequestParamsCopyWith<$Res> {
  _$UserExistRequestParamsCopyWithImpl(this._value, this._then);

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
abstract class _$$UserExistRequestParamsImplCopyWith<$Res>
    implements $UserExistRequestParamsCopyWith<$Res> {
  factory _$$UserExistRequestParamsImplCopyWith(
          _$UserExistRequestParamsImpl value,
          $Res Function(_$UserExistRequestParamsImpl) then) =
      __$$UserExistRequestParamsImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String account});
}

/// @nodoc
class __$$UserExistRequestParamsImplCopyWithImpl<$Res>
    extends _$UserExistRequestParamsCopyWithImpl<$Res,
        _$UserExistRequestParamsImpl>
    implements _$$UserExistRequestParamsImplCopyWith<$Res> {
  __$$UserExistRequestParamsImplCopyWithImpl(
      _$UserExistRequestParamsImpl _value,
      $Res Function(_$UserExistRequestParamsImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? account = null,
  }) {
    return _then(_$UserExistRequestParamsImpl(
      account: null == account
          ? _value.account
          : account // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$UserExistRequestParamsImpl implements _UserExistRequestParams {
  const _$UserExistRequestParamsImpl({required this.account});

  factory _$UserExistRequestParamsImpl.fromJson(Map<String, dynamic> json) =>
      _$$UserExistRequestParamsImplFromJson(json);

  @override
  final String account;

  @override
  String toString() {
    return 'UserExistRequestParams(account: $account)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$UserExistRequestParamsImpl &&
            (identical(other.account, account) || other.account == account));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, account);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$UserExistRequestParamsImplCopyWith<_$UserExistRequestParamsImpl>
      get copyWith => __$$UserExistRequestParamsImplCopyWithImpl<
          _$UserExistRequestParamsImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$UserExistRequestParamsImplToJson(
      this,
    );
  }
}

abstract class _UserExistRequestParams implements UserExistRequestParams {
  const factory _UserExistRequestParams({required final String account}) =
      _$UserExistRequestParamsImpl;

  factory _UserExistRequestParams.fromJson(Map<String, dynamic> json) =
      _$UserExistRequestParamsImpl.fromJson;

  @override
  String get account;
  @override
  @JsonKey(ignore: true)
  _$$UserExistRequestParamsImplCopyWith<_$UserExistRequestParamsImpl>
      get copyWith => throw _privateConstructorUsedError;
}
