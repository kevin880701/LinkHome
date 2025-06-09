// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'PlaceRequestParams.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

PlaceRequestParams _$PlaceRequestParamsFromJson(Map<String, dynamic> json) {
  return _PlaceRequestParams.fromJson(json);
}

/// @nodoc
mixin _$PlaceRequestParams {
  @JsonKey(name: 'place_id')
  int get placeId => throw _privateConstructorUsedError;
  @JsonKey(name: 'area_id')
  int get areaId => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $PlaceRequestParamsCopyWith<PlaceRequestParams> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $PlaceRequestParamsCopyWith<$Res> {
  factory $PlaceRequestParamsCopyWith(
          PlaceRequestParams value, $Res Function(PlaceRequestParams) then) =
      _$PlaceRequestParamsCopyWithImpl<$Res, PlaceRequestParams>;
  @useResult
  $Res call(
      {@JsonKey(name: 'place_id') int placeId,
      @JsonKey(name: 'area_id') int areaId});
}

/// @nodoc
class _$PlaceRequestParamsCopyWithImpl<$Res, $Val extends PlaceRequestParams>
    implements $PlaceRequestParamsCopyWith<$Res> {
  _$PlaceRequestParamsCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? placeId = null,
    Object? areaId = null,
  }) {
    return _then(_value.copyWith(
      placeId: null == placeId
          ? _value.placeId
          : placeId // ignore: cast_nullable_to_non_nullable
              as int,
      areaId: null == areaId
          ? _value.areaId
          : areaId // ignore: cast_nullable_to_non_nullable
              as int,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$PlaceRequestParamsImplCopyWith<$Res>
    implements $PlaceRequestParamsCopyWith<$Res> {
  factory _$$PlaceRequestParamsImplCopyWith(_$PlaceRequestParamsImpl value,
          $Res Function(_$PlaceRequestParamsImpl) then) =
      __$$PlaceRequestParamsImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {@JsonKey(name: 'place_id') int placeId,
      @JsonKey(name: 'area_id') int areaId});
}

/// @nodoc
class __$$PlaceRequestParamsImplCopyWithImpl<$Res>
    extends _$PlaceRequestParamsCopyWithImpl<$Res, _$PlaceRequestParamsImpl>
    implements _$$PlaceRequestParamsImplCopyWith<$Res> {
  __$$PlaceRequestParamsImplCopyWithImpl(_$PlaceRequestParamsImpl _value,
      $Res Function(_$PlaceRequestParamsImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? placeId = null,
    Object? areaId = null,
  }) {
    return _then(_$PlaceRequestParamsImpl(
      placeId: null == placeId
          ? _value.placeId
          : placeId // ignore: cast_nullable_to_non_nullable
              as int,
      areaId: null == areaId
          ? _value.areaId
          : areaId // ignore: cast_nullable_to_non_nullable
              as int,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$PlaceRequestParamsImpl implements _PlaceRequestParams {
  const _$PlaceRequestParamsImpl(
      {@JsonKey(name: 'place_id') required this.placeId,
      @JsonKey(name: 'area_id') required this.areaId});

  factory _$PlaceRequestParamsImpl.fromJson(Map<String, dynamic> json) =>
      _$$PlaceRequestParamsImplFromJson(json);

  @override
  @JsonKey(name: 'place_id')
  final int placeId;
  @override
  @JsonKey(name: 'area_id')
  final int areaId;

  @override
  String toString() {
    return 'PlaceRequestParams(placeId: $placeId, areaId: $areaId)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$PlaceRequestParamsImpl &&
            (identical(other.placeId, placeId) || other.placeId == placeId) &&
            (identical(other.areaId, areaId) || other.areaId == areaId));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, placeId, areaId);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$PlaceRequestParamsImplCopyWith<_$PlaceRequestParamsImpl> get copyWith =>
      __$$PlaceRequestParamsImplCopyWithImpl<_$PlaceRequestParamsImpl>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$PlaceRequestParamsImplToJson(
      this,
    );
  }
}

abstract class _PlaceRequestParams implements PlaceRequestParams {
  const factory _PlaceRequestParams(
          {@JsonKey(name: 'place_id') required final int placeId,
          @JsonKey(name: 'area_id') required final int areaId}) =
      _$PlaceRequestParamsImpl;

  factory _PlaceRequestParams.fromJson(Map<String, dynamic> json) =
      _$PlaceRequestParamsImpl.fromJson;

  @override
  @JsonKey(name: 'place_id')
  int get placeId;
  @override
  @JsonKey(name: 'area_id')
  int get areaId;
  @override
  @JsonKey(ignore: true)
  _$$PlaceRequestParamsImplCopyWith<_$PlaceRequestParamsImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
