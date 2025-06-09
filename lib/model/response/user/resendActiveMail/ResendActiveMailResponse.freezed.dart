// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'ResendActiveMailResponse.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

ResendActiveMailResponse _$ResendActiveMailResponseFromJson(
    Map<String, dynamic> json) {
  return _ResendActiveMailResponse.fromJson(json);
}

/// @nodoc
mixin _$ResendActiveMailResponse {
  @JsonKey(name: 'result')
  int get result => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $ResendActiveMailResponseCopyWith<ResendActiveMailResponse> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ResendActiveMailResponseCopyWith<$Res> {
  factory $ResendActiveMailResponseCopyWith(ResendActiveMailResponse value,
          $Res Function(ResendActiveMailResponse) then) =
      _$ResendActiveMailResponseCopyWithImpl<$Res, ResendActiveMailResponse>;
  @useResult
  $Res call({@JsonKey(name: 'result') int result});
}

/// @nodoc
class _$ResendActiveMailResponseCopyWithImpl<$Res,
        $Val extends ResendActiveMailResponse>
    implements $ResendActiveMailResponseCopyWith<$Res> {
  _$ResendActiveMailResponseCopyWithImpl(this._value, this._then);

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
abstract class _$$ResendActiveMailResponseImplCopyWith<$Res>
    implements $ResendActiveMailResponseCopyWith<$Res> {
  factory _$$ResendActiveMailResponseImplCopyWith(
          _$ResendActiveMailResponseImpl value,
          $Res Function(_$ResendActiveMailResponseImpl) then) =
      __$$ResendActiveMailResponseImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({@JsonKey(name: 'result') int result});
}

/// @nodoc
class __$$ResendActiveMailResponseImplCopyWithImpl<$Res>
    extends _$ResendActiveMailResponseCopyWithImpl<$Res,
        _$ResendActiveMailResponseImpl>
    implements _$$ResendActiveMailResponseImplCopyWith<$Res> {
  __$$ResendActiveMailResponseImplCopyWithImpl(
      _$ResendActiveMailResponseImpl _value,
      $Res Function(_$ResendActiveMailResponseImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? result = null,
  }) {
    return _then(_$ResendActiveMailResponseImpl(
      result: null == result
          ? _value.result
          : result // ignore: cast_nullable_to_non_nullable
              as int,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$ResendActiveMailResponseImpl implements _ResendActiveMailResponse {
  const _$ResendActiveMailResponseImpl(
      {@JsonKey(name: 'result') required this.result});

  factory _$ResendActiveMailResponseImpl.fromJson(Map<String, dynamic> json) =>
      _$$ResendActiveMailResponseImplFromJson(json);

  @override
  @JsonKey(name: 'result')
  final int result;

  @override
  String toString() {
    return 'ResendActiveMailResponse(result: $result)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ResendActiveMailResponseImpl &&
            (identical(other.result, result) || other.result == result));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, result);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$ResendActiveMailResponseImplCopyWith<_$ResendActiveMailResponseImpl>
      get copyWith => __$$ResendActiveMailResponseImplCopyWithImpl<
          _$ResendActiveMailResponseImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$ResendActiveMailResponseImplToJson(
      this,
    );
  }
}

abstract class _ResendActiveMailResponse implements ResendActiveMailResponse {
  const factory _ResendActiveMailResponse(
          {@JsonKey(name: 'result') required final int result}) =
      _$ResendActiveMailResponseImpl;

  factory _ResendActiveMailResponse.fromJson(Map<String, dynamic> json) =
      _$ResendActiveMailResponseImpl.fromJson;

  @override
  @JsonKey(name: 'result')
  int get result;
  @override
  @JsonKey(ignore: true)
  _$$ResendActiveMailResponseImplCopyWith<_$ResendActiveMailResponseImpl>
      get copyWith => throw _privateConstructorUsedError;
}
