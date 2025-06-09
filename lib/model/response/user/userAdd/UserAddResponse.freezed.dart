// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'UserAddResponse.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

UserAddResponse _$UserAddResponseFromJson(Map<String, dynamic> json) {
  return _UserAddResponse.fromJson(json);
}

/// @nodoc
mixin _$UserAddResponse {
  @JsonKey(name: 'result')
  int get result => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $UserAddResponseCopyWith<UserAddResponse> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $UserAddResponseCopyWith<$Res> {
  factory $UserAddResponseCopyWith(
          UserAddResponse value, $Res Function(UserAddResponse) then) =
      _$UserAddResponseCopyWithImpl<$Res, UserAddResponse>;
  @useResult
  $Res call({@JsonKey(name: 'result') int result});
}

/// @nodoc
class _$UserAddResponseCopyWithImpl<$Res, $Val extends UserAddResponse>
    implements $UserAddResponseCopyWith<$Res> {
  _$UserAddResponseCopyWithImpl(this._value, this._then);

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
abstract class _$$UserAddResponseImplCopyWith<$Res>
    implements $UserAddResponseCopyWith<$Res> {
  factory _$$UserAddResponseImplCopyWith(_$UserAddResponseImpl value,
          $Res Function(_$UserAddResponseImpl) then) =
      __$$UserAddResponseImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({@JsonKey(name: 'result') int result});
}

/// @nodoc
class __$$UserAddResponseImplCopyWithImpl<$Res>
    extends _$UserAddResponseCopyWithImpl<$Res, _$UserAddResponseImpl>
    implements _$$UserAddResponseImplCopyWith<$Res> {
  __$$UserAddResponseImplCopyWithImpl(
      _$UserAddResponseImpl _value, $Res Function(_$UserAddResponseImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? result = null,
  }) {
    return _then(_$UserAddResponseImpl(
      result: null == result
          ? _value.result
          : result // ignore: cast_nullable_to_non_nullable
              as int,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$UserAddResponseImpl implements _UserAddResponse {
  const _$UserAddResponseImpl({@JsonKey(name: 'result') required this.result});

  factory _$UserAddResponseImpl.fromJson(Map<String, dynamic> json) =>
      _$$UserAddResponseImplFromJson(json);

  @override
  @JsonKey(name: 'result')
  final int result;

  @override
  String toString() {
    return 'UserAddResponse(result: $result)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$UserAddResponseImpl &&
            (identical(other.result, result) || other.result == result));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, result);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$UserAddResponseImplCopyWith<_$UserAddResponseImpl> get copyWith =>
      __$$UserAddResponseImplCopyWithImpl<_$UserAddResponseImpl>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$UserAddResponseImplToJson(
      this,
    );
  }
}

abstract class _UserAddResponse implements UserAddResponse {
  const factory _UserAddResponse(
          {@JsonKey(name: 'result') required final int result}) =
      _$UserAddResponseImpl;

  factory _UserAddResponse.fromJson(Map<String, dynamic> json) =
      _$UserAddResponseImpl.fromJson;

  @override
  @JsonKey(name: 'result')
  int get result;
  @override
  @JsonKey(ignore: true)
  _$$UserAddResponseImplCopyWith<_$UserAddResponseImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
