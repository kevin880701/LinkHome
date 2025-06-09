// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'GoogleLoginRequestParams.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

GoogleLoginRequestParams _$GoogleLoginRequestParamsFromJson(
    Map<String, dynamic> json) {
  return _GoogleLoginRequestParams.fromJson(json);
}

/// @nodoc
mixin _$GoogleLoginRequestParams {
  @JsonKey(name: 'id_token')
  String get idToken => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $GoogleLoginRequestParamsCopyWith<GoogleLoginRequestParams> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $GoogleLoginRequestParamsCopyWith<$Res> {
  factory $GoogleLoginRequestParamsCopyWith(GoogleLoginRequestParams value,
          $Res Function(GoogleLoginRequestParams) then) =
      _$GoogleLoginRequestParamsCopyWithImpl<$Res, GoogleLoginRequestParams>;
  @useResult
  $Res call({@JsonKey(name: 'id_token') String idToken});
}

/// @nodoc
class _$GoogleLoginRequestParamsCopyWithImpl<$Res,
        $Val extends GoogleLoginRequestParams>
    implements $GoogleLoginRequestParamsCopyWith<$Res> {
  _$GoogleLoginRequestParamsCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? idToken = null,
  }) {
    return _then(_value.copyWith(
      idToken: null == idToken
          ? _value.idToken
          : idToken // ignore: cast_nullable_to_non_nullable
              as String,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$GoogleLoginRequestParamsImplCopyWith<$Res>
    implements $GoogleLoginRequestParamsCopyWith<$Res> {
  factory _$$GoogleLoginRequestParamsImplCopyWith(
          _$GoogleLoginRequestParamsImpl value,
          $Res Function(_$GoogleLoginRequestParamsImpl) then) =
      __$$GoogleLoginRequestParamsImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({@JsonKey(name: 'id_token') String idToken});
}

/// @nodoc
class __$$GoogleLoginRequestParamsImplCopyWithImpl<$Res>
    extends _$GoogleLoginRequestParamsCopyWithImpl<$Res,
        _$GoogleLoginRequestParamsImpl>
    implements _$$GoogleLoginRequestParamsImplCopyWith<$Res> {
  __$$GoogleLoginRequestParamsImplCopyWithImpl(
      _$GoogleLoginRequestParamsImpl _value,
      $Res Function(_$GoogleLoginRequestParamsImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? idToken = null,
  }) {
    return _then(_$GoogleLoginRequestParamsImpl(
      idToken: null == idToken
          ? _value.idToken
          : idToken // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$GoogleLoginRequestParamsImpl implements _GoogleLoginRequestParams {
  const _$GoogleLoginRequestParamsImpl(
      {@JsonKey(name: 'id_token') required this.idToken});

  factory _$GoogleLoginRequestParamsImpl.fromJson(Map<String, dynamic> json) =>
      _$$GoogleLoginRequestParamsImplFromJson(json);

  @override
  @JsonKey(name: 'id_token')
  final String idToken;

  @override
  String toString() {
    return 'GoogleLoginRequestParams(idToken: $idToken)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$GoogleLoginRequestParamsImpl &&
            (identical(other.idToken, idToken) || other.idToken == idToken));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, idToken);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$GoogleLoginRequestParamsImplCopyWith<_$GoogleLoginRequestParamsImpl>
      get copyWith => __$$GoogleLoginRequestParamsImplCopyWithImpl<
          _$GoogleLoginRequestParamsImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$GoogleLoginRequestParamsImplToJson(
      this,
    );
  }
}

abstract class _GoogleLoginRequestParams implements GoogleLoginRequestParams {
  const factory _GoogleLoginRequestParams(
          {@JsonKey(name: 'id_token') required final String idToken}) =
      _$GoogleLoginRequestParamsImpl;

  factory _GoogleLoginRequestParams.fromJson(Map<String, dynamic> json) =
      _$GoogleLoginRequestParamsImpl.fromJson;

  @override
  @JsonKey(name: 'id_token')
  String get idToken;
  @override
  @JsonKey(ignore: true)
  _$$GoogleLoginRequestParamsImplCopyWith<_$GoogleLoginRequestParamsImpl>
      get copyWith => throw _privateConstructorUsedError;
}
