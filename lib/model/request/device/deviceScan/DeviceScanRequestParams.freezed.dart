// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'DeviceScanRequestParams.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

DeviceScanRequestParams _$DeviceScanRequestParamsFromJson(
    Map<String, dynamic> json) {
  return _DeviceScanRequestParams.fromJson(json);
}

/// @nodoc
mixin _$DeviceScanRequestParams {
  String get mac => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $DeviceScanRequestParamsCopyWith<DeviceScanRequestParams> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $DeviceScanRequestParamsCopyWith<$Res> {
  factory $DeviceScanRequestParamsCopyWith(DeviceScanRequestParams value,
          $Res Function(DeviceScanRequestParams) then) =
      _$DeviceScanRequestParamsCopyWithImpl<$Res, DeviceScanRequestParams>;
  @useResult
  $Res call({String mac});
}

/// @nodoc
class _$DeviceScanRequestParamsCopyWithImpl<$Res,
        $Val extends DeviceScanRequestParams>
    implements $DeviceScanRequestParamsCopyWith<$Res> {
  _$DeviceScanRequestParamsCopyWithImpl(this._value, this._then);

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
abstract class _$$DeviceScanRequestParamsImplCopyWith<$Res>
    implements $DeviceScanRequestParamsCopyWith<$Res> {
  factory _$$DeviceScanRequestParamsImplCopyWith(
          _$DeviceScanRequestParamsImpl value,
          $Res Function(_$DeviceScanRequestParamsImpl) then) =
      __$$DeviceScanRequestParamsImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String mac});
}

/// @nodoc
class __$$DeviceScanRequestParamsImplCopyWithImpl<$Res>
    extends _$DeviceScanRequestParamsCopyWithImpl<$Res,
        _$DeviceScanRequestParamsImpl>
    implements _$$DeviceScanRequestParamsImplCopyWith<$Res> {
  __$$DeviceScanRequestParamsImplCopyWithImpl(
      _$DeviceScanRequestParamsImpl _value,
      $Res Function(_$DeviceScanRequestParamsImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? mac = null,
  }) {
    return _then(_$DeviceScanRequestParamsImpl(
      mac: null == mac
          ? _value.mac
          : mac // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$DeviceScanRequestParamsImpl implements _DeviceScanRequestParams {
  const _$DeviceScanRequestParamsImpl({required this.mac});

  factory _$DeviceScanRequestParamsImpl.fromJson(Map<String, dynamic> json) =>
      _$$DeviceScanRequestParamsImplFromJson(json);

  @override
  final String mac;

  @override
  String toString() {
    return 'DeviceScanRequestParams(mac: $mac)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$DeviceScanRequestParamsImpl &&
            (identical(other.mac, mac) || other.mac == mac));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, mac);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$DeviceScanRequestParamsImplCopyWith<_$DeviceScanRequestParamsImpl>
      get copyWith => __$$DeviceScanRequestParamsImplCopyWithImpl<
          _$DeviceScanRequestParamsImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$DeviceScanRequestParamsImplToJson(
      this,
    );
  }
}

abstract class _DeviceScanRequestParams implements DeviceScanRequestParams {
  const factory _DeviceScanRequestParams({required final String mac}) =
      _$DeviceScanRequestParamsImpl;

  factory _DeviceScanRequestParams.fromJson(Map<String, dynamic> json) =
      _$DeviceScanRequestParamsImpl.fromJson;

  @override
  String get mac;
  @override
  @JsonKey(ignore: true)
  _$$DeviceScanRequestParamsImplCopyWith<_$DeviceScanRequestParamsImpl>
      get copyWith => throw _privateConstructorUsedError;
}
