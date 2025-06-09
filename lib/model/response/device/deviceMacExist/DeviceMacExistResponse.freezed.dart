// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'DeviceMacExistResponse.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

DeviceMacExistResponse _$DeviceMacExistResponseFromJson(
    Map<String, dynamic> json) {
  return _DeviceMacExistResponse.fromJson(json);
}

/// @nodoc
mixin _$DeviceMacExistResponse {
  @JsonKey(name: 'status')
  int get status => throw _privateConstructorUsedError;
  @JsonKey(name: 'data')
  String get data => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $DeviceMacExistResponseCopyWith<DeviceMacExistResponse> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $DeviceMacExistResponseCopyWith<$Res> {
  factory $DeviceMacExistResponseCopyWith(DeviceMacExistResponse value,
          $Res Function(DeviceMacExistResponse) then) =
      _$DeviceMacExistResponseCopyWithImpl<$Res, DeviceMacExistResponse>;
  @useResult
  $Res call(
      {@JsonKey(name: 'status') int status,
      @JsonKey(name: 'data') String data});
}

/// @nodoc
class _$DeviceMacExistResponseCopyWithImpl<$Res,
        $Val extends DeviceMacExistResponse>
    implements $DeviceMacExistResponseCopyWith<$Res> {
  _$DeviceMacExistResponseCopyWithImpl(this._value, this._then);

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
abstract class _$$DeviceMacExistResponseImplCopyWith<$Res>
    implements $DeviceMacExistResponseCopyWith<$Res> {
  factory _$$DeviceMacExistResponseImplCopyWith(
          _$DeviceMacExistResponseImpl value,
          $Res Function(_$DeviceMacExistResponseImpl) then) =
      __$$DeviceMacExistResponseImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {@JsonKey(name: 'status') int status,
      @JsonKey(name: 'data') String data});
}

/// @nodoc
class __$$DeviceMacExistResponseImplCopyWithImpl<$Res>
    extends _$DeviceMacExistResponseCopyWithImpl<$Res,
        _$DeviceMacExistResponseImpl>
    implements _$$DeviceMacExistResponseImplCopyWith<$Res> {
  __$$DeviceMacExistResponseImplCopyWithImpl(
      _$DeviceMacExistResponseImpl _value,
      $Res Function(_$DeviceMacExistResponseImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? status = null,
    Object? data = null,
  }) {
    return _then(_$DeviceMacExistResponseImpl(
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
class _$DeviceMacExistResponseImpl implements _DeviceMacExistResponse {
  const _$DeviceMacExistResponseImpl(
      {@JsonKey(name: 'status') required this.status,
      @JsonKey(name: 'data') required this.data});

  factory _$DeviceMacExistResponseImpl.fromJson(Map<String, dynamic> json) =>
      _$$DeviceMacExistResponseImplFromJson(json);

  @override
  @JsonKey(name: 'status')
  final int status;
  @override
  @JsonKey(name: 'data')
  final String data;

  @override
  String toString() {
    return 'DeviceMacExistResponse(status: $status, data: $data)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$DeviceMacExistResponseImpl &&
            (identical(other.status, status) || other.status == status) &&
            (identical(other.data, data) || other.data == data));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, status, data);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$DeviceMacExistResponseImplCopyWith<_$DeviceMacExistResponseImpl>
      get copyWith => __$$DeviceMacExistResponseImplCopyWithImpl<
          _$DeviceMacExistResponseImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$DeviceMacExistResponseImplToJson(
      this,
    );
  }
}

abstract class _DeviceMacExistResponse implements DeviceMacExistResponse {
  const factory _DeviceMacExistResponse(
          {@JsonKey(name: 'status') required final int status,
          @JsonKey(name: 'data') required final String data}) =
      _$DeviceMacExistResponseImpl;

  factory _DeviceMacExistResponse.fromJson(Map<String, dynamic> json) =
      _$DeviceMacExistResponseImpl.fromJson;

  @override
  @JsonKey(name: 'status')
  int get status;
  @override
  @JsonKey(name: 'data')
  String get data;
  @override
  @JsonKey(ignore: true)
  _$$DeviceMacExistResponseImplCopyWith<_$DeviceMacExistResponseImpl>
      get copyWith => throw _privateConstructorUsedError;
}
