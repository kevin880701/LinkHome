// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'DeviceNameRequestBody.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

DeviceNameRequestBody _$DeviceNameRequestBodyFromJson(
    Map<String, dynamic> json) {
  return _DeviceNameRequestBody.fromJson(json);
}

/// @nodoc
mixin _$DeviceNameRequestBody {
  @JsonKey(name: 'device_id')
  int get deviceId => throw _privateConstructorUsedError;
  @JsonKey(name: 'name')
  String get name => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $DeviceNameRequestBodyCopyWith<DeviceNameRequestBody> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $DeviceNameRequestBodyCopyWith<$Res> {
  factory $DeviceNameRequestBodyCopyWith(DeviceNameRequestBody value,
          $Res Function(DeviceNameRequestBody) then) =
      _$DeviceNameRequestBodyCopyWithImpl<$Res, DeviceNameRequestBody>;
  @useResult
  $Res call(
      {@JsonKey(name: 'device_id') int deviceId,
      @JsonKey(name: 'name') String name});
}

/// @nodoc
class _$DeviceNameRequestBodyCopyWithImpl<$Res,
        $Val extends DeviceNameRequestBody>
    implements $DeviceNameRequestBodyCopyWith<$Res> {
  _$DeviceNameRequestBodyCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? deviceId = null,
    Object? name = null,
  }) {
    return _then(_value.copyWith(
      deviceId: null == deviceId
          ? _value.deviceId
          : deviceId // ignore: cast_nullable_to_non_nullable
              as int,
      name: null == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$DeviceNameRequestBodyImplCopyWith<$Res>
    implements $DeviceNameRequestBodyCopyWith<$Res> {
  factory _$$DeviceNameRequestBodyImplCopyWith(
          _$DeviceNameRequestBodyImpl value,
          $Res Function(_$DeviceNameRequestBodyImpl) then) =
      __$$DeviceNameRequestBodyImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {@JsonKey(name: 'device_id') int deviceId,
      @JsonKey(name: 'name') String name});
}

/// @nodoc
class __$$DeviceNameRequestBodyImplCopyWithImpl<$Res>
    extends _$DeviceNameRequestBodyCopyWithImpl<$Res,
        _$DeviceNameRequestBodyImpl>
    implements _$$DeviceNameRequestBodyImplCopyWith<$Res> {
  __$$DeviceNameRequestBodyImplCopyWithImpl(_$DeviceNameRequestBodyImpl _value,
      $Res Function(_$DeviceNameRequestBodyImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? deviceId = null,
    Object? name = null,
  }) {
    return _then(_$DeviceNameRequestBodyImpl(
      deviceId: null == deviceId
          ? _value.deviceId
          : deviceId // ignore: cast_nullable_to_non_nullable
              as int,
      name: null == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$DeviceNameRequestBodyImpl implements _DeviceNameRequestBody {
  const _$DeviceNameRequestBodyImpl(
      {@JsonKey(name: 'device_id') required this.deviceId,
      @JsonKey(name: 'name') required this.name});

  factory _$DeviceNameRequestBodyImpl.fromJson(Map<String, dynamic> json) =>
      _$$DeviceNameRequestBodyImplFromJson(json);

  @override
  @JsonKey(name: 'device_id')
  final int deviceId;
  @override
  @JsonKey(name: 'name')
  final String name;

  @override
  String toString() {
    return 'DeviceNameRequestBody(deviceId: $deviceId, name: $name)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$DeviceNameRequestBodyImpl &&
            (identical(other.deviceId, deviceId) ||
                other.deviceId == deviceId) &&
            (identical(other.name, name) || other.name == name));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, deviceId, name);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$DeviceNameRequestBodyImplCopyWith<_$DeviceNameRequestBodyImpl>
      get copyWith => __$$DeviceNameRequestBodyImplCopyWithImpl<
          _$DeviceNameRequestBodyImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$DeviceNameRequestBodyImplToJson(
      this,
    );
  }
}

abstract class _DeviceNameRequestBody implements DeviceNameRequestBody {
  const factory _DeviceNameRequestBody(
          {@JsonKey(name: 'device_id') required final int deviceId,
          @JsonKey(name: 'name') required final String name}) =
      _$DeviceNameRequestBodyImpl;

  factory _DeviceNameRequestBody.fromJson(Map<String, dynamic> json) =
      _$DeviceNameRequestBodyImpl.fromJson;

  @override
  @JsonKey(name: 'device_id')
  int get deviceId;
  @override
  @JsonKey(name: 'name')
  String get name;
  @override
  @JsonKey(ignore: true)
  _$$DeviceNameRequestBodyImplCopyWith<_$DeviceNameRequestBodyImpl>
      get copyWith => throw _privateConstructorUsedError;
}
