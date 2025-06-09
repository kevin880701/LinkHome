// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'DeviceMacExistRequestParams.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

DeviceMacExistRequestParams _$DeviceMacExistRequestParamsFromJson(
    Map<String, dynamic> json) {
  return _DeviceMacExistRequestParams.fromJson(json);
}

/// @nodoc
mixin _$DeviceMacExistRequestParams {
  @JsonKey(name: 'mac')
  String get mac => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $DeviceMacExistRequestParamsCopyWith<DeviceMacExistRequestParams>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $DeviceMacExistRequestParamsCopyWith<$Res> {
  factory $DeviceMacExistRequestParamsCopyWith(
          DeviceMacExistRequestParams value,
          $Res Function(DeviceMacExistRequestParams) then) =
      _$DeviceMacExistRequestParamsCopyWithImpl<$Res,
          DeviceMacExistRequestParams>;
  @useResult
  $Res call({@JsonKey(name: 'mac') String mac});
}

/// @nodoc
class _$DeviceMacExistRequestParamsCopyWithImpl<$Res,
        $Val extends DeviceMacExistRequestParams>
    implements $DeviceMacExistRequestParamsCopyWith<$Res> {
  _$DeviceMacExistRequestParamsCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? mac = null,
  }) {
    return _then(_value.copyWith(
      mac: null == mac
          ? _value.mac
          : mac // ignore: cast_nullable_to_non_nullable
              as String,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$DeviceMacExistRequestParamsImplCopyWith<$Res>
    implements $DeviceMacExistRequestParamsCopyWith<$Res> {
  factory _$$DeviceMacExistRequestParamsImplCopyWith(
          _$DeviceMacExistRequestParamsImpl value,
          $Res Function(_$DeviceMacExistRequestParamsImpl) then) =
      __$$DeviceMacExistRequestParamsImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({@JsonKey(name: 'mac') String mac});
}

/// @nodoc
class __$$DeviceMacExistRequestParamsImplCopyWithImpl<$Res>
    extends _$DeviceMacExistRequestParamsCopyWithImpl<$Res,
        _$DeviceMacExistRequestParamsImpl>
    implements _$$DeviceMacExistRequestParamsImplCopyWith<$Res> {
  __$$DeviceMacExistRequestParamsImplCopyWithImpl(
      _$DeviceMacExistRequestParamsImpl _value,
      $Res Function(_$DeviceMacExistRequestParamsImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? mac = null,
  }) {
    return _then(_$DeviceMacExistRequestParamsImpl(
      mac: null == mac
          ? _value.mac
          : mac // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$DeviceMacExistRequestParamsImpl
    implements _DeviceMacExistRequestParams {
  const _$DeviceMacExistRequestParamsImpl(
      {@JsonKey(name: 'mac') required this.mac});

  factory _$DeviceMacExistRequestParamsImpl.fromJson(
          Map<String, dynamic> json) =>
      _$$DeviceMacExistRequestParamsImplFromJson(json);

  @override
  @JsonKey(name: 'mac')
  final String mac;

  @override
  String toString() {
    return 'DeviceMacExistRequestParams(mac: $mac)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$DeviceMacExistRequestParamsImpl &&
            (identical(other.mac, mac) || other.mac == mac));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, mac);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$DeviceMacExistRequestParamsImplCopyWith<_$DeviceMacExistRequestParamsImpl>
      get copyWith => __$$DeviceMacExistRequestParamsImplCopyWithImpl<
          _$DeviceMacExistRequestParamsImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$DeviceMacExistRequestParamsImplToJson(
      this,
    );
  }
}

abstract class _DeviceMacExistRequestParams
    implements DeviceMacExistRequestParams {
  const factory _DeviceMacExistRequestParams(
          {@JsonKey(name: 'mac') required final String mac}) =
      _$DeviceMacExistRequestParamsImpl;

  factory _DeviceMacExistRequestParams.fromJson(Map<String, dynamic> json) =
      _$DeviceMacExistRequestParamsImpl.fromJson;

  @override
  @JsonKey(name: 'mac')
  String get mac;
  @override
  @JsonKey(ignore: true)
  _$$DeviceMacExistRequestParamsImplCopyWith<_$DeviceMacExistRequestParamsImpl>
      get copyWith => throw _privateConstructorUsedError;
}
