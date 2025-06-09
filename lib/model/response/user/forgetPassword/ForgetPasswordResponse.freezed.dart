// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'ForgetPasswordResponse.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

ForgetPasswordResponse _$ForgetPasswordResponseFromJson(
    Map<String, dynamic> json) {
  return _ForgetPasswordResponse.fromJson(json);
}

/// @nodoc
mixin _$ForgetPasswordResponse {
  @JsonKey(name: 'result')
  int get result => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $ForgetPasswordResponseCopyWith<ForgetPasswordResponse> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ForgetPasswordResponseCopyWith<$Res> {
  factory $ForgetPasswordResponseCopyWith(ForgetPasswordResponse value,
          $Res Function(ForgetPasswordResponse) then) =
      _$ForgetPasswordResponseCopyWithImpl<$Res, ForgetPasswordResponse>;
  @useResult
  $Res call({@JsonKey(name: 'result') int result});
}

/// @nodoc
class _$ForgetPasswordResponseCopyWithImpl<$Res,
        $Val extends ForgetPasswordResponse>
    implements $ForgetPasswordResponseCopyWith<$Res> {
  _$ForgetPasswordResponseCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? result = null,
  }) {
    return _then(_value.copyWith(
      result: null == result
          ? _value.result
          : result // ignore: cast_nullable_to_non_nullable
              as int,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$ForgetPasswordResponseImplCopyWith<$Res>
    implements $ForgetPasswordResponseCopyWith<$Res> {
  factory _$$ForgetPasswordResponseImplCopyWith(
          _$ForgetPasswordResponseImpl value,
          $Res Function(_$ForgetPasswordResponseImpl) then) =
      __$$ForgetPasswordResponseImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({@JsonKey(name: 'result') int result});
}

/// @nodoc
class __$$ForgetPasswordResponseImplCopyWithImpl<$Res>
    extends _$ForgetPasswordResponseCopyWithImpl<$Res,
        _$ForgetPasswordResponseImpl>
    implements _$$ForgetPasswordResponseImplCopyWith<$Res> {
  __$$ForgetPasswordResponseImplCopyWithImpl(
      _$ForgetPasswordResponseImpl _value,
      $Res Function(_$ForgetPasswordResponseImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? result = null,
  }) {
    return _then(_$ForgetPasswordResponseImpl(
      result: null == result
          ? _value.result
          : result // ignore: cast_nullable_to_non_nullable
              as int,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$ForgetPasswordResponseImpl implements _ForgetPasswordResponse {
  const _$ForgetPasswordResponseImpl(
      {@JsonKey(name: 'result') required this.result});

  factory _$ForgetPasswordResponseImpl.fromJson(Map<String, dynamic> json) =>
      _$$ForgetPasswordResponseImplFromJson(json);

  @override
  @JsonKey(name: 'result')
  final int result;

  @override
  String toString() {
    return 'ForgetPasswordResponse(result: $result)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ForgetPasswordResponseImpl &&
            (identical(other.result, result) || other.result == result));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, result);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$ForgetPasswordResponseImplCopyWith<_$ForgetPasswordResponseImpl>
      get copyWith => __$$ForgetPasswordResponseImplCopyWithImpl<
          _$ForgetPasswordResponseImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$ForgetPasswordResponseImplToJson(
      this,
    );
  }
}

abstract class _ForgetPasswordResponse implements ForgetPasswordResponse {
  const factory _ForgetPasswordResponse(
          {@JsonKey(name: 'result') required final int result}) =
      _$ForgetPasswordResponseImpl;

  factory _ForgetPasswordResponse.fromJson(Map<String, dynamic> json) =
      _$ForgetPasswordResponseImpl.fromJson;

  @override
  @JsonKey(name: 'result')
  int get result;
  @override
  @JsonKey(ignore: true)
  _$$ForgetPasswordResponseImplCopyWith<_$ForgetPasswordResponseImpl>
      get copyWith => throw _privateConstructorUsedError;
}
