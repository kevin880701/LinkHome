// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'EngineerTaskResponse.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

EngineerTaskResponse _$EngineerTaskResponseFromJson(Map<String, dynamic> json) {
  return _EngineerTaskResponse.fromJson(json);
}

/// @nodoc
mixin _$EngineerTaskResponse {
  @JsonKey(name: 'device_id')
  String get deviceId => throw _privateConstructorUsedError;
  @JsonKey(name: 'body')
  String get body => throw _privateConstructorUsedError;
  @JsonKey(name: 'title')
  String get title => throw _privateConstructorUsedError;
  @JsonKey(name: 'm_id')
  String get mId => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $EngineerTaskResponseCopyWith<EngineerTaskResponse> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $EngineerTaskResponseCopyWith<$Res> {
  factory $EngineerTaskResponseCopyWith(EngineerTaskResponse value,
          $Res Function(EngineerTaskResponse) then) =
      _$EngineerTaskResponseCopyWithImpl<$Res, EngineerTaskResponse>;
  @useResult
  $Res call(
      {@JsonKey(name: 'device_id') String deviceId,
      @JsonKey(name: 'body') String body,
      @JsonKey(name: 'title') String title,
      @JsonKey(name: 'm_id') String mId});
}

/// @nodoc
class _$EngineerTaskResponseCopyWithImpl<$Res,
        $Val extends EngineerTaskResponse>
    implements $EngineerTaskResponseCopyWith<$Res> {
  _$EngineerTaskResponseCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? deviceId = null,
    Object? body = null,
    Object? title = null,
    Object? mId = null,
  }) {
    return _then(_value.copyWith(
      deviceId: null == deviceId
          ? _value.deviceId
          : deviceId // ignore: cast_nullable_to_non_nullable
              as String,
      body: null == body
          ? _value.body
          : body // ignore: cast_nullable_to_non_nullable
              as String,
      title: null == title
          ? _value.title
          : title // ignore: cast_nullable_to_non_nullable
              as String,
      mId: null == mId
          ? _value.mId
          : mId // ignore: cast_nullable_to_non_nullable
              as String,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$EngineerTaskResponseImplCopyWith<$Res>
    implements $EngineerTaskResponseCopyWith<$Res> {
  factory _$$EngineerTaskResponseImplCopyWith(_$EngineerTaskResponseImpl value,
          $Res Function(_$EngineerTaskResponseImpl) then) =
      __$$EngineerTaskResponseImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {@JsonKey(name: 'device_id') String deviceId,
      @JsonKey(name: 'body') String body,
      @JsonKey(name: 'title') String title,
      @JsonKey(name: 'm_id') String mId});
}

/// @nodoc
class __$$EngineerTaskResponseImplCopyWithImpl<$Res>
    extends _$EngineerTaskResponseCopyWithImpl<$Res, _$EngineerTaskResponseImpl>
    implements _$$EngineerTaskResponseImplCopyWith<$Res> {
  __$$EngineerTaskResponseImplCopyWithImpl(_$EngineerTaskResponseImpl _value,
      $Res Function(_$EngineerTaskResponseImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? deviceId = null,
    Object? body = null,
    Object? title = null,
    Object? mId = null,
  }) {
    return _then(_$EngineerTaskResponseImpl(
      deviceId: null == deviceId
          ? _value.deviceId
          : deviceId // ignore: cast_nullable_to_non_nullable
              as String,
      body: null == body
          ? _value.body
          : body // ignore: cast_nullable_to_non_nullable
              as String,
      title: null == title
          ? _value.title
          : title // ignore: cast_nullable_to_non_nullable
              as String,
      mId: null == mId
          ? _value.mId
          : mId // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$EngineerTaskResponseImpl implements _EngineerTaskResponse {
  const _$EngineerTaskResponseImpl(
      {@JsonKey(name: 'device_id') required this.deviceId,
      @JsonKey(name: 'body') required this.body,
      @JsonKey(name: 'title') required this.title,
      @JsonKey(name: 'm_id') required this.mId});

  factory _$EngineerTaskResponseImpl.fromJson(Map<String, dynamic> json) =>
      _$$EngineerTaskResponseImplFromJson(json);

  @override
  @JsonKey(name: 'device_id')
  final String deviceId;
  @override
  @JsonKey(name: 'body')
  final String body;
  @override
  @JsonKey(name: 'title')
  final String title;
  @override
  @JsonKey(name: 'm_id')
  final String mId;

  @override
  String toString() {
    return 'EngineerTaskResponse(deviceId: $deviceId, body: $body, title: $title, mId: $mId)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$EngineerTaskResponseImpl &&
            (identical(other.deviceId, deviceId) ||
                other.deviceId == deviceId) &&
            (identical(other.body, body) || other.body == body) &&
            (identical(other.title, title) || other.title == title) &&
            (identical(other.mId, mId) || other.mId == mId));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, deviceId, body, title, mId);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$EngineerTaskResponseImplCopyWith<_$EngineerTaskResponseImpl>
      get copyWith =>
          __$$EngineerTaskResponseImplCopyWithImpl<_$EngineerTaskResponseImpl>(
              this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$EngineerTaskResponseImplToJson(
      this,
    );
  }
}

abstract class _EngineerTaskResponse implements EngineerTaskResponse {
  const factory _EngineerTaskResponse(
          {@JsonKey(name: 'device_id') required final String deviceId,
          @JsonKey(name: 'body') required final String body,
          @JsonKey(name: 'title') required final String title,
          @JsonKey(name: 'm_id') required final String mId}) =
      _$EngineerTaskResponseImpl;

  factory _EngineerTaskResponse.fromJson(Map<String, dynamic> json) =
      _$EngineerTaskResponseImpl.fromJson;

  @override
  @JsonKey(name: 'device_id')
  String get deviceId;
  @override
  @JsonKey(name: 'body')
  String get body;
  @override
  @JsonKey(name: 'title')
  String get title;
  @override
  @JsonKey(name: 'm_id')
  String get mId;
  @override
  @JsonKey(ignore: true)
  _$$EngineerTaskResponseImplCopyWith<_$EngineerTaskResponseImpl>
      get copyWith => throw _privateConstructorUsedError;
}
