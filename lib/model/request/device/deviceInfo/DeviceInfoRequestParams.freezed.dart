// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'DeviceInfoRequestParams.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

DeviceInfoRequestParams _$DeviceInfoRequestParamsFromJson(
    Map<String, dynamic> json) {
  return _DeviceInfoRequestParams.fromJson(json);
}

/// @nodoc
mixin _$DeviceInfoRequestParams {
  @JsonKey(name: 'device_id')
  int get deviceId => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $DeviceInfoRequestParamsCopyWith<DeviceInfoRequestParams> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $DeviceInfoRequestParamsCopyWith<$Res> {
  factory $DeviceInfoRequestParamsCopyWith(DeviceInfoRequestParams value,
          $Res Function(DeviceInfoRequestParams) then) =
      _$DeviceInfoRequestParamsCopyWithImpl<$Res, DeviceInfoRequestParams>;
  @useResult
  $Res call({@JsonKey(name: 'device_id') int deviceId});
}

/// @nodoc
class _$DeviceInfoRequestParamsCopyWithImpl<$Res,
        $Val extends DeviceInfoRequestParams>
    implements $DeviceInfoRequestParamsCopyWith<$Res> {
  _$DeviceInfoRequestParamsCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? deviceId = null,
  }) {
    return _then(_value.copyWith(
      deviceId: null == deviceId
          ? _value.deviceId
          : deviceId // ignore: cast_nullable_to_non_nullable
              as int,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$DeviceInfoRequestParamsImplCopyWith<$Res>
    implements $DeviceInfoRequestParamsCopyWith<$Res> {
  factory _$$DeviceInfoRequestParamsImplCopyWith(
          _$DeviceInfoRequestParamsImpl value,
          $Res Function(_$DeviceInfoRequestParamsImpl) then) =
      __$$DeviceInfoRequestParamsImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({@JsonKey(name: 'device_id') int deviceId});
}

/// @nodoc
class __$$DeviceInfoRequestParamsImplCopyWithImpl<$Res>
    extends _$DeviceInfoRequestParamsCopyWithImpl<$Res,
        _$DeviceInfoRequestParamsImpl>
    implements _$$DeviceInfoRequestParamsImplCopyWith<$Res> {
  __$$DeviceInfoRequestParamsImplCopyWithImpl(
      _$DeviceInfoRequestParamsImpl _value,
      $Res Function(_$DeviceInfoRequestParamsImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? deviceId = null,
  }) {
    return _then(_$DeviceInfoRequestParamsImpl(
      deviceId: null == deviceId
          ? _value.deviceId
          : deviceId // ignore: cast_nullable_to_non_nullable
              as int,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$DeviceInfoRequestParamsImpl implements _DeviceInfoRequestParams {
  const _$DeviceInfoRequestParamsImpl(
      {@JsonKey(name: 'device_id') required this.deviceId});

  factory _$DeviceInfoRequestParamsImpl.fromJson(Map<String, dynamic> json) =>
      _$$DeviceInfoRequestParamsImplFromJson(json);

  @override
  @JsonKey(name: 'device_id')
  final int deviceId;

  @override
  String toString() {
    return 'DeviceInfoRequestParams(deviceId: $deviceId)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$DeviceInfoRequestParamsImpl &&
            (identical(other.deviceId, deviceId) ||
                other.deviceId == deviceId));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, deviceId);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$DeviceInfoRequestParamsImplCopyWith<_$DeviceInfoRequestParamsImpl>
      get copyWith => __$$DeviceInfoRequestParamsImplCopyWithImpl<
          _$DeviceInfoRequestParamsImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$DeviceInfoRequestParamsImplToJson(
      this,
    );
  }
}

abstract class _DeviceInfoRequestParams implements DeviceInfoRequestParams {
  const factory _DeviceInfoRequestParams(
          {@JsonKey(name: 'device_id') required final int deviceId}) =
      _$DeviceInfoRequestParamsImpl;

  factory _DeviceInfoRequestParams.fromJson(Map<String, dynamic> json) =
      _$DeviceInfoRequestParamsImpl.fromJson;

  @override
  @JsonKey(name: 'device_id')
  int get deviceId;
  @override
  @JsonKey(ignore: true)
  _$$DeviceInfoRequestParamsImplCopyWith<_$DeviceInfoRequestParamsImpl>
      get copyWith => throw _privateConstructorUsedError;
}
