// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'PlaceDtlsResponse.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

PlaceDtlsResponse _$PlaceDtlsResponseFromJson(Map<String, dynamic> json) {
  return _PlaceDtlsResponse.fromJson(json);
}

/// @nodoc
mixin _$PlaceDtlsResponse {
  @JsonKey(name: 'place_id')
  int get placeId => throw _privateConstructorUsedError;
  @JsonKey(name: 'name')
  String get name => throw _privateConstructorUsedError;
  @JsonKey(name: 'user_id')
  int get userId => throw _privateConstructorUsedError;
  @JsonKey(name: 'area_count')
  int get areaCount => throw _privateConstructorUsedError;
  @JsonKey(name: 'share_count')
  int get shareCount => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $PlaceDtlsResponseCopyWith<PlaceDtlsResponse> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $PlaceDtlsResponseCopyWith<$Res> {
  factory $PlaceDtlsResponseCopyWith(
          PlaceDtlsResponse value, $Res Function(PlaceDtlsResponse) then) =
      _$PlaceDtlsResponseCopyWithImpl<$Res, PlaceDtlsResponse>;
  @useResult
  $Res call(
      {@JsonKey(name: 'place_id') int placeId,
      @JsonKey(name: 'name') String name,
      @JsonKey(name: 'user_id') int userId,
      @JsonKey(name: 'area_count') int areaCount,
      @JsonKey(name: 'share_count') int shareCount});
}

/// @nodoc
class _$PlaceDtlsResponseCopyWithImpl<$Res, $Val extends PlaceDtlsResponse>
    implements $PlaceDtlsResponseCopyWith<$Res> {
  _$PlaceDtlsResponseCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? placeId = null,
    Object? name = null,
    Object? userId = null,
    Object? areaCount = null,
    Object? shareCount = null,
  }) {
    return _then(_value.copyWith(
      placeId: null == placeId
          ? _value.placeId
          : placeId // ignore: cast_nullable_to_non_nullable
              as int,
      name: null == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
      userId: null == userId
          ? _value.userId
          : userId // ignore: cast_nullable_to_non_nullable
              as int,
      areaCount: null == areaCount
          ? _value.areaCount
          : areaCount // ignore: cast_nullable_to_non_nullable
              as int,
      shareCount: null == shareCount
          ? _value.shareCount
          : shareCount // ignore: cast_nullable_to_non_nullable
              as int,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$PlaceDtlsResponseImplCopyWith<$Res>
    implements $PlaceDtlsResponseCopyWith<$Res> {
  factory _$$PlaceDtlsResponseImplCopyWith(_$PlaceDtlsResponseImpl value,
          $Res Function(_$PlaceDtlsResponseImpl) then) =
      __$$PlaceDtlsResponseImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {@JsonKey(name: 'place_id') int placeId,
      @JsonKey(name: 'name') String name,
      @JsonKey(name: 'user_id') int userId,
      @JsonKey(name: 'area_count') int areaCount,
      @JsonKey(name: 'share_count') int shareCount});
}

/// @nodoc
class __$$PlaceDtlsResponseImplCopyWithImpl<$Res>
    extends _$PlaceDtlsResponseCopyWithImpl<$Res, _$PlaceDtlsResponseImpl>
    implements _$$PlaceDtlsResponseImplCopyWith<$Res> {
  __$$PlaceDtlsResponseImplCopyWithImpl(_$PlaceDtlsResponseImpl _value,
      $Res Function(_$PlaceDtlsResponseImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? placeId = null,
    Object? name = null,
    Object? userId = null,
    Object? areaCount = null,
    Object? shareCount = null,
  }) {
    return _then(_$PlaceDtlsResponseImpl(
      placeId: null == placeId
          ? _value.placeId
          : placeId // ignore: cast_nullable_to_non_nullable
              as int,
      name: null == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
      userId: null == userId
          ? _value.userId
          : userId // ignore: cast_nullable_to_non_nullable
              as int,
      areaCount: null == areaCount
          ? _value.areaCount
          : areaCount // ignore: cast_nullable_to_non_nullable
              as int,
      shareCount: null == shareCount
          ? _value.shareCount
          : shareCount // ignore: cast_nullable_to_non_nullable
              as int,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$PlaceDtlsResponseImpl implements _PlaceDtlsResponse {
  const _$PlaceDtlsResponseImpl(
      {@JsonKey(name: 'place_id') required this.placeId,
      @JsonKey(name: 'name') required this.name,
      @JsonKey(name: 'user_id') required this.userId,
      @JsonKey(name: 'area_count') required this.areaCount,
      @JsonKey(name: 'share_count') required this.shareCount});

  factory _$PlaceDtlsResponseImpl.fromJson(Map<String, dynamic> json) =>
      _$$PlaceDtlsResponseImplFromJson(json);

  @override
  @JsonKey(name: 'place_id')
  final int placeId;
  @override
  @JsonKey(name: 'name')
  final String name;
  @override
  @JsonKey(name: 'user_id')
  final int userId;
  @override
  @JsonKey(name: 'area_count')
  final int areaCount;
  @override
  @JsonKey(name: 'share_count')
  final int shareCount;

  @override
  String toString() {
    return 'PlaceDtlsResponse(placeId: $placeId, name: $name, userId: $userId, areaCount: $areaCount, shareCount: $shareCount)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$PlaceDtlsResponseImpl &&
            (identical(other.placeId, placeId) || other.placeId == placeId) &&
            (identical(other.name, name) || other.name == name) &&
            (identical(other.userId, userId) || other.userId == userId) &&
            (identical(other.areaCount, areaCount) ||
                other.areaCount == areaCount) &&
            (identical(other.shareCount, shareCount) ||
                other.shareCount == shareCount));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode =>
      Object.hash(runtimeType, placeId, name, userId, areaCount, shareCount);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$PlaceDtlsResponseImplCopyWith<_$PlaceDtlsResponseImpl> get copyWith =>
      __$$PlaceDtlsResponseImplCopyWithImpl<_$PlaceDtlsResponseImpl>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$PlaceDtlsResponseImplToJson(
      this,
    );
  }
}

abstract class _PlaceDtlsResponse implements PlaceDtlsResponse {
  const factory _PlaceDtlsResponse(
          {@JsonKey(name: 'place_id') required final int placeId,
          @JsonKey(name: 'name') required final String name,
          @JsonKey(name: 'user_id') required final int userId,
          @JsonKey(name: 'area_count') required final int areaCount,
          @JsonKey(name: 'share_count') required final int shareCount}) =
      _$PlaceDtlsResponseImpl;

  factory _PlaceDtlsResponse.fromJson(Map<String, dynamic> json) =
      _$PlaceDtlsResponseImpl.fromJson;

  @override
  @JsonKey(name: 'place_id')
  int get placeId;
  @override
  @JsonKey(name: 'name')
  String get name;
  @override
  @JsonKey(name: 'user_id')
  int get userId;
  @override
  @JsonKey(name: 'area_count')
  int get areaCount;
  @override
  @JsonKey(name: 'share_count')
  int get shareCount;
  @override
  @JsonKey(ignore: true)
  _$$PlaceDtlsResponseImplCopyWith<_$PlaceDtlsResponseImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
