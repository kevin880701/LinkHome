// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'SetDeviceShareRequestBody.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

SetDeviceShareRequestBody _$SetDeviceShareRequestBodyFromJson(
    Map<String, dynamic> json) {
  return _SetDeviceShareRequestBody.fromJson(json);
}

/// @nodoc
mixin _$SetDeviceShareRequestBody {
  @JsonKey(name: 'device_id')
  int get deviceId => throw _privateConstructorUsedError;
  @JsonKey(name: 'share')
  bool get share => throw _privateConstructorUsedError;
  @JsonKey(name: 'user_id')
  int get userId => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $SetDeviceShareRequestBodyCopyWith<SetDeviceShareRequestBody> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $SetDeviceShareRequestBodyCopyWith<$Res> {
  factory $SetDeviceShareRequestBodyCopyWith(SetDeviceShareRequestBody value,
          $Res Function(SetDeviceShareRequestBody) then) =
      _$SetDeviceShareRequestBodyCopyWithImpl<$Res, SetDeviceShareRequestBody>;
  @useResult
  $Res call(
      {@JsonKey(name: 'device_id') int deviceId,
      @JsonKey(name: 'share') bool share,
      @JsonKey(name: 'user_id') int userId});
}

/// @nodoc
class _$SetDeviceShareRequestBodyCopyWithImpl<$Res,
        $Val extends SetDeviceShareRequestBody>
    implements $SetDeviceShareRequestBodyCopyWith<$Res> {
  _$SetDeviceShareRequestBodyCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? deviceId = null,
    Object? share = null,
    Object? userId = null,
  }) {
    return _then(_value.copyWith(
      deviceId: null == deviceId
          ? _value.deviceId
          : deviceId // ignore: cast_nullable_to_non_nullable
              as int,
      share: null == share
          ? _value.share
          : share // ignore: cast_nullable_to_non_nullable
              as bool,
      userId: null == userId
          ? _value.userId
          : userId // ignore: cast_nullable_to_non_nullable
              as int,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$SetDeviceShareRequestBodyImplCopyWith<$Res>
    implements $SetDeviceShareRequestBodyCopyWith<$Res> {
  factory _$$SetDeviceShareRequestBodyImplCopyWith(
          _$SetDeviceShareRequestBodyImpl value,
          $Res Function(_$SetDeviceShareRequestBodyImpl) then) =
      __$$SetDeviceShareRequestBodyImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {@JsonKey(name: 'device_id') int deviceId,
      @JsonKey(name: 'share') bool share,
      @JsonKey(name: 'user_id') int userId});
}

/// @nodoc
class __$$SetDeviceShareRequestBodyImplCopyWithImpl<$Res>
    extends _$SetDeviceShareRequestBodyCopyWithImpl<$Res,
        _$SetDeviceShareRequestBodyImpl>
    implements _$$SetDeviceShareRequestBodyImplCopyWith<$Res> {
  __$$SetDeviceShareRequestBodyImplCopyWithImpl(
      _$SetDeviceShareRequestBodyImpl _value,
      $Res Function(_$SetDeviceShareRequestBodyImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? deviceId = null,
    Object? share = null,
    Object? userId = null,
  }) {
    return _then(_$SetDeviceShareRequestBodyImpl(
      deviceId: null == deviceId
          ? _value.deviceId
          : deviceId // ignore: cast_nullable_to_non_nullable
              as int,
      share: null == share
          ? _value.share
          : share // ignore: cast_nullable_to_non_nullable
              as bool,
      userId: null == userId
          ? _value.userId
          : userId // ignore: cast_nullable_to_non_nullable
              as int,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$SetDeviceShareRequestBodyImpl implements _SetDeviceShareRequestBody {
  const _$SetDeviceShareRequestBodyImpl(
      {@JsonKey(name: 'device_id') required this.deviceId,
      @JsonKey(name: 'share') required this.share,
      @JsonKey(name: 'user_id') required this.userId});

  factory _$SetDeviceShareRequestBodyImpl.fromJson(Map<String, dynamic> json) =>
      _$$SetDeviceShareRequestBodyImplFromJson(json);

  @override
  @JsonKey(name: 'device_id')
  final int deviceId;
  @override
  @JsonKey(name: 'share')
  final bool share;
  @override
  @JsonKey(name: 'user_id')
  final int userId;

  @override
  String toString() {
    return 'SetDeviceShareRequestBody(deviceId: $deviceId, share: $share, userId: $userId)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$SetDeviceShareRequestBodyImpl &&
            (identical(other.deviceId, deviceId) ||
                other.deviceId == deviceId) &&
            (identical(other.share, share) || other.share == share) &&
            (identical(other.userId, userId) || other.userId == userId));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, deviceId, share, userId);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$SetDeviceShareRequestBodyImplCopyWith<_$SetDeviceShareRequestBodyImpl>
      get copyWith => __$$SetDeviceShareRequestBodyImplCopyWithImpl<
          _$SetDeviceShareRequestBodyImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$SetDeviceShareRequestBodyImplToJson(
      this,
    );
  }
}

abstract class _SetDeviceShareRequestBody implements SetDeviceShareRequestBody {
  const factory _SetDeviceShareRequestBody(
          {@JsonKey(name: 'device_id') required final int deviceId,
          @JsonKey(name: 'share') required final bool share,
          @JsonKey(name: 'user_id') required final int userId}) =
      _$SetDeviceShareRequestBodyImpl;

  factory _SetDeviceShareRequestBody.fromJson(Map<String, dynamic> json) =
      _$SetDeviceShareRequestBodyImpl.fromJson;

  @override
  @JsonKey(name: 'device_id')
  int get deviceId;
  @override
  @JsonKey(name: 'share')
  bool get share;
  @override
  @JsonKey(name: 'user_id')
  int get userId;
  @override
  @JsonKey(ignore: true)
  _$$SetDeviceShareRequestBodyImplCopyWith<_$SetDeviceShareRequestBodyImpl>
      get copyWith => throw _privateConstructorUsedError;
}
