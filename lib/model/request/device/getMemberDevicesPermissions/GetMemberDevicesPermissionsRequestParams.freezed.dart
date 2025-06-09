// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'GetMemberDevicesPermissionsRequestParams.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

GetMemberDevicesPermissionsRequestParams
    _$GetMemberDevicesPermissionsRequestParamsFromJson(
        Map<String, dynamic> json) {
  return _GetMemberDevicesPermissionsRequestParams.fromJson(json);
}

/// @nodoc
mixin _$GetMemberDevicesPermissionsRequestParams {
  @JsonKey(name: 'place_id')
  int get placeId => throw _privateConstructorUsedError;
  @JsonKey(name: 'user_id')
  int get userId => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $GetMemberDevicesPermissionsRequestParamsCopyWith<
          GetMemberDevicesPermissionsRequestParams>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $GetMemberDevicesPermissionsRequestParamsCopyWith<$Res> {
  factory $GetMemberDevicesPermissionsRequestParamsCopyWith(
          GetMemberDevicesPermissionsRequestParams value,
          $Res Function(GetMemberDevicesPermissionsRequestParams) then) =
      _$GetMemberDevicesPermissionsRequestParamsCopyWithImpl<$Res,
          GetMemberDevicesPermissionsRequestParams>;
  @useResult
  $Res call(
      {@JsonKey(name: 'place_id') int placeId,
      @JsonKey(name: 'user_id') int userId});
}

/// @nodoc
class _$GetMemberDevicesPermissionsRequestParamsCopyWithImpl<$Res,
        $Val extends GetMemberDevicesPermissionsRequestParams>
    implements $GetMemberDevicesPermissionsRequestParamsCopyWith<$Res> {
  _$GetMemberDevicesPermissionsRequestParamsCopyWithImpl(
      this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? placeId = null,
    Object? userId = null,
  }) {
    return _then(_value.copyWith(
      placeId: null == placeId
          ? _value.placeId
          : placeId // ignore: cast_nullable_to_non_nullable
              as int,
      userId: null == userId
          ? _value.userId
          : userId // ignore: cast_nullable_to_non_nullable
              as int,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$GetMemberDevicesPermissionsRequestParamsImplCopyWith<$Res>
    implements $GetMemberDevicesPermissionsRequestParamsCopyWith<$Res> {
  factory _$$GetMemberDevicesPermissionsRequestParamsImplCopyWith(
          _$GetMemberDevicesPermissionsRequestParamsImpl value,
          $Res Function(_$GetMemberDevicesPermissionsRequestParamsImpl) then) =
      __$$GetMemberDevicesPermissionsRequestParamsImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {@JsonKey(name: 'place_id') int placeId,
      @JsonKey(name: 'user_id') int userId});
}

/// @nodoc
class __$$GetMemberDevicesPermissionsRequestParamsImplCopyWithImpl<$Res>
    extends _$GetMemberDevicesPermissionsRequestParamsCopyWithImpl<$Res,
        _$GetMemberDevicesPermissionsRequestParamsImpl>
    implements _$$GetMemberDevicesPermissionsRequestParamsImplCopyWith<$Res> {
  __$$GetMemberDevicesPermissionsRequestParamsImplCopyWithImpl(
      _$GetMemberDevicesPermissionsRequestParamsImpl _value,
      $Res Function(_$GetMemberDevicesPermissionsRequestParamsImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? placeId = null,
    Object? userId = null,
  }) {
    return _then(_$GetMemberDevicesPermissionsRequestParamsImpl(
      placeId: null == placeId
          ? _value.placeId
          : placeId // ignore: cast_nullable_to_non_nullable
              as int,
      userId: null == userId
          ? _value.userId
          : userId // ignore: cast_nullable_to_non_nullable
              as int,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$GetMemberDevicesPermissionsRequestParamsImpl
    implements _GetMemberDevicesPermissionsRequestParams {
  const _$GetMemberDevicesPermissionsRequestParamsImpl(
      {@JsonKey(name: 'place_id') required this.placeId,
      @JsonKey(name: 'user_id') required this.userId});

  factory _$GetMemberDevicesPermissionsRequestParamsImpl.fromJson(
          Map<String, dynamic> json) =>
      _$$GetMemberDevicesPermissionsRequestParamsImplFromJson(json);

  @override
  @JsonKey(name: 'place_id')
  final int placeId;
  @override
  @JsonKey(name: 'user_id')
  final int userId;

  @override
  String toString() {
    return 'GetMemberDevicesPermissionsRequestParams(placeId: $placeId, userId: $userId)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$GetMemberDevicesPermissionsRequestParamsImpl &&
            (identical(other.placeId, placeId) || other.placeId == placeId) &&
            (identical(other.userId, userId) || other.userId == userId));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, placeId, userId);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$GetMemberDevicesPermissionsRequestParamsImplCopyWith<
          _$GetMemberDevicesPermissionsRequestParamsImpl>
      get copyWith =>
          __$$GetMemberDevicesPermissionsRequestParamsImplCopyWithImpl<
              _$GetMemberDevicesPermissionsRequestParamsImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$GetMemberDevicesPermissionsRequestParamsImplToJson(
      this,
    );
  }
}

abstract class _GetMemberDevicesPermissionsRequestParams
    implements GetMemberDevicesPermissionsRequestParams {
  const factory _GetMemberDevicesPermissionsRequestParams(
          {@JsonKey(name: 'place_id') required final int placeId,
          @JsonKey(name: 'user_id') required final int userId}) =
      _$GetMemberDevicesPermissionsRequestParamsImpl;

  factory _GetMemberDevicesPermissionsRequestParams.fromJson(
          Map<String, dynamic> json) =
      _$GetMemberDevicesPermissionsRequestParamsImpl.fromJson;

  @override
  @JsonKey(name: 'place_id')
  int get placeId;
  @override
  @JsonKey(name: 'user_id')
  int get userId;
  @override
  @JsonKey(ignore: true)
  _$$GetMemberDevicesPermissionsRequestParamsImplCopyWith<
          _$GetMemberDevicesPermissionsRequestParamsImpl>
      get copyWith => throw _privateConstructorUsedError;
}
