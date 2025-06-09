// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'ChangeHotWaterTemperatureRequestBody.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

ChangeHotWaterTemperatureRequestBody
    _$ChangeHotWaterTemperatureRequestBodyFromJson(Map<String, dynamic> json) {
  return _ChangeHotWaterTemperatureRequestBody.fromJson(json);
}

/// @nodoc
mixin _$ChangeHotWaterTemperatureRequestBody {
  @JsonKey(name: 'value')
  String get value => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $ChangeHotWaterTemperatureRequestBodyCopyWith<
          ChangeHotWaterTemperatureRequestBody>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ChangeHotWaterTemperatureRequestBodyCopyWith<$Res> {
  factory $ChangeHotWaterTemperatureRequestBodyCopyWith(
          ChangeHotWaterTemperatureRequestBody value,
          $Res Function(ChangeHotWaterTemperatureRequestBody) then) =
      _$ChangeHotWaterTemperatureRequestBodyCopyWithImpl<$Res,
          ChangeHotWaterTemperatureRequestBody>;
  @useResult
  $Res call({@JsonKey(name: 'value') String value});
}

/// @nodoc
class _$ChangeHotWaterTemperatureRequestBodyCopyWithImpl<$Res,
        $Val extends ChangeHotWaterTemperatureRequestBody>
    implements $ChangeHotWaterTemperatureRequestBodyCopyWith<$Res> {
  _$ChangeHotWaterTemperatureRequestBodyCopyWithImpl(this._value, this._then);

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
abstract class _$$ChangeHotWaterTemperatureRequestBodyImplCopyWith<$Res>
    implements $ChangeHotWaterTemperatureRequestBodyCopyWith<$Res> {
  factory _$$ChangeHotWaterTemperatureRequestBodyImplCopyWith(
          _$ChangeHotWaterTemperatureRequestBodyImpl value,
          $Res Function(_$ChangeHotWaterTemperatureRequestBodyImpl) then) =
      __$$ChangeHotWaterTemperatureRequestBodyImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({@JsonKey(name: 'value') String value});
}

/// @nodoc
class __$$ChangeHotWaterTemperatureRequestBodyImplCopyWithImpl<$Res>
    extends _$ChangeHotWaterTemperatureRequestBodyCopyWithImpl<$Res,
        _$ChangeHotWaterTemperatureRequestBodyImpl>
    implements _$$ChangeHotWaterTemperatureRequestBodyImplCopyWith<$Res> {
  __$$ChangeHotWaterTemperatureRequestBodyImplCopyWithImpl(
      _$ChangeHotWaterTemperatureRequestBodyImpl _value,
      $Res Function(_$ChangeHotWaterTemperatureRequestBodyImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? value = null,
  }) {
    return _then(_$ChangeHotWaterTemperatureRequestBodyImpl(
      value: null == value
          ? _value.value
          : value // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$ChangeHotWaterTemperatureRequestBodyImpl
    implements _ChangeHotWaterTemperatureRequestBody {
  const _$ChangeHotWaterTemperatureRequestBodyImpl(
      {@JsonKey(name: 'value') required this.value});

  factory _$ChangeHotWaterTemperatureRequestBodyImpl.fromJson(
          Map<String, dynamic> json) =>
      _$$ChangeHotWaterTemperatureRequestBodyImplFromJson(json);

  @override
  @JsonKey(name: 'value')
  final String value;

  @override
  String toString() {
    return 'ChangeHotWaterTemperatureRequestBody(value: $value)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ChangeHotWaterTemperatureRequestBodyImpl &&
            (identical(other.value, value) || other.value == value));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, value);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$ChangeHotWaterTemperatureRequestBodyImplCopyWith<
          _$ChangeHotWaterTemperatureRequestBodyImpl>
      get copyWith => __$$ChangeHotWaterTemperatureRequestBodyImplCopyWithImpl<
          _$ChangeHotWaterTemperatureRequestBodyImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$ChangeHotWaterTemperatureRequestBodyImplToJson(
      this,
    );
  }
}

abstract class _ChangeHotWaterTemperatureRequestBody
    implements ChangeHotWaterTemperatureRequestBody {
  const factory _ChangeHotWaterTemperatureRequestBody(
          {@JsonKey(name: 'value') required final String value}) =
      _$ChangeHotWaterTemperatureRequestBodyImpl;

  factory _ChangeHotWaterTemperatureRequestBody.fromJson(
          Map<String, dynamic> json) =
      _$ChangeHotWaterTemperatureRequestBodyImpl.fromJson;

  @override
  @JsonKey(name: 'value')
  String get value;
  @override
  @JsonKey(ignore: true)
  _$$ChangeHotWaterTemperatureRequestBodyImplCopyWith<
          _$ChangeHotWaterTemperatureRequestBodyImpl>
      get copyWith => throw _privateConstructorUsedError;
}
