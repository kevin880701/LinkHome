// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'SetDevicePlaceRequestBody.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

SetDevicePlaceRequestBody _$SetDevicePlaceRequestBodyFromJson(
    Map<String, dynamic> json) {
  return _SetDevicePlaceRequestBody.fromJson(json);
}

/// @nodoc
mixin _$SetDevicePlaceRequestBody {
  @JsonKey(name: 'area_id')
  int? get areaId => throw _privateConstructorUsedError;
  @JsonKey(name: 'place_id')
  int? get placeId => throw _privateConstructorUsedError;
  @JsonKey(name: 'device_id')
  int get deviceId => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $SetDevicePlaceRequestBodyCopyWith<SetDevicePlaceRequestBody> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $SetDevicePlaceRequestBodyCopyWith<$Res> {
  factory $SetDevicePlaceRequestBodyCopyWith(SetDevicePlaceRequestBody value,
          $Res Function(SetDevicePlaceRequestBody) then) =
      _$SetDevicePlaceRequestBodyCopyWithImpl<$Res, SetDevicePlaceRequestBody>;
  @useResult
  $Res call(
      {@JsonKey(name: 'area_id') int? areaId,
      @JsonKey(name: 'place_id') int? placeId,
      @JsonKey(name: 'device_id') int deviceId});
}

/// @nodoc
class _$SetDevicePlaceRequestBodyCopyWithImpl<$Res,
        $Val extends SetDevicePlaceRequestBody>
    implements $SetDevicePlaceRequestBodyCopyWith<$Res> {
  _$SetDevicePlaceRequestBodyCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? areaId = freezed,
    Object? placeId = freezed,
    Object? deviceId = null,
  }) {
    return _then(_value.copyWith(
      areaId: freezed == areaId
          ? _value.areaId
          : areaId // ignore: cast_nullable_to_non_nullable
              as int?,
      placeId: freezed == placeId
          ? _value.placeId
          : placeId // ignore: cast_nullable_to_non_nullable
              as int?,
      deviceId: null == deviceId
          ? _value.deviceId
          : deviceId // ignore: cast_nullable_to_non_nullable
              as int,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$SetDevicePlaceRequestBodyImplCopyWith<$Res>
    implements $SetDevicePlaceRequestBodyCopyWith<$Res> {
  factory _$$SetDevicePlaceRequestBodyImplCopyWith(
          _$SetDevicePlaceRequestBodyImpl value,
          $Res Function(_$SetDevicePlaceRequestBodyImpl) then) =
      __$$SetDevicePlaceRequestBodyImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {@JsonKey(name: 'area_id') int? areaId,
      @JsonKey(name: 'place_id') int? placeId,
      @JsonKey(name: 'device_id') int deviceId});
}

/// @nodoc
class __$$SetDevicePlaceRequestBodyImplCopyWithImpl<$Res>
    extends _$SetDevicePlaceRequestBodyCopyWithImpl<$Res,
        _$SetDevicePlaceRequestBodyImpl>
    implements _$$SetDevicePlaceRequestBodyImplCopyWith<$Res> {
  __$$SetDevicePlaceRequestBodyImplCopyWithImpl(
      _$SetDevicePlaceRequestBodyImpl _value,
      $Res Function(_$SetDevicePlaceRequestBodyImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? areaId = freezed,
    Object? placeId = freezed,
    Object? deviceId = null,
  }) {
    return _then(_$SetDevicePlaceRequestBodyImpl(
      areaId: freezed == areaId
          ? _value.areaId
          : areaId // ignore: cast_nullable_to_non_nullable
              as int?,
      placeId: freezed == placeId
          ? _value.placeId
          : placeId // ignore: cast_nullable_to_non_nullable
              as int?,
      deviceId: null == deviceId
          ? _value.deviceId
          : deviceId // ignore: cast_nullable_to_non_nullable
              as int,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$SetDevicePlaceRequestBodyImpl implements _SetDevicePlaceRequestBody {
  const _$SetDevicePlaceRequestBodyImpl(
      {@JsonKey(name: 'area_id') this.areaId,
      @JsonKey(name: 'place_id') this.placeId,
      @JsonKey(name: 'device_id') required this.deviceId});

  factory _$SetDevicePlaceRequestBodyImpl.fromJson(Map<String, dynamic> json) =>
      _$$SetDevicePlaceRequestBodyImplFromJson(json);

  @override
  @JsonKey(name: 'area_id')
  final int? areaId;
  @override
  @JsonKey(name: 'place_id')
  final int? placeId;
  @override
  @JsonKey(name: 'device_id')
  final int deviceId;

  @override
  String toString() {
    return 'SetDevicePlaceRequestBody(areaId: $areaId, placeId: $placeId, deviceId: $deviceId)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$SetDevicePlaceRequestBodyImpl &&
            (identical(other.areaId, areaId) || other.areaId == areaId) &&
            (identical(other.placeId, placeId) || other.placeId == placeId) &&
            (identical(other.deviceId, deviceId) ||
                other.deviceId == deviceId));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, areaId, placeId, deviceId);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$SetDevicePlaceRequestBodyImplCopyWith<_$SetDevicePlaceRequestBodyImpl>
      get copyWith => __$$SetDevicePlaceRequestBodyImplCopyWithImpl<
          _$SetDevicePlaceRequestBodyImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$SetDevicePlaceRequestBodyImplToJson(
      this,
    );
  }
}

abstract class _SetDevicePlaceRequestBody implements SetDevicePlaceRequestBody {
  const factory _SetDevicePlaceRequestBody(
          {@JsonKey(name: 'area_id') final int? areaId,
          @JsonKey(name: 'place_id') final int? placeId,
          @JsonKey(name: 'device_id') required final int deviceId}) =
      _$SetDevicePlaceRequestBodyImpl;

  factory _SetDevicePlaceRequestBody.fromJson(Map<String, dynamic> json) =
      _$SetDevicePlaceRequestBodyImpl.fromJson;

  @override
  @JsonKey(name: 'area_id')
  int? get areaId;
  @override
  @JsonKey(name: 'place_id')
  int? get placeId;
  @override
  @JsonKey(name: 'device_id')
  int get deviceId;
  @override
  @JsonKey(ignore: true)
  _$$SetDevicePlaceRequestBodyImplCopyWith<_$SetDevicePlaceRequestBodyImpl>
      get copyWith => throw _privateConstructorUsedError;
}
