// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'DeviceUserPlaceAreaRequestParams.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

DeviceUserPlaceAreaRequestParams _$DeviceUserPlaceAreaRequestParamsFromJson(
    Map<String, dynamic> json) {
  return _DeviceUserPlaceAreaRequestParams.fromJson(json);
}

/// @nodoc
mixin _$DeviceUserPlaceAreaRequestParams {
  int get area_id => throw _privateConstructorUsedError;
  int get place_id => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $DeviceUserPlaceAreaRequestParamsCopyWith<DeviceUserPlaceAreaRequestParams>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $DeviceUserPlaceAreaRequestParamsCopyWith<$Res> {
  factory $DeviceUserPlaceAreaRequestParamsCopyWith(
          DeviceUserPlaceAreaRequestParams value,
          $Res Function(DeviceUserPlaceAreaRequestParams) then) =
      _$DeviceUserPlaceAreaRequestParamsCopyWithImpl<$Res,
          DeviceUserPlaceAreaRequestParams>;
  @useResult
  $Res call({int area_id, int place_id});
}

/// @nodoc
class _$DeviceUserPlaceAreaRequestParamsCopyWithImpl<$Res,
        $Val extends DeviceUserPlaceAreaRequestParams>
    implements $DeviceUserPlaceAreaRequestParamsCopyWith<$Res> {
  _$DeviceUserPlaceAreaRequestParamsCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? area_id = null,
    Object? place_id = null,
  }) {
    return _then(_value.copyWith(
      area_id: null == area_id
          ? _value.area_id
          : area_id // ignore: cast_nullable_to_non_nullable
              as int,
      place_id: null == place_id
          ? _value.place_id
          : place_id // ignore: cast_nullable_to_non_nullable
              as int,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$DeviceUserPlaceAreaRequestParamsImplCopyWith<$Res>
    implements $DeviceUserPlaceAreaRequestParamsCopyWith<$Res> {
  factory _$$DeviceUserPlaceAreaRequestParamsImplCopyWith(
          _$DeviceUserPlaceAreaRequestParamsImpl value,
          $Res Function(_$DeviceUserPlaceAreaRequestParamsImpl) then) =
      __$$DeviceUserPlaceAreaRequestParamsImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({int area_id, int place_id});
}

/// @nodoc
class __$$DeviceUserPlaceAreaRequestParamsImplCopyWithImpl<$Res>
    extends _$DeviceUserPlaceAreaRequestParamsCopyWithImpl<$Res,
        _$DeviceUserPlaceAreaRequestParamsImpl>
    implements _$$DeviceUserPlaceAreaRequestParamsImplCopyWith<$Res> {
  __$$DeviceUserPlaceAreaRequestParamsImplCopyWithImpl(
      _$DeviceUserPlaceAreaRequestParamsImpl _value,
      $Res Function(_$DeviceUserPlaceAreaRequestParamsImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? area_id = null,
    Object? place_id = null,
  }) {
    return _then(_$DeviceUserPlaceAreaRequestParamsImpl(
      area_id: null == area_id
          ? _value.area_id
          : area_id // ignore: cast_nullable_to_non_nullable
              as int,
      place_id: null == place_id
          ? _value.place_id
          : place_id // ignore: cast_nullable_to_non_nullable
              as int,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$DeviceUserPlaceAreaRequestParamsImpl
    implements _DeviceUserPlaceAreaRequestParams {
  const _$DeviceUserPlaceAreaRequestParamsImpl(
      {required this.area_id, required this.place_id});

  factory _$DeviceUserPlaceAreaRequestParamsImpl.fromJson(
          Map<String, dynamic> json) =>
      _$$DeviceUserPlaceAreaRequestParamsImplFromJson(json);

  @override
  final int area_id;
  @override
  final int place_id;

  @override
  String toString() {
    return 'DeviceUserPlaceAreaRequestParams(area_id: $area_id, place_id: $place_id)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$DeviceUserPlaceAreaRequestParamsImpl &&
            (identical(other.area_id, area_id) || other.area_id == area_id) &&
            (identical(other.place_id, place_id) ||
                other.place_id == place_id));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, area_id, place_id);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$DeviceUserPlaceAreaRequestParamsImplCopyWith<
          _$DeviceUserPlaceAreaRequestParamsImpl>
      get copyWith => __$$DeviceUserPlaceAreaRequestParamsImplCopyWithImpl<
          _$DeviceUserPlaceAreaRequestParamsImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$DeviceUserPlaceAreaRequestParamsImplToJson(
      this,
    );
  }
}

abstract class _DeviceUserPlaceAreaRequestParams
    implements DeviceUserPlaceAreaRequestParams {
  const factory _DeviceUserPlaceAreaRequestParams(
      {required final int area_id,
      required final int place_id}) = _$DeviceUserPlaceAreaRequestParamsImpl;

  factory _DeviceUserPlaceAreaRequestParams.fromJson(
          Map<String, dynamic> json) =
      _$DeviceUserPlaceAreaRequestParamsImpl.fromJson;

  @override
  int get area_id;
  @override
  int get place_id;
  @override
  @JsonKey(ignore: true)
  _$$DeviceUserPlaceAreaRequestParamsImplCopyWith<
          _$DeviceUserPlaceAreaRequestParamsImpl>
      get copyWith => throw _privateConstructorUsedError;
}
