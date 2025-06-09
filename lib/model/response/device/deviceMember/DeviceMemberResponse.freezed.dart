// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'DeviceMemberResponse.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

DeviceMemberResponse _$DeviceMemberResponseFromJson(Map<String, dynamic> json) {
  return _DeviceMemberResponse.fromJson(json);
}

/// @nodoc
mixin _$DeviceMemberResponse {
  @JsonKey(name: 'user_id')
  int get userId => throw _privateConstructorUsedError;
  @JsonKey(name: 'name')
  String? get name => throw _privateConstructorUsedError;
  @JsonKey(name: 'account')
  String get account => throw _privateConstructorUsedError;
  @JsonKey(name: 'device_num')
  int get deviceNum => throw _privateConstructorUsedError;
  @JsonKey(name: 'invite')
  bool get invite => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $DeviceMemberResponseCopyWith<DeviceMemberResponse> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $DeviceMemberResponseCopyWith<$Res> {
  factory $DeviceMemberResponseCopyWith(DeviceMemberResponse value,
          $Res Function(DeviceMemberResponse) then) =
      _$DeviceMemberResponseCopyWithImpl<$Res, DeviceMemberResponse>;
  @useResult
  $Res call(
      {@JsonKey(name: 'user_id') int userId,
      @JsonKey(name: 'name') String? name,
      @JsonKey(name: 'account') String account,
      @JsonKey(name: 'device_num') int deviceNum,
      @JsonKey(name: 'invite') bool invite});
}

/// @nodoc
class _$DeviceMemberResponseCopyWithImpl<$Res,
        $Val extends DeviceMemberResponse>
    implements $DeviceMemberResponseCopyWith<$Res> {
  _$DeviceMemberResponseCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? userId = null,
    Object? name = freezed,
    Object? account = null,
    Object? deviceNum = null,
    Object? invite = null,
  }) {
    return _then(_value.copyWith(
      userId: null == userId
          ? _value.userId
          : userId // ignore: cast_nullable_to_non_nullable
              as int,
      name: freezed == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String?,
      account: null == account
          ? _value.account
          : account // ignore: cast_nullable_to_non_nullable
              as String,
      deviceNum: null == deviceNum
          ? _value.deviceNum
          : deviceNum // ignore: cast_nullable_to_non_nullable
              as int,
      invite: null == invite
          ? _value.invite
          : invite // ignore: cast_nullable_to_non_nullable
              as bool,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$DeviceMemberResponseImplCopyWith<$Res>
    implements $DeviceMemberResponseCopyWith<$Res> {
  factory _$$DeviceMemberResponseImplCopyWith(_$DeviceMemberResponseImpl value,
          $Res Function(_$DeviceMemberResponseImpl) then) =
      __$$DeviceMemberResponseImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {@JsonKey(name: 'user_id') int userId,
      @JsonKey(name: 'name') String? name,
      @JsonKey(name: 'account') String account,
      @JsonKey(name: 'device_num') int deviceNum,
      @JsonKey(name: 'invite') bool invite});
}

/// @nodoc
class __$$DeviceMemberResponseImplCopyWithImpl<$Res>
    extends _$DeviceMemberResponseCopyWithImpl<$Res, _$DeviceMemberResponseImpl>
    implements _$$DeviceMemberResponseImplCopyWith<$Res> {
  __$$DeviceMemberResponseImplCopyWithImpl(_$DeviceMemberResponseImpl _value,
      $Res Function(_$DeviceMemberResponseImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? userId = null,
    Object? name = freezed,
    Object? account = null,
    Object? deviceNum = null,
    Object? invite = null,
  }) {
    return _then(_$DeviceMemberResponseImpl(
      userId: null == userId
          ? _value.userId
          : userId // ignore: cast_nullable_to_non_nullable
              as int,
      name: freezed == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String?,
      account: null == account
          ? _value.account
          : account // ignore: cast_nullable_to_non_nullable
              as String,
      deviceNum: null == deviceNum
          ? _value.deviceNum
          : deviceNum // ignore: cast_nullable_to_non_nullable
              as int,
      invite: null == invite
          ? _value.invite
          : invite // ignore: cast_nullable_to_non_nullable
              as bool,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$DeviceMemberResponseImpl implements _DeviceMemberResponse {
  const _$DeviceMemberResponseImpl(
      {@JsonKey(name: 'user_id') required this.userId,
      @JsonKey(name: 'name') this.name,
      @JsonKey(name: 'account') required this.account,
      @JsonKey(name: 'device_num') required this.deviceNum,
      @JsonKey(name: 'invite') required this.invite});

  factory _$DeviceMemberResponseImpl.fromJson(Map<String, dynamic> json) =>
      _$$DeviceMemberResponseImplFromJson(json);

  @override
  @JsonKey(name: 'user_id')
  final int userId;
  @override
  @JsonKey(name: 'name')
  final String? name;
  @override
  @JsonKey(name: 'account')
  final String account;
  @override
  @JsonKey(name: 'device_num')
  final int deviceNum;
  @override
  @JsonKey(name: 'invite')
  final bool invite;

  @override
  String toString() {
    return 'DeviceMemberResponse(userId: $userId, name: $name, account: $account, deviceNum: $deviceNum, invite: $invite)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$DeviceMemberResponseImpl &&
            (identical(other.userId, userId) || other.userId == userId) &&
            (identical(other.name, name) || other.name == name) &&
            (identical(other.account, account) || other.account == account) &&
            (identical(other.deviceNum, deviceNum) ||
                other.deviceNum == deviceNum) &&
            (identical(other.invite, invite) || other.invite == invite));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode =>
      Object.hash(runtimeType, userId, name, account, deviceNum, invite);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$DeviceMemberResponseImplCopyWith<_$DeviceMemberResponseImpl>
      get copyWith =>
          __$$DeviceMemberResponseImplCopyWithImpl<_$DeviceMemberResponseImpl>(
              this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$DeviceMemberResponseImplToJson(
      this,
    );
  }
}

abstract class _DeviceMemberResponse implements DeviceMemberResponse {
  const factory _DeviceMemberResponse(
          {@JsonKey(name: 'user_id') required final int userId,
          @JsonKey(name: 'name') final String? name,
          @JsonKey(name: 'account') required final String account,
          @JsonKey(name: 'device_num') required final int deviceNum,
          @JsonKey(name: 'invite') required final bool invite}) =
      _$DeviceMemberResponseImpl;

  factory _DeviceMemberResponse.fromJson(Map<String, dynamic> json) =
      _$DeviceMemberResponseImpl.fromJson;

  @override
  @JsonKey(name: 'user_id')
  int get userId;
  @override
  @JsonKey(name: 'name')
  String? get name;
  @override
  @JsonKey(name: 'account')
  String get account;
  @override
  @JsonKey(name: 'device_num')
  int get deviceNum;
  @override
  @JsonKey(name: 'invite')
  bool get invite;
  @override
  @JsonKey(ignore: true)
  _$$DeviceMemberResponseImplCopyWith<_$DeviceMemberResponseImpl>
      get copyWith => throw _privateConstructorUsedError;
}
