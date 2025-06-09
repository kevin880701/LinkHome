// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'InternalServerErrorResponse.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

InternalServerErrorResponse _$InternalServerErrorResponseFromJson(
    Map<String, dynamic> json) {
  return _InternalServerErrorResponse.fromJson(json);
}

/// @nodoc
mixin _$InternalServerErrorResponse {
  @JsonKey(name: 'status')
  String get status => throw _privateConstructorUsedError;
  @JsonKey(name: 'msg')
  String get message => throw _privateConstructorUsedError;
  @JsonKey(name: 'errorMsg')
  String get errorMessage => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $InternalServerErrorResponseCopyWith<InternalServerErrorResponse>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $InternalServerErrorResponseCopyWith<$Res> {
  factory $InternalServerErrorResponseCopyWith(
          InternalServerErrorResponse value,
          $Res Function(InternalServerErrorResponse) then) =
      _$InternalServerErrorResponseCopyWithImpl<$Res,
          InternalServerErrorResponse>;
  @useResult
  $Res call(
      {@JsonKey(name: 'status') String status,
      @JsonKey(name: 'msg') String message,
      @JsonKey(name: 'errorMsg') String errorMessage});
}

/// @nodoc
class _$InternalServerErrorResponseCopyWithImpl<$Res,
        $Val extends InternalServerErrorResponse>
    implements $InternalServerErrorResponseCopyWith<$Res> {
  _$InternalServerErrorResponseCopyWithImpl(this._value, this._then);

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
abstract class _$$InternalServerErrorResponseImplCopyWith<$Res>
    implements $InternalServerErrorResponseCopyWith<$Res> {
  factory _$$InternalServerErrorResponseImplCopyWith(
          _$InternalServerErrorResponseImpl value,
          $Res Function(_$InternalServerErrorResponseImpl) then) =
      __$$InternalServerErrorResponseImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {@JsonKey(name: 'status') String status,
      @JsonKey(name: 'msg') String message,
      @JsonKey(name: 'errorMsg') String errorMessage});
}

/// @nodoc
class __$$InternalServerErrorResponseImplCopyWithImpl<$Res>
    extends _$InternalServerErrorResponseCopyWithImpl<$Res,
        _$InternalServerErrorResponseImpl>
    implements _$$InternalServerErrorResponseImplCopyWith<$Res> {
  __$$InternalServerErrorResponseImplCopyWithImpl(
      _$InternalServerErrorResponseImpl _value,
      $Res Function(_$InternalServerErrorResponseImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? status = null,
    Object? message = null,
    Object? errorMessage = null,
  }) {
    return _then(_$InternalServerErrorResponseImpl(
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
class _$InternalServerErrorResponseImpl
    implements _InternalServerErrorResponse {
  const _$InternalServerErrorResponseImpl(
      {@JsonKey(name: 'status') required this.status,
      @JsonKey(name: 'msg') required this.message,
      @JsonKey(name: 'errorMsg') required this.errorMessage});

  factory _$InternalServerErrorResponseImpl.fromJson(
          Map<String, dynamic> json) =>
      _$$InternalServerErrorResponseImplFromJson(json);

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
    return 'InternalServerErrorResponse(status: $status, message: $message, errorMessage: $errorMessage)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$InternalServerErrorResponseImpl &&
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
  _$$InternalServerErrorResponseImplCopyWith<_$InternalServerErrorResponseImpl>
      get copyWith => __$$InternalServerErrorResponseImplCopyWithImpl<
          _$InternalServerErrorResponseImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$InternalServerErrorResponseImplToJson(
      this,
    );
  }
}

abstract class _InternalServerErrorResponse
    implements InternalServerErrorResponse {
  const factory _InternalServerErrorResponse(
          {@JsonKey(name: 'status') required final String status,
          @JsonKey(name: 'msg') required final String message,
          @JsonKey(name: 'errorMsg') required final String errorMessage}) =
      _$InternalServerErrorResponseImpl;

  factory _InternalServerErrorResponse.fromJson(Map<String, dynamic> json) =
      _$InternalServerErrorResponseImpl.fromJson;

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
  _$$InternalServerErrorResponseImplCopyWith<_$InternalServerErrorResponseImpl>
      get copyWith => throw _privateConstructorUsedError;
}
