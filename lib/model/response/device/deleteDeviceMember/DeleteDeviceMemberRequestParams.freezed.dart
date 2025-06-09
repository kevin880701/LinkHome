// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'DeleteDeviceMemberRequestParams.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

DeleteDeviceMemberRequestParams _$DeleteDeviceMemberRequestParamsFromJson(
    Map<String, dynamic> json) {
  return _DeleteDeviceMemberRequestParams.fromJson(json);
}

/// @nodoc
mixin _$DeleteDeviceMemberRequestParams {
  @JsonKey(name: 'place_id')
  int get placeId => throw _privateConstructorUsedError;
  @JsonKey(name: 'user_id')
  int get userId => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $DeleteDeviceMemberRequestParamsCopyWith<DeleteDeviceMemberRequestParams>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $DeleteDeviceMemberRequestParamsCopyWith<$Res> {
  factory $DeleteDeviceMemberRequestParamsCopyWith(
          DeleteDeviceMemberRequestParams value,
          $Res Function(DeleteDeviceMemberRequestParams) then) =
      _$DeleteDeviceMemberRequestParamsCopyWithImpl<$Res,
          DeleteDeviceMemberRequestParams>;
  @useResult
  $Res call(
      {@JsonKey(name: 'place_id') int placeId,
      @JsonKey(name: 'user_id') int userId});
}

/// @nodoc
class _$DeleteDeviceMemberRequestParamsCopyWithImpl<$Res,
        $Val extends DeleteDeviceMemberRequestParams>
    implements $DeleteDeviceMemberRequestParamsCopyWith<$Res> {
  _$DeleteDeviceMemberRequestParamsCopyWithImpl(this._value, this._then);

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
abstract class _$$DeleteDeviceMemberRequestParamsImplCopyWith<$Res>
    implements $DeleteDeviceMemberRequestParamsCopyWith<$Res> {
  factory _$$DeleteDeviceMemberRequestParamsImplCopyWith(
          _$DeleteDeviceMemberRequestParamsImpl value,
          $Res Function(_$DeleteDeviceMemberRequestParamsImpl) then) =
      __$$DeleteDeviceMemberRequestParamsImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {@JsonKey(name: 'place_id') int placeId,
      @JsonKey(name: 'user_id') int userId});
}

/// @nodoc
class __$$DeleteDeviceMemberRequestParamsImplCopyWithImpl<$Res>
    extends _$DeleteDeviceMemberRequestParamsCopyWithImpl<$Res,
        _$DeleteDeviceMemberRequestParamsImpl>
    implements _$$DeleteDeviceMemberRequestParamsImplCopyWith<$Res> {
  __$$DeleteDeviceMemberRequestParamsImplCopyWithImpl(
      _$DeleteDeviceMemberRequestParamsImpl _value,
      $Res Function(_$DeleteDeviceMemberRequestParamsImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? placeId = null,
    Object? userId = null,
  }) {
    return _then(_$DeleteDeviceMemberRequestParamsImpl(
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
class _$DeleteDeviceMemberRequestParamsImpl
    implements _DeleteDeviceMemberRequestParams {
  const _$DeleteDeviceMemberRequestParamsImpl(
      {@JsonKey(name: 'place_id') required this.placeId,
      @JsonKey(name: 'user_id') required this.userId});

  factory _$DeleteDeviceMemberRequestParamsImpl.fromJson(
          Map<String, dynamic> json) =>
      _$$DeleteDeviceMemberRequestParamsImplFromJson(json);

  @override
  @JsonKey(name: 'place_id')
  final int placeId;
  @override
  @JsonKey(name: 'user_id')
  final int userId;

  @override
  String toString() {
    return 'DeleteDeviceMemberRequestParams(placeId: $placeId, userId: $userId)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$DeleteDeviceMemberRequestParamsImpl &&
            (identical(other.placeId, placeId) || other.placeId == placeId) &&
            (identical(other.userId, userId) || other.userId == userId));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, placeId, userId);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$DeleteDeviceMemberRequestParamsImplCopyWith<
          _$DeleteDeviceMemberRequestParamsImpl>
      get copyWith => __$$DeleteDeviceMemberRequestParamsImplCopyWithImpl<
          _$DeleteDeviceMemberRequestParamsImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$DeleteDeviceMemberRequestParamsImplToJson(
      this,
    );
  }
}

abstract class _DeleteDeviceMemberRequestParams
    implements DeleteDeviceMemberRequestParams {
  const factory _DeleteDeviceMemberRequestParams(
          {@JsonKey(name: 'place_id') required final int placeId,
          @JsonKey(name: 'user_id') required final int userId}) =
      _$DeleteDeviceMemberRequestParamsImpl;

  factory _DeleteDeviceMemberRequestParams.fromJson(Map<String, dynamic> json) =
      _$DeleteDeviceMemberRequestParamsImpl.fromJson;

  @override
  @JsonKey(name: 'place_id')
  int get placeId;
  @override
  @JsonKey(name: 'user_id')
  int get userId;
  @override
  @JsonKey(ignore: true)
  _$$DeleteDeviceMemberRequestParamsImplCopyWith<
          _$DeleteDeviceMemberRequestParamsImpl>
      get copyWith => throw _privateConstructorUsedError;
}
