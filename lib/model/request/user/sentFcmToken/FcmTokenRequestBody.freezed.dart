// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'FcmTokenRequestBody.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

FcmTokenRequestBody _$FcmTokenRequestBodyFromJson(Map<String, dynamic> json) {
  return _FcmTokenRequestBody.fromJson(json);
}

/// @nodoc
mixin _$FcmTokenRequestBody {
  @JsonKey(name: 'token')
  String get token => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $FcmTokenRequestBodyCopyWith<FcmTokenRequestBody> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $FcmTokenRequestBodyCopyWith<$Res> {
  factory $FcmTokenRequestBodyCopyWith(
          FcmTokenRequestBody value, $Res Function(FcmTokenRequestBody) then) =
      _$FcmTokenRequestBodyCopyWithImpl<$Res, FcmTokenRequestBody>;
  @useResult
  $Res call({@JsonKey(name: 'token') String token});
}

/// @nodoc
class _$FcmTokenRequestBodyCopyWithImpl<$Res, $Val extends FcmTokenRequestBody>
    implements $FcmTokenRequestBodyCopyWith<$Res> {
  _$FcmTokenRequestBodyCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? token = null,
  }) {
    return _then(_value.copyWith(
      token: null == token
          ? _value.token
          : token // ignore: cast_nullable_to_non_nullable
              as String,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$FcmTokenRequestBodyImplCopyWith<$Res>
    implements $FcmTokenRequestBodyCopyWith<$Res> {
  factory _$$FcmTokenRequestBodyImplCopyWith(_$FcmTokenRequestBodyImpl value,
          $Res Function(_$FcmTokenRequestBodyImpl) then) =
      __$$FcmTokenRequestBodyImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({@JsonKey(name: 'token') String token});
}

/// @nodoc
class __$$FcmTokenRequestBodyImplCopyWithImpl<$Res>
    extends _$FcmTokenRequestBodyCopyWithImpl<$Res, _$FcmTokenRequestBodyImpl>
    implements _$$FcmTokenRequestBodyImplCopyWith<$Res> {
  __$$FcmTokenRequestBodyImplCopyWithImpl(_$FcmTokenRequestBodyImpl _value,
      $Res Function(_$FcmTokenRequestBodyImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? token = null,
  }) {
    return _then(_$FcmTokenRequestBodyImpl(
      token: null == token
          ? _value.token
          : token // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$FcmTokenRequestBodyImpl implements _FcmTokenRequestBody {
  const _$FcmTokenRequestBodyImpl(
      {@JsonKey(name: 'token') required this.token});

  factory _$FcmTokenRequestBodyImpl.fromJson(Map<String, dynamic> json) =>
      _$$FcmTokenRequestBodyImplFromJson(json);

  @override
  @JsonKey(name: 'token')
  final String token;

  @override
  String toString() {
    return 'FcmTokenRequestBody(token: $token)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$FcmTokenRequestBodyImpl &&
            (identical(other.token, token) || other.token == token));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, token);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$FcmTokenRequestBodyImplCopyWith<_$FcmTokenRequestBodyImpl> get copyWith =>
      __$$FcmTokenRequestBodyImplCopyWithImpl<_$FcmTokenRequestBodyImpl>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$FcmTokenRequestBodyImplToJson(
      this,
    );
  }
}

abstract class _FcmTokenRequestBody implements FcmTokenRequestBody {
  const factory _FcmTokenRequestBody(
          {@JsonKey(name: 'token') required final String token}) =
      _$FcmTokenRequestBodyImpl;

  factory _FcmTokenRequestBody.fromJson(Map<String, dynamic> json) =
      _$FcmTokenRequestBodyImpl.fromJson;

  @override
  @JsonKey(name: 'token')
  String get token;
  @override
  @JsonKey(ignore: true)
  _$$FcmTokenRequestBodyImplCopyWith<_$FcmTokenRequestBodyImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
