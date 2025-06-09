// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'Error500Response.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

Error500Response _$Error500ResponseFromJson(Map<String, dynamic> json) {
  return _Error500Response.fromJson(json);
}

/// @nodoc
mixin _$Error500Response {
  @JsonKey(name: 'status')
  String get status => throw _privateConstructorUsedError;
  @JsonKey(name: 'msg')
  String get message => throw _privateConstructorUsedError;
  @JsonKey(name: 'errorMsg')
  String get errorMessage => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $Error500ResponseCopyWith<Error500Response> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $Error500ResponseCopyWith<$Res> {
  factory $Error500ResponseCopyWith(
          Error500Response value, $Res Function(Error500Response) then) =
      _$Error500ResponseCopyWithImpl<$Res, Error500Response>;
  @useResult
  $Res call(
      {@JsonKey(name: 'status') String status,
      @JsonKey(name: 'msg') String message,
      @JsonKey(name: 'errorMsg') String errorMessage});
}

/// @nodoc
class _$Error500ResponseCopyWithImpl<$Res, $Val extends Error500Response>
    implements $Error500ResponseCopyWith<$Res> {
  _$Error500ResponseCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? status = null,
    Object? message = null,
    Object? errorMessage = null,
  }) {
    return _then(_value.copyWith(
      status: null == status
          ? _value.status
          : status // ignore: cast_nullable_to_non_nullable
              as String,
      message: null == message
          ? _value.message
          : message // ignore: cast_nullable_to_non_nullable
              as String,
      errorMessage: null == errorMessage
          ? _value.errorMessage
          : errorMessage // ignore: cast_nullable_to_non_nullable
              as String,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$Error500ResponseImplCopyWith<$Res>
    implements $Error500ResponseCopyWith<$Res> {
  factory _$$Error500ResponseImplCopyWith(_$Error500ResponseImpl value,
          $Res Function(_$Error500ResponseImpl) then) =
      __$$Error500ResponseImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {@JsonKey(name: 'status') String status,
      @JsonKey(name: 'msg') String message,
      @JsonKey(name: 'errorMsg') String errorMessage});
}

/// @nodoc
class __$$Error500ResponseImplCopyWithImpl<$Res>
    extends _$Error500ResponseCopyWithImpl<$Res, _$Error500ResponseImpl>
    implements _$$Error500ResponseImplCopyWith<$Res> {
  __$$Error500ResponseImplCopyWithImpl(_$Error500ResponseImpl _value,
      $Res Function(_$Error500ResponseImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? status = null,
    Object? message = null,
    Object? errorMessage = null,
  }) {
    return _then(_$Error500ResponseImpl(
      status: null == status
          ? _value.status
          : status // ignore: cast_nullable_to_non_nullable
              as String,
      message: null == message
          ? _value.message
          : message // ignore: cast_nullable_to_non_nullable
              as String,
      errorMessage: null == errorMessage
          ? _value.errorMessage
          : errorMessage // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$Error500ResponseImpl implements _Error500Response {
  const _$Error500ResponseImpl(
      {@JsonKey(name: 'status') required this.status,
      @JsonKey(name: 'msg') required this.message,
      @JsonKey(name: 'errorMsg') required this.errorMessage});

  factory _$Error500ResponseImpl.fromJson(Map<String, dynamic> json) =>
      _$$Error500ResponseImplFromJson(json);

  @override
  @JsonKey(name: 'status')
  final String status;
  @override
  @JsonKey(name: 'msg')
  final String message;
  @override
  @JsonKey(name: 'errorMsg')
  final String errorMessage;

  @override
  String toString() {
    return 'Error500Response(status: $status, message: $message, errorMessage: $errorMessage)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$Error500ResponseImpl &&
            (identical(other.status, status) || other.status == status) &&
            (identical(other.message, message) || other.message == message) &&
            (identical(other.errorMessage, errorMessage) ||
                other.errorMessage == errorMessage));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, status, message, errorMessage);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$Error500ResponseImplCopyWith<_$Error500ResponseImpl> get copyWith =>
      __$$Error500ResponseImplCopyWithImpl<_$Error500ResponseImpl>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$Error500ResponseImplToJson(
      this,
    );
  }
}

abstract class _Error500Response implements Error500Response {
  const factory _Error500Response(
          {@JsonKey(name: 'status') required final String status,
          @JsonKey(name: 'msg') required final String message,
          @JsonKey(name: 'errorMsg') required final String errorMessage}) =
      _$Error500ResponseImpl;

  factory _Error500Response.fromJson(Map<String, dynamic> json) =
      _$Error500ResponseImpl.fromJson;

  @override
  @JsonKey(name: 'status')
  String get status;
  @override
  @JsonKey(name: 'msg')
  String get message;
  @override
  @JsonKey(name: 'errorMsg')
  String get errorMessage;
  @override
  @JsonKey(ignore: true)
  _$$Error500ResponseImplCopyWith<_$Error500ResponseImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
