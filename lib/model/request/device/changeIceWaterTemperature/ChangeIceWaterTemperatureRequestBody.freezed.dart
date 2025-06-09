// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'ChangeIceWaterTemperatureRequestBody.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

ChangeIceWaterTemperatureRequestBody
    _$ChangeIceWaterTemperatureRequestBodyFromJson(Map<String, dynamic> json) {
  return _ChangeIceWaterTemperatureRequestBody.fromJson(json);
}

/// @nodoc
mixin _$ChangeIceWaterTemperatureRequestBody {
  @JsonKey(name: 'value')
  String get value => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $ChangeIceWaterTemperatureRequestBodyCopyWith<
          ChangeIceWaterTemperatureRequestBody>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ChangeIceWaterTemperatureRequestBodyCopyWith<$Res> {
  factory $ChangeIceWaterTemperatureRequestBodyCopyWith(
          ChangeIceWaterTemperatureRequestBody value,
          $Res Function(ChangeIceWaterTemperatureRequestBody) then) =
      _$ChangeIceWaterTemperatureRequestBodyCopyWithImpl<$Res,
          ChangeIceWaterTemperatureRequestBody>;
  @useResult
  $Res call({@JsonKey(name: 'value') String value});
}

/// @nodoc
class _$ChangeIceWaterTemperatureRequestBodyCopyWithImpl<$Res,
        $Val extends ChangeIceWaterTemperatureRequestBody>
    implements $ChangeIceWaterTemperatureRequestBodyCopyWith<$Res> {
  _$ChangeIceWaterTemperatureRequestBodyCopyWithImpl(this._value, this._then);

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
abstract class _$$ChangeIceWaterTemperatureRequestBodyImplCopyWith<$Res>
    implements $ChangeIceWaterTemperatureRequestBodyCopyWith<$Res> {
  factory _$$ChangeIceWaterTemperatureRequestBodyImplCopyWith(
          _$ChangeIceWaterTemperatureRequestBodyImpl value,
          $Res Function(_$ChangeIceWaterTemperatureRequestBodyImpl) then) =
      __$$ChangeIceWaterTemperatureRequestBodyImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({@JsonKey(name: 'value') String value});
}

/// @nodoc
class __$$ChangeIceWaterTemperatureRequestBodyImplCopyWithImpl<$Res>
    extends _$ChangeIceWaterTemperatureRequestBodyCopyWithImpl<$Res,
        _$ChangeIceWaterTemperatureRequestBodyImpl>
    implements _$$ChangeIceWaterTemperatureRequestBodyImplCopyWith<$Res> {
  __$$ChangeIceWaterTemperatureRequestBodyImplCopyWithImpl(
      _$ChangeIceWaterTemperatureRequestBodyImpl _value,
      $Res Function(_$ChangeIceWaterTemperatureRequestBodyImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? value = null,
  }) {
    return _then(_$ChangeIceWaterTemperatureRequestBodyImpl(
      value: null == value
          ? _value.value
          : value // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$ChangeIceWaterTemperatureRequestBodyImpl
    implements _ChangeIceWaterTemperatureRequestBody {
  const _$ChangeIceWaterTemperatureRequestBodyImpl(
      {@JsonKey(name: 'value') required this.value});

  factory _$ChangeIceWaterTemperatureRequestBodyImpl.fromJson(
          Map<String, dynamic> json) =>
      _$$ChangeIceWaterTemperatureRequestBodyImplFromJson(json);

  @override
  @JsonKey(name: 'value')
  final String value;

  @override
  String toString() {
    return 'ChangeIceWaterTemperatureRequestBody(value: $value)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ChangeIceWaterTemperatureRequestBodyImpl &&
            (identical(other.value, value) || other.value == value));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, value);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$ChangeIceWaterTemperatureRequestBodyImplCopyWith<
          _$ChangeIceWaterTemperatureRequestBodyImpl>
      get copyWith => __$$ChangeIceWaterTemperatureRequestBodyImplCopyWithImpl<
          _$ChangeIceWaterTemperatureRequestBodyImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$ChangeIceWaterTemperatureRequestBodyImplToJson(
      this,
    );
  }
}

abstract class _ChangeIceWaterTemperatureRequestBody
    implements ChangeIceWaterTemperatureRequestBody {
  const factory _ChangeIceWaterTemperatureRequestBody(
          {@JsonKey(name: 'value') required final String value}) =
      _$ChangeIceWaterTemperatureRequestBodyImpl;

  factory _ChangeIceWaterTemperatureRequestBody.fromJson(
          Map<String, dynamic> json) =
      _$ChangeIceWaterTemperatureRequestBodyImpl.fromJson;

  @override
  @JsonKey(name: 'value')
  String get value;
  @override
  @JsonKey(ignore: true)
  _$$ChangeIceWaterTemperatureRequestBodyImplCopyWith<
          _$ChangeIceWaterTemperatureRequestBodyImpl>
      get copyWith => throw _privateConstructorUsedError;
}
