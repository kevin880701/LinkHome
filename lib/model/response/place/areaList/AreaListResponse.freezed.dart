// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'AreaListResponse.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

AreaListResponse _$AreaListResponseFromJson(Map<String, dynamic> json) {
  return _AreaListResponse.fromJson(json);
}

/// @nodoc
mixin _$AreaListResponse {
  @JsonKey(name: 'area_id')
  int get areaId => throw _privateConstructorUsedError;
  @JsonKey(name: 'name')
  String get name => throw _privateConstructorUsedError;
  @JsonKey(name: 'place_id')
  int get placeId => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $AreaListResponseCopyWith<AreaListResponse> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $AreaListResponseCopyWith<$Res> {
  factory $AreaListResponseCopyWith(
          AreaListResponse value, $Res Function(AreaListResponse) then) =
      _$AreaListResponseCopyWithImpl<$Res, AreaListResponse>;
  @useResult
  $Res call(
      {@JsonKey(name: 'area_id') int areaId,
      @JsonKey(name: 'name') String name,
      @JsonKey(name: 'place_id') int placeId});
}

/// @nodoc
class _$AreaListResponseCopyWithImpl<$Res, $Val extends AreaListResponse>
    implements $AreaListResponseCopyWith<$Res> {
  _$AreaListResponseCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? areaId = null,
    Object? name = null,
    Object? placeId = null,
  }) {
    return _then(_value.copyWith(
      areaId: null == areaId
          ? _value.areaId
          : areaId // ignore: cast_nullable_to_non_nullable
              as int,
      name: null == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
      placeId: null == placeId
          ? _value.placeId
          : placeId // ignore: cast_nullable_to_non_nullable
              as int,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$AreaListResponseImplCopyWith<$Res>
    implements $AreaListResponseCopyWith<$Res> {
  factory _$$AreaListResponseImplCopyWith(_$AreaListResponseImpl value,
          $Res Function(_$AreaListResponseImpl) then) =
      __$$AreaListResponseImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {@JsonKey(name: 'area_id') int areaId,
      @JsonKey(name: 'name') String name,
      @JsonKey(name: 'place_id') int placeId});
}

/// @nodoc
class __$$AreaListResponseImplCopyWithImpl<$Res>
    extends _$AreaListResponseCopyWithImpl<$Res, _$AreaListResponseImpl>
    implements _$$AreaListResponseImplCopyWith<$Res> {
  __$$AreaListResponseImplCopyWithImpl(_$AreaListResponseImpl _value,
      $Res Function(_$AreaListResponseImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? areaId = null,
    Object? name = null,
    Object? placeId = null,
  }) {
    return _then(_$AreaListResponseImpl(
      areaId: null == areaId
          ? _value.areaId
          : areaId // ignore: cast_nullable_to_non_nullable
              as int,
      name: null == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
      placeId: null == placeId
          ? _value.placeId
          : placeId // ignore: cast_nullable_to_non_nullable
              as int,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$AreaListResponseImpl implements _AreaListResponse {
  const _$AreaListResponseImpl(
      {@JsonKey(name: 'area_id') required this.areaId,
      @JsonKey(name: 'name') required this.name,
      @JsonKey(name: 'place_id') required this.placeId});

  factory _$AreaListResponseImpl.fromJson(Map<String, dynamic> json) =>
      _$$AreaListResponseImplFromJson(json);

  @override
  @JsonKey(name: 'area_id')
  final int areaId;
  @override
  @JsonKey(name: 'name')
  final String name;
  @override
  @JsonKey(name: 'place_id')
  final int placeId;

  @override
  String toString() {
    return 'AreaListResponse(areaId: $areaId, name: $name, placeId: $placeId)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$AreaListResponseImpl &&
            (identical(other.areaId, areaId) || other.areaId == areaId) &&
            (identical(other.name, name) || other.name == name) &&
            (identical(other.placeId, placeId) || other.placeId == placeId));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, areaId, name, placeId);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$AreaListResponseImplCopyWith<_$AreaListResponseImpl> get copyWith =>
      __$$AreaListResponseImplCopyWithImpl<_$AreaListResponseImpl>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$AreaListResponseImplToJson(
      this,
    );
  }
}

abstract class _AreaListResponse implements AreaListResponse {
  const factory _AreaListResponse(
          {@JsonKey(name: 'area_id') required final int areaId,
          @JsonKey(name: 'name') required final String name,
          @JsonKey(name: 'place_id') required final int placeId}) =
      _$AreaListResponseImpl;

  factory _AreaListResponse.fromJson(Map<String, dynamic> json) =
      _$AreaListResponseImpl.fromJson;

  @override
  @JsonKey(name: 'area_id')
  int get areaId;
  @override
  @JsonKey(name: 'name')
  String get name;
  @override
  @JsonKey(name: 'place_id')
  int get placeId;
  @override
  @JsonKey(ignore: true)
  _$$AreaListResponseImplCopyWith<_$AreaListResponseImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
