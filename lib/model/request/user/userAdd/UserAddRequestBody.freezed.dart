// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'UserAddRequestBody.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

UserAddRequestBody _$UserAddRequestBodyFromJson(Map<String, dynamic> json) {
  return _UserAddRequestBody.fromJson(json);
}

/// @nodoc
mixin _$UserAddRequestBody {
  @JsonKey(name: 'account')
  String get account => throw _privateConstructorUsedError;
  @JsonKey(name: 'secret')
  String get secret => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $UserAddRequestBodyCopyWith<UserAddRequestBody> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $UserAddRequestBodyCopyWith<$Res> {
  factory $UserAddRequestBodyCopyWith(
          UserAddRequestBody value, $Res Function(UserAddRequestBody) then) =
      _$UserAddRequestBodyCopyWithImpl<$Res, UserAddRequestBody>;
  @useResult
  $Res call(
      {@JsonKey(name: 'account') String account,
      @JsonKey(name: 'secret') String secret});
}

/// @nodoc
class _$UserAddRequestBodyCopyWithImpl<$Res, $Val extends UserAddRequestBody>
    implements $UserAddRequestBodyCopyWith<$Res> {
  _$UserAddRequestBodyCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? account = null,
    Object? secret = null,
  }) {
    return _then(_value.copyWith(
      account: null == account
          ? _value.account
          : account // ignore: cast_nullable_to_non_nullable
              as String,
      secret: null == secret
          ? _value.secret
          : secret // ignore: cast_nullable_to_non_nullable
              as String,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$UserAddRequestBodyImplCopyWith<$Res>
    implements $UserAddRequestBodyCopyWith<$Res> {
  factory _$$UserAddRequestBodyImplCopyWith(_$UserAddRequestBodyImpl value,
          $Res Function(_$UserAddRequestBodyImpl) then) =
      __$$UserAddRequestBodyImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {@JsonKey(name: 'account') String account,
      @JsonKey(name: 'secret') String secret});
}

/// @nodoc
class __$$UserAddRequestBodyImplCopyWithImpl<$Res>
    extends _$UserAddRequestBodyCopyWithImpl<$Res, _$UserAddRequestBodyImpl>
    implements _$$UserAddRequestBodyImplCopyWith<$Res> {
  __$$UserAddRequestBodyImplCopyWithImpl(_$UserAddRequestBodyImpl _value,
      $Res Function(_$UserAddRequestBodyImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? account = null,
    Object? secret = null,
  }) {
    return _then(_$UserAddRequestBodyImpl(
      account: null == account
          ? _value.account
          : account // ignore: cast_nullable_to_non_nullable
              as String,
      secret: null == secret
          ? _value.secret
          : secret // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$UserAddRequestBodyImpl implements _UserAddRequestBody {
  const _$UserAddRequestBodyImpl(
      {@JsonKey(name: 'account') required this.account,
      @JsonKey(name: 'secret') required this.secret});

  factory _$UserAddRequestBodyImpl.fromJson(Map<String, dynamic> json) =>
      _$$UserAddRequestBodyImplFromJson(json);

  @override
  @JsonKey(name: 'account')
  final String account;
  @override
  @JsonKey(name: 'secret')
  final String secret;

  @override
  String toString() {
    return 'UserAddRequestBody(account: $account, secret: $secret)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$UserAddRequestBodyImpl &&
            (identical(other.account, account) || other.account == account) &&
            (identical(other.secret, secret) || other.secret == secret));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, account, secret);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$UserAddRequestBodyImplCopyWith<_$UserAddRequestBodyImpl> get copyWith =>
      __$$UserAddRequestBodyImplCopyWithImpl<_$UserAddRequestBodyImpl>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$UserAddRequestBodyImplToJson(
      this,
    );
  }
}

abstract class _UserAddRequestBody implements UserAddRequestBody {
  const factory _UserAddRequestBody(
          {@JsonKey(name: 'account') required final String account,
          @JsonKey(name: 'secret') required final String secret}) =
      _$UserAddRequestBodyImpl;

  factory _UserAddRequestBody.fromJson(Map<String, dynamic> json) =
      _$UserAddRequestBodyImpl.fromJson;

  @override
  @JsonKey(name: 'account')
  String get account;
  @override
  @JsonKey(name: 'secret')
  String get secret;
  @override
  @JsonKey(ignore: true)
  _$$UserAddRequestBodyImplCopyWith<_$UserAddRequestBodyImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
