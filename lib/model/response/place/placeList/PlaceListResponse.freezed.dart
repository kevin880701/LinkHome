// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'PlaceListResponse.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

PlaceListResponse _$PlaceListResponseFromJson(Map<String, dynamic> json) {
  return _PlaceListResponse.fromJson(json);
}

/// @nodoc
mixin _$PlaceListResponse {
  @JsonKey(name: 'place_id')
  int get placeId => throw _privateConstructorUsedError;
  @JsonKey(name: 'name')
  String get name => throw _privateConstructorUsedError;
  @JsonKey(name: 'user_id')
  int get userId => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $PlaceListResponseCopyWith<PlaceListResponse> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $PlaceListResponseCopyWith<$Res> {
  factory $PlaceListResponseCopyWith(
          PlaceListResponse value, $Res Function(PlaceListResponse) then) =
      _$PlaceListResponseCopyWithImpl<$Res, PlaceListResponse>;
  @useResult
  $Res call(
      {@JsonKey(name: 'place_id') int placeId,
      @JsonKey(name: 'name') String name,
      @JsonKey(name: 'user_id') int userId});
}

/// @nodoc
class _$PlaceListResponseCopyWithImpl<$Res, $Val extends PlaceListResponse>
    implements $PlaceListResponseCopyWith<$Res> {
  _$PlaceListResponseCopyWithImpl(this._value, this._then);

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
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$PlaceListResponseImplCopyWith<$Res>
    implements $PlaceListResponseCopyWith<$Res> {
  factory _$$PlaceListResponseImplCopyWith(_$PlaceListResponseImpl value,
          $Res Function(_$PlaceListResponseImpl) then) =
      __$$PlaceListResponseImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {@JsonKey(name: 'place_id') int placeId,
      @JsonKey(name: 'name') String name,
      @JsonKey(name: 'user_id') int userId});
}

/// @nodoc
class __$$PlaceListResponseImplCopyWithImpl<$Res>
    extends _$PlaceListResponseCopyWithImpl<$Res, _$PlaceListResponseImpl>
    implements _$$PlaceListResponseImplCopyWith<$Res> {
  __$$PlaceListResponseImplCopyWithImpl(_$PlaceListResponseImpl _value,
      $Res Function(_$PlaceListResponseImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? placeId = null,
    Object? name = null,
    Object? userId = null,
  }) {
    return _then(_$PlaceListResponseImpl(
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
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$PlaceListResponseImpl implements _PlaceListResponse {
  const _$PlaceListResponseImpl(
      {@JsonKey(name: 'place_id') required this.placeId,
      @JsonKey(name: 'name') required this.name,
      @JsonKey(name: 'user_id') required this.userId});

  factory _$PlaceListResponseImpl.fromJson(Map<String, dynamic> json) =>
      _$$PlaceListResponseImplFromJson(json);

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
  String toString() {
    return 'PlaceListResponse(placeId: $placeId, name: $name, userId: $userId)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$PlaceListResponseImpl &&
            (identical(other.placeId, placeId) || other.placeId == placeId) &&
            (identical(other.name, name) || other.name == name) &&
            (identical(other.userId, userId) || other.userId == userId));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, placeId, name, userId);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$PlaceListResponseImplCopyWith<_$PlaceListResponseImpl> get copyWith =>
      __$$PlaceListResponseImplCopyWithImpl<_$PlaceListResponseImpl>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$PlaceListResponseImplToJson(
      this,
    );
  }
}

abstract class _PlaceListResponse implements PlaceListResponse {
  const factory _PlaceListResponse(
          {@JsonKey(name: 'place_id') required final int placeId,
          @JsonKey(name: 'name') required final String name,
          @JsonKey(name: 'user_id') required final int userId}) =
      _$PlaceListResponseImpl;

  factory _PlaceListResponse.fromJson(Map<String, dynamic> json) =
      _$PlaceListResponseImpl.fromJson;

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
  @JsonKey(ignore: true)
  _$$PlaceListResponseImplCopyWith<_$PlaceListResponseImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
