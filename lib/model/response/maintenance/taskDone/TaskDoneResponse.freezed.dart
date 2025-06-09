// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'TaskDoneResponse.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

TaskDoneResponse _$TaskDoneResponseFromJson(Map<String, dynamic> json) {
  return _TaskDoneResponse.fromJson(json);
}

/// @nodoc
mixin _$TaskDoneResponse {
  @JsonKey(name: 'status')
  int get status => throw _privateConstructorUsedError;
  @JsonKey(name: 'data')
  String get data => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $TaskDoneResponseCopyWith<TaskDoneResponse> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $TaskDoneResponseCopyWith<$Res> {
  factory $TaskDoneResponseCopyWith(
          TaskDoneResponse value, $Res Function(TaskDoneResponse) then) =
      _$TaskDoneResponseCopyWithImpl<$Res, TaskDoneResponse>;
  @useResult
  $Res call(
      {@JsonKey(name: 'status') int status,
      @JsonKey(name: 'data') String data});
}

/// @nodoc
class _$TaskDoneResponseCopyWithImpl<$Res, $Val extends TaskDoneResponse>
    implements $TaskDoneResponseCopyWith<$Res> {
  _$TaskDoneResponseCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? status = null,
    Object? data = null,
  }) {
    return _then(_value.copyWith(
      status: null == status
          ? _value.status
          : status // ignore: cast_nullable_to_non_nullable
              as int,
      data: null == data
          ? _value.data
          : data // ignore: cast_nullable_to_non_nullable
              as String,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$TaskDoneResponseImplCopyWith<$Res>
    implements $TaskDoneResponseCopyWith<$Res> {
  factory _$$TaskDoneResponseImplCopyWith(_$TaskDoneResponseImpl value,
          $Res Function(_$TaskDoneResponseImpl) then) =
      __$$TaskDoneResponseImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {@JsonKey(name: 'status') int status,
      @JsonKey(name: 'data') String data});
}

/// @nodoc
class __$$TaskDoneResponseImplCopyWithImpl<$Res>
    extends _$TaskDoneResponseCopyWithImpl<$Res, _$TaskDoneResponseImpl>
    implements _$$TaskDoneResponseImplCopyWith<$Res> {
  __$$TaskDoneResponseImplCopyWithImpl(_$TaskDoneResponseImpl _value,
      $Res Function(_$TaskDoneResponseImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? status = null,
    Object? data = null,
  }) {
    return _then(_$TaskDoneResponseImpl(
      status: null == status
          ? _value.status
          : status // ignore: cast_nullable_to_non_nullable
              as int,
      data: null == data
          ? _value.data
          : data // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$TaskDoneResponseImpl implements _TaskDoneResponse {
  const _$TaskDoneResponseImpl(
      {@JsonKey(name: 'status') required this.status,
      @JsonKey(name: 'data') required this.data});

  factory _$TaskDoneResponseImpl.fromJson(Map<String, dynamic> json) =>
      _$$TaskDoneResponseImplFromJson(json);

  @override
  @JsonKey(name: 'status')
  final int status;
  @override
  @JsonKey(name: 'data')
  final String data;

  @override
  String toString() {
    return 'TaskDoneResponse(status: $status, data: $data)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$TaskDoneResponseImpl &&
            (identical(other.status, status) || other.status == status) &&
            (identical(other.data, data) || other.data == data));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, status, data);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$TaskDoneResponseImplCopyWith<_$TaskDoneResponseImpl> get copyWith =>
      __$$TaskDoneResponseImplCopyWithImpl<_$TaskDoneResponseImpl>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$TaskDoneResponseImplToJson(
      this,
    );
  }
}

abstract class _TaskDoneResponse implements TaskDoneResponse {
  const factory _TaskDoneResponse(
          {@JsonKey(name: 'status') required final int status,
          @JsonKey(name: 'data') required final String data}) =
      _$TaskDoneResponseImpl;

  factory _TaskDoneResponse.fromJson(Map<String, dynamic> json) =
      _$TaskDoneResponseImpl.fromJson;

  @override
  @JsonKey(name: 'status')
  int get status;
  @override
  @JsonKey(name: 'data')
  String get data;
  @override
  @JsonKey(ignore: true)
  _$$TaskDoneResponseImplCopyWith<_$TaskDoneResponseImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
