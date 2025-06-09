// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'ChangeEcoRequestBody.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

ChangeEcoRequestBody _$ChangeEcoRequestBodyFromJson(Map<String, dynamic> json) {
  return _ChangeEcoRequestBody.fromJson(json);
}

/// @nodoc
mixin _$ChangeEcoRequestBody {
  @JsonKey(name: 'value')
  String get value => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $ChangeEcoRequestBodyCopyWith<ChangeEcoRequestBody> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ChangeEcoRequestBodyCopyWith<$Res> {
  factory $ChangeEcoRequestBodyCopyWith(ChangeEcoRequestBody value,
          $Res Function(ChangeEcoRequestBody) then) =
      _$ChangeEcoRequestBodyCopyWithImpl<$Res, ChangeEcoRequestBody>;
  @useResult
  $Res call({@JsonKey(name: 'value') String value});
}

/// @nodoc
class _$ChangeEcoRequestBodyCopyWithImpl<$Res,
        $Val extends ChangeEcoRequestBody>
    implements $ChangeEcoRequestBodyCopyWith<$Res> {
  _$ChangeEcoRequestBodyCopyWithImpl(this._value, this._then);

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
abstract class _$$ChangeEcoRequestBodyImplCopyWith<$Res>
    implements $ChangeEcoRequestBodyCopyWith<$Res> {
  factory _$$ChangeEcoRequestBodyImplCopyWith(_$ChangeEcoRequestBodyImpl value,
          $Res Function(_$ChangeEcoRequestBodyImpl) then) =
      __$$ChangeEcoRequestBodyImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({@JsonKey(name: 'value') String value});
}

/// @nodoc
class __$$ChangeEcoRequestBodyImplCopyWithImpl<$Res>
    extends _$ChangeEcoRequestBodyCopyWithImpl<$Res, _$ChangeEcoRequestBodyImpl>
    implements _$$ChangeEcoRequestBodyImplCopyWith<$Res> {
  __$$ChangeEcoRequestBodyImplCopyWithImpl(_$ChangeEcoRequestBodyImpl _value,
      $Res Function(_$ChangeEcoRequestBodyImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? value = null,
  }) {
    return _then(_$ChangeEcoRequestBodyImpl(
      value: null == value
          ? _value.value
          : value // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$ChangeEcoRequestBodyImpl implements _ChangeEcoRequestBody {
  const _$ChangeEcoRequestBodyImpl(
      {@JsonKey(name: 'value') required this.value});

  factory _$ChangeEcoRequestBodyImpl.fromJson(Map<String, dynamic> json) =>
      _$$ChangeEcoRequestBodyImplFromJson(json);

  @override
  @JsonKey(name: 'value')
  final String value;

  @override
  String toString() {
    return 'ChangeEcoRequestBody(value: $value)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ChangeEcoRequestBodyImpl &&
            (identical(other.value, value) || other.value == value));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, value);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$ChangeEcoRequestBodyImplCopyWith<_$ChangeEcoRequestBodyImpl>
      get copyWith =>
          __$$ChangeEcoRequestBodyImplCopyWithImpl<_$ChangeEcoRequestBodyImpl>(
              this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$ChangeEcoRequestBodyImplToJson(
      this,
    );
  }
}

abstract class _ChangeEcoRequestBody implements ChangeEcoRequestBody {
  const factory _ChangeEcoRequestBody(
          {@JsonKey(name: 'value') required final String value}) =
      _$ChangeEcoRequestBodyImpl;

  factory _ChangeEcoRequestBody.fromJson(Map<String, dynamic> json) =
      _$ChangeEcoRequestBodyImpl.fromJson;

  @override
  @JsonKey(name: 'value')
  String get value;
  @override
  @JsonKey(ignore: true)
  _$$ChangeEcoRequestBodyImplCopyWith<_$ChangeEcoRequestBodyImpl>
      get copyWith => throw _privateConstructorUsedError;
}
