// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'ReheatSettingsRequestBody.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

ReheatSettingsRequestBody _$ReheatSettingsRequestBodyFromJson(
    Map<String, dynamic> json) {
  return _ReheatSettingsRequestBody.fromJson(json);
}

/// @nodoc
mixin _$ReheatSettingsRequestBody {
  @JsonKey(name: 'value')
  String get value => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $ReheatSettingsRequestBodyCopyWith<ReheatSettingsRequestBody> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ReheatSettingsRequestBodyCopyWith<$Res> {
  factory $ReheatSettingsRequestBodyCopyWith(ReheatSettingsRequestBody value,
          $Res Function(ReheatSettingsRequestBody) then) =
      _$ReheatSettingsRequestBodyCopyWithImpl<$Res, ReheatSettingsRequestBody>;
  @useResult
  $Res call({@JsonKey(name: 'value') String value});
}

/// @nodoc
class _$ReheatSettingsRequestBodyCopyWithImpl<$Res,
        $Val extends ReheatSettingsRequestBody>
    implements $ReheatSettingsRequestBodyCopyWith<$Res> {
  _$ReheatSettingsRequestBodyCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? value = null,
  }) {
    return _then(_value.copyWith(
      value: null == value
          ? _value.value
          : value // ignore: cast_nullable_to_non_nullable
              as String,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$ReheatSettingsRequestBodyImplCopyWith<$Res>
    implements $ReheatSettingsRequestBodyCopyWith<$Res> {
  factory _$$ReheatSettingsRequestBodyImplCopyWith(
          _$ReheatSettingsRequestBodyImpl value,
          $Res Function(_$ReheatSettingsRequestBodyImpl) then) =
      __$$ReheatSettingsRequestBodyImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({@JsonKey(name: 'value') String value});
}

/// @nodoc
class __$$ReheatSettingsRequestBodyImplCopyWithImpl<$Res>
    extends _$ReheatSettingsRequestBodyCopyWithImpl<$Res,
        _$ReheatSettingsRequestBodyImpl>
    implements _$$ReheatSettingsRequestBodyImplCopyWith<$Res> {
  __$$ReheatSettingsRequestBodyImplCopyWithImpl(
      _$ReheatSettingsRequestBodyImpl _value,
      $Res Function(_$ReheatSettingsRequestBodyImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? value = null,
  }) {
    return _then(_$ReheatSettingsRequestBodyImpl(
      value: null == value
          ? _value.value
          : value // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$ReheatSettingsRequestBodyImpl implements _ReheatSettingsRequestBody {
  const _$ReheatSettingsRequestBodyImpl(
      {@JsonKey(name: 'value') required this.value});

  factory _$ReheatSettingsRequestBodyImpl.fromJson(Map<String, dynamic> json) =>
      _$$ReheatSettingsRequestBodyImplFromJson(json);

  @override
  @JsonKey(name: 'value')
  final String value;

  @override
  String toString() {
    return 'ReheatSettingsRequestBody(value: $value)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ReheatSettingsRequestBodyImpl &&
            (identical(other.value, value) || other.value == value));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, value);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$ReheatSettingsRequestBodyImplCopyWith<_$ReheatSettingsRequestBodyImpl>
      get copyWith => __$$ReheatSettingsRequestBodyImplCopyWithImpl<
          _$ReheatSettingsRequestBodyImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$ReheatSettingsRequestBodyImplToJson(
      this,
    );
  }
}

abstract class _ReheatSettingsRequestBody implements ReheatSettingsRequestBody {
  const factory _ReheatSettingsRequestBody(
          {@JsonKey(name: 'value') required final String value}) =
      _$ReheatSettingsRequestBodyImpl;

  factory _ReheatSettingsRequestBody.fromJson(Map<String, dynamic> json) =
      _$ReheatSettingsRequestBodyImpl.fromJson;

  @override
  @JsonKey(name: 'value')
  String get value;
  @override
  @JsonKey(ignore: true)
  _$$ReheatSettingsRequestBodyImplCopyWith<_$ReheatSettingsRequestBodyImpl>
      get copyWith => throw _privateConstructorUsedError;
}
