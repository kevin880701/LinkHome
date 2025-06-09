// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'GetMsgResponse.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

GetMsgResponse _$GetMsgResponseFromJson(Map<String, dynamic> json) {
  return _GetMsgResponse.fromJson(json);
}

/// @nodoc
mixin _$GetMsgResponse {
  @JsonKey(name: 'msg_id')
  int get msgId => throw _privateConstructorUsedError;
  @JsonKey(name: 'user_id')
  int get userId => throw _privateConstructorUsedError;
  @JsonKey(name: 'type')
  int get type => throw _privateConstructorUsedError;
  @JsonKey(name: 'subject')
  String get subject => throw _privateConstructorUsedError;
  @JsonKey(name: 'body')
  String get body => throw _privateConstructorUsedError;
  @JsonKey(name: 'added_time')
  String get addedTime => throw _privateConstructorUsedError;
  @JsonKey(name: 'device_id')
  int? get deviceId => throw _privateConstructorUsedError;
  @JsonKey(name: 'm_id')
  int? get mId => throw _privateConstructorUsedError;
  @JsonKey(name: 'isread')
  int get isRead => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $GetMsgResponseCopyWith<GetMsgResponse> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $GetMsgResponseCopyWith<$Res> {
  factory $GetMsgResponseCopyWith(
          GetMsgResponse value, $Res Function(GetMsgResponse) then) =
      _$GetMsgResponseCopyWithImpl<$Res, GetMsgResponse>;
  @useResult
  $Res call(
      {@JsonKey(name: 'msg_id') int msgId,
      @JsonKey(name: 'user_id') int userId,
      @JsonKey(name: 'type') int type,
      @JsonKey(name: 'subject') String subject,
      @JsonKey(name: 'body') String body,
      @JsonKey(name: 'added_time') String addedTime,
      @JsonKey(name: 'device_id') int? deviceId,
      @JsonKey(name: 'm_id') int? mId,
      @JsonKey(name: 'isread') int isRead});
}

/// @nodoc
class _$GetMsgResponseCopyWithImpl<$Res, $Val extends GetMsgResponse>
    implements $GetMsgResponseCopyWith<$Res> {
  _$GetMsgResponseCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? msgId = null,
    Object? userId = null,
    Object? type = null,
    Object? subject = null,
    Object? body = null,
    Object? addedTime = null,
    Object? deviceId = freezed,
    Object? mId = freezed,
    Object? isRead = null,
  }) {
    return _then(_value.copyWith(
      msgId: null == msgId
          ? _value.msgId
          : msgId // ignore: cast_nullable_to_non_nullable
              as int,
      userId: null == userId
          ? _value.userId
          : userId // ignore: cast_nullable_to_non_nullable
              as int,
      type: null == type
          ? _value.type
          : type // ignore: cast_nullable_to_non_nullable
              as int,
      subject: null == subject
          ? _value.subject
          : subject // ignore: cast_nullable_to_non_nullable
              as String,
      body: null == body
          ? _value.body
          : body // ignore: cast_nullable_to_non_nullable
              as String,
      addedTime: null == addedTime
          ? _value.addedTime
          : addedTime // ignore: cast_nullable_to_non_nullable
              as String,
      deviceId: freezed == deviceId
          ? _value.deviceId
          : deviceId // ignore: cast_nullable_to_non_nullable
              as int?,
      mId: freezed == mId
          ? _value.mId
          : mId // ignore: cast_nullable_to_non_nullable
              as int?,
      isRead: null == isRead
          ? _value.isRead
          : isRead // ignore: cast_nullable_to_non_nullable
              as int,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$GetMsgResponseImplCopyWith<$Res>
    implements $GetMsgResponseCopyWith<$Res> {
  factory _$$GetMsgResponseImplCopyWith(_$GetMsgResponseImpl value,
          $Res Function(_$GetMsgResponseImpl) then) =
      __$$GetMsgResponseImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {@JsonKey(name: 'msg_id') int msgId,
      @JsonKey(name: 'user_id') int userId,
      @JsonKey(name: 'type') int type,
      @JsonKey(name: 'subject') String subject,
      @JsonKey(name: 'body') String body,
      @JsonKey(name: 'added_time') String addedTime,
      @JsonKey(name: 'device_id') int? deviceId,
      @JsonKey(name: 'm_id') int? mId,
      @JsonKey(name: 'isread') int isRead});
}

/// @nodoc
class __$$GetMsgResponseImplCopyWithImpl<$Res>
    extends _$GetMsgResponseCopyWithImpl<$Res, _$GetMsgResponseImpl>
    implements _$$GetMsgResponseImplCopyWith<$Res> {
  __$$GetMsgResponseImplCopyWithImpl(
      _$GetMsgResponseImpl _value, $Res Function(_$GetMsgResponseImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? msgId = null,
    Object? userId = null,
    Object? type = null,
    Object? subject = null,
    Object? body = null,
    Object? addedTime = null,
    Object? deviceId = freezed,
    Object? mId = freezed,
    Object? isRead = null,
  }) {
    return _then(_$GetMsgResponseImpl(
      msgId: null == msgId
          ? _value.msgId
          : msgId // ignore: cast_nullable_to_non_nullable
              as int,
      userId: null == userId
          ? _value.userId
          : userId // ignore: cast_nullable_to_non_nullable
              as int,
      type: null == type
          ? _value.type
          : type // ignore: cast_nullable_to_non_nullable
              as int,
      subject: null == subject
          ? _value.subject
          : subject // ignore: cast_nullable_to_non_nullable
              as String,
      body: null == body
          ? _value.body
          : body // ignore: cast_nullable_to_non_nullable
              as String,
      addedTime: null == addedTime
          ? _value.addedTime
          : addedTime // ignore: cast_nullable_to_non_nullable
              as String,
      deviceId: freezed == deviceId
          ? _value.deviceId
          : deviceId // ignore: cast_nullable_to_non_nullable
              as int?,
      mId: freezed == mId
          ? _value.mId
          : mId // ignore: cast_nullable_to_non_nullable
              as int?,
      isRead: null == isRead
          ? _value.isRead
          : isRead // ignore: cast_nullable_to_non_nullable
              as int,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$GetMsgResponseImpl implements _GetMsgResponse {
  const _$GetMsgResponseImpl(
      {@JsonKey(name: 'msg_id') required this.msgId,
      @JsonKey(name: 'user_id') required this.userId,
      @JsonKey(name: 'type') required this.type,
      @JsonKey(name: 'subject') required this.subject,
      @JsonKey(name: 'body') required this.body,
      @JsonKey(name: 'added_time') required this.addedTime,
      @JsonKey(name: 'device_id') this.deviceId,
      @JsonKey(name: 'm_id') this.mId,
      @JsonKey(name: 'isread') required this.isRead});

  factory _$GetMsgResponseImpl.fromJson(Map<String, dynamic> json) =>
      _$$GetMsgResponseImplFromJson(json);

  @override
  @JsonKey(name: 'msg_id')
  final int msgId;
  @override
  @JsonKey(name: 'user_id')
  final int userId;
  @override
  @JsonKey(name: 'type')
  final int type;
  @override
  @JsonKey(name: 'subject')
  final String subject;
  @override
  @JsonKey(name: 'body')
  final String body;
  @override
  @JsonKey(name: 'added_time')
  final String addedTime;
  @override
  @JsonKey(name: 'device_id')
  final int? deviceId;
  @override
  @JsonKey(name: 'm_id')
  final int? mId;
  @override
  @JsonKey(name: 'isread')
  final int isRead;

  @override
  String toString() {
    return 'GetMsgResponse(msgId: $msgId, userId: $userId, type: $type, subject: $subject, body: $body, addedTime: $addedTime, deviceId: $deviceId, mId: $mId, isRead: $isRead)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$GetMsgResponseImpl &&
            (identical(other.msgId, msgId) || other.msgId == msgId) &&
            (identical(other.userId, userId) || other.userId == userId) &&
            (identical(other.type, type) || other.type == type) &&
            (identical(other.subject, subject) || other.subject == subject) &&
            (identical(other.body, body) || other.body == body) &&
            (identical(other.addedTime, addedTime) ||
                other.addedTime == addedTime) &&
            (identical(other.deviceId, deviceId) ||
                other.deviceId == deviceId) &&
            (identical(other.mId, mId) || other.mId == mId) &&
            (identical(other.isRead, isRead) || other.isRead == isRead));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, msgId, userId, type, subject,
      body, addedTime, deviceId, mId, isRead);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$GetMsgResponseImplCopyWith<_$GetMsgResponseImpl> get copyWith =>
      __$$GetMsgResponseImplCopyWithImpl<_$GetMsgResponseImpl>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$GetMsgResponseImplToJson(
      this,
    );
  }
}

abstract class _GetMsgResponse implements GetMsgResponse {
  const factory _GetMsgResponse(
          {@JsonKey(name: 'msg_id') required final int msgId,
          @JsonKey(name: 'user_id') required final int userId,
          @JsonKey(name: 'type') required final int type,
          @JsonKey(name: 'subject') required final String subject,
          @JsonKey(name: 'body') required final String body,
          @JsonKey(name: 'added_time') required final String addedTime,
          @JsonKey(name: 'device_id') final int? deviceId,
          @JsonKey(name: 'm_id') final int? mId,
          @JsonKey(name: 'isread') required final int isRead}) =
      _$GetMsgResponseImpl;

  factory _GetMsgResponse.fromJson(Map<String, dynamic> json) =
      _$GetMsgResponseImpl.fromJson;

  @override
  @JsonKey(name: 'msg_id')
  int get msgId;
  @override
  @JsonKey(name: 'user_id')
  int get userId;
  @override
  @JsonKey(name: 'type')
  int get type;
  @override
  @JsonKey(name: 'subject')
  String get subject;
  @override
  @JsonKey(name: 'body')
  String get body;
  @override
  @JsonKey(name: 'added_time')
  String get addedTime;
  @override
  @JsonKey(name: 'device_id')
  int? get deviceId;
  @override
  @JsonKey(name: 'm_id')
  int? get mId;
  @override
  @JsonKey(name: 'isread')
  int get isRead;
  @override
  @JsonKey(ignore: true)
  _$$GetMsgResponseImplCopyWith<_$GetMsgResponseImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
