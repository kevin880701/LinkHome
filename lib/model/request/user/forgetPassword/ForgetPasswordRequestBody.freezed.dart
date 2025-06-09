// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'ForgetPasswordRequestBody.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

ForgetPasswordRequestBody _$ForgetPasswordRequestBodyFromJson(
    Map<String, dynamic> json) {
  return _ForgetPasswordRequestBody.fromJson(json);
}

/// @nodoc
mixin _$ForgetPasswordRequestBody {
  @JsonKey(name: 'account')
  String get account => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $ForgetPasswordRequestBodyCopyWith<ForgetPasswordRequestBody> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ForgetPasswordRequestBodyCopyWith<$Res> {
  factory $ForgetPasswordRequestBodyCopyWith(ForgetPasswordRequestBody value,
          $Res Function(ForgetPasswordRequestBody) then) =
      _$ForgetPasswordRequestBodyCopyWithImpl<$Res, ForgetPasswordRequestBody>;
  @useResult
  $Res call({@JsonKey(name: 'account') String account});
}

/// @nodoc
class _$ForgetPasswordRequestBodyCopyWithImpl<$Res,
        $Val extends ForgetPasswordRequestBody>
    implements $ForgetPasswordRequestBodyCopyWith<$Res> {
  _$ForgetPasswordRequestBodyCopyWithImpl(this._value, this._then);

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
abstract class _$$ForgetPasswordRequestBodyImplCopyWith<$Res>
    implements $ForgetPasswordRequestBodyCopyWith<$Res> {
  factory _$$ForgetPasswordRequestBodyImplCopyWith(
          _$ForgetPasswordRequestBodyImpl value,
          $Res Function(_$ForgetPasswordRequestBodyImpl) then) =
      __$$ForgetPasswordRequestBodyImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({@JsonKey(name: 'account') String account});
}

/// @nodoc
class __$$ForgetPasswordRequestBodyImplCopyWithImpl<$Res>
    extends _$ForgetPasswordRequestBodyCopyWithImpl<$Res,
        _$ForgetPasswordRequestBodyImpl>
    implements _$$ForgetPasswordRequestBodyImplCopyWith<$Res> {
  __$$ForgetPasswordRequestBodyImplCopyWithImpl(
      _$ForgetPasswordRequestBodyImpl _value,
      $Res Function(_$ForgetPasswordRequestBodyImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? account = null,
  }) {
    return _then(_$ForgetPasswordRequestBodyImpl(
      account: null == account
          ? _value.account
          : account // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$ForgetPasswordRequestBodyImpl implements _ForgetPasswordRequestBody {
  const _$ForgetPasswordRequestBodyImpl(
      {@JsonKey(name: 'account') required this.account});

  factory _$ForgetPasswordRequestBodyImpl.fromJson(Map<String, dynamic> json) =>
      _$$ForgetPasswordRequestBodyImplFromJson(json);

  @override
  @JsonKey(name: 'account')
  final String account;

  @override
  String toString() {
    return 'ForgetPasswordRequestBody(account: $account)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ForgetPasswordRequestBodyImpl &&
            (identical(other.account, account) || other.account == account));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, account);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$ForgetPasswordRequestBodyImplCopyWith<_$ForgetPasswordRequestBodyImpl>
      get copyWith => __$$ForgetPasswordRequestBodyImplCopyWithImpl<
          _$ForgetPasswordRequestBodyImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$ForgetPasswordRequestBodyImplToJson(
      this,
    );
  }
}

abstract class _ForgetPasswordRequestBody implements ForgetPasswordRequestBody {
  const factory _ForgetPasswordRequestBody(
          {@JsonKey(name: 'account') required final String account}) =
      _$ForgetPasswordRequestBodyImpl;

  factory _ForgetPasswordRequestBody.fromJson(Map<String, dynamic> json) =
      _$ForgetPasswordRequestBodyImpl.fromJson;

  @override
  @JsonKey(name: 'account')
  String get account;
  @override
  @JsonKey(ignore: true)
  _$$ForgetPasswordRequestBodyImplCopyWith<_$ForgetPasswordRequestBodyImpl>
      get copyWith => throw _privateConstructorUsedError;
}
