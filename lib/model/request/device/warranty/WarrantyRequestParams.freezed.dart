// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'WarrantyRequestParams.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

WarrantyRequestParams _$WarrantyRequestParamsFromJson(
    Map<String, dynamic> json) {
  return _WarrantyRequestParams.fromJson(json);
}

/// @nodoc
mixin _$WarrantyRequestParams {
  @JsonKey(name: 'device_id')
  int get deviceId => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $WarrantyRequestParamsCopyWith<WarrantyRequestParams> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $WarrantyRequestParamsCopyWith<$Res> {
  factory $WarrantyRequestParamsCopyWith(WarrantyRequestParams value,
          $Res Function(WarrantyRequestParams) then) =
      _$WarrantyRequestParamsCopyWithImpl<$Res, WarrantyRequestParams>;
  @useResult
  $Res call({@JsonKey(name: 'device_id') int deviceId});
}

/// @nodoc
class _$WarrantyRequestParamsCopyWithImpl<$Res,
        $Val extends WarrantyRequestParams>
    implements $WarrantyRequestParamsCopyWith<$Res> {
  _$WarrantyRequestParamsCopyWithImpl(this._value, this._then);

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
abstract class _$$WarrantyRequestParamsImplCopyWith<$Res>
    implements $WarrantyRequestParamsCopyWith<$Res> {
  factory _$$WarrantyRequestParamsImplCopyWith(
          _$WarrantyRequestParamsImpl value,
          $Res Function(_$WarrantyRequestParamsImpl) then) =
      __$$WarrantyRequestParamsImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({@JsonKey(name: 'device_id') int deviceId});
}

/// @nodoc
class __$$WarrantyRequestParamsImplCopyWithImpl<$Res>
    extends _$WarrantyRequestParamsCopyWithImpl<$Res,
        _$WarrantyRequestParamsImpl>
    implements _$$WarrantyRequestParamsImplCopyWith<$Res> {
  __$$WarrantyRequestParamsImplCopyWithImpl(_$WarrantyRequestParamsImpl _value,
      $Res Function(_$WarrantyRequestParamsImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? deviceId = null,
  }) {
    return _then(_$WarrantyRequestParamsImpl(
      deviceId: null == deviceId
          ? _value.deviceId
          : deviceId // ignore: cast_nullable_to_non_nullable
              as int,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$WarrantyRequestParamsImpl implements _WarrantyRequestParams {
  const _$WarrantyRequestParamsImpl(
      {@JsonKey(name: 'device_id') required this.deviceId});

  factory _$WarrantyRequestParamsImpl.fromJson(Map<String, dynamic> json) =>
      _$$WarrantyRequestParamsImplFromJson(json);

  @override
  @JsonKey(name: 'device_id')
  final int deviceId;

  @override
  String toString() {
    return 'WarrantyRequestParams(deviceId: $deviceId)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$WarrantyRequestParamsImpl &&
            (identical(other.deviceId, deviceId) ||
                other.deviceId == deviceId));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, deviceId);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$WarrantyRequestParamsImplCopyWith<_$WarrantyRequestParamsImpl>
      get copyWith => __$$WarrantyRequestParamsImplCopyWithImpl<
          _$WarrantyRequestParamsImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$WarrantyRequestParamsImplToJson(
      this,
    );
  }
}

abstract class _WarrantyRequestParams implements WarrantyRequestParams {
  const factory _WarrantyRequestParams(
          {@JsonKey(name: 'device_id') required final int deviceId}) =
      _$WarrantyRequestParamsImpl;

  factory _WarrantyRequestParams.fromJson(Map<String, dynamic> json) =
      _$WarrantyRequestParamsImpl.fromJson;

  @override
  @JsonKey(name: 'device_id')
  int get deviceId;
  @override
  @JsonKey(ignore: true)
  _$$WarrantyRequestParamsImplCopyWith<_$WarrantyRequestParamsImpl>
      get copyWith => throw _privateConstructorUsedError;
}
