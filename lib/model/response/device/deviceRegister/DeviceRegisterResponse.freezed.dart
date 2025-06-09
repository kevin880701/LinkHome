// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'DeviceRegisterResponse.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

DeviceRegisterResponse _$DeviceRegisterResponseFromJson(
    Map<String, dynamic> json) {
  return _DeviceRegisterResponse.fromJson(json);
}

/// @nodoc
mixin _$DeviceRegisterResponse {
  @JsonKey(name: 'status')
  int get status => throw _privateConstructorUsedError;
  @JsonKey(name: 'data')
  String get data => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $DeviceRegisterResponseCopyWith<DeviceRegisterResponse> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $DeviceRegisterResponseCopyWith<$Res> {
  factory $DeviceRegisterResponseCopyWith(DeviceRegisterResponse value,
          $Res Function(DeviceRegisterResponse) then) =
      _$DeviceRegisterResponseCopyWithImpl<$Res, DeviceRegisterResponse>;
  @useResult
  $Res call(
      {@JsonKey(name: 'status') int status,
      @JsonKey(name: 'data') String data});
}

/// @nodoc
class _$DeviceRegisterResponseCopyWithImpl<$Res,
        $Val extends DeviceRegisterResponse>
    implements $DeviceRegisterResponseCopyWith<$Res> {
  _$DeviceRegisterResponseCopyWithImpl(this._value, this._then);

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
abstract class _$$DeviceRegisterResponseImplCopyWith<$Res>
    implements $DeviceRegisterResponseCopyWith<$Res> {
  factory _$$DeviceRegisterResponseImplCopyWith(
          _$DeviceRegisterResponseImpl value,
          $Res Function(_$DeviceRegisterResponseImpl) then) =
      __$$DeviceRegisterResponseImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {@JsonKey(name: 'status') int status,
      @JsonKey(name: 'data') String data});
}

/// @nodoc
class __$$DeviceRegisterResponseImplCopyWithImpl<$Res>
    extends _$DeviceRegisterResponseCopyWithImpl<$Res,
        _$DeviceRegisterResponseImpl>
    implements _$$DeviceRegisterResponseImplCopyWith<$Res> {
  __$$DeviceRegisterResponseImplCopyWithImpl(
      _$DeviceRegisterResponseImpl _value,
      $Res Function(_$DeviceRegisterResponseImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? status = null,
    Object? data = null,
  }) {
    return _then(_$DeviceRegisterResponseImpl(
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
class _$DeviceRegisterResponseImpl implements _DeviceRegisterResponse {
  const _$DeviceRegisterResponseImpl(
      {@JsonKey(name: 'status') required this.status,
      @JsonKey(name: 'data') required this.data});

  factory _$DeviceRegisterResponseImpl.fromJson(Map<String, dynamic> json) =>
      _$$DeviceRegisterResponseImplFromJson(json);

  @override
  @JsonKey(name: 'status')
  final int status;
  @override
  @JsonKey(name: 'data')
  final String data;

  @override
  String toString() {
    return 'DeviceRegisterResponse(status: $status, data: $data)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$DeviceRegisterResponseImpl &&
            (identical(other.status, status) || other.status == status) &&
            (identical(other.data, data) || other.data == data));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, status, data);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$DeviceRegisterResponseImplCopyWith<_$DeviceRegisterResponseImpl>
      get copyWith => __$$DeviceRegisterResponseImplCopyWithImpl<
          _$DeviceRegisterResponseImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$DeviceRegisterResponseImplToJson(
      this,
    );
  }
}

abstract class _DeviceRegisterResponse implements DeviceRegisterResponse {
  const factory _DeviceRegisterResponse(
          {@JsonKey(name: 'status') required final int status,
          @JsonKey(name: 'data') required final String data}) =
      _$DeviceRegisterResponseImpl;

  factory _DeviceRegisterResponse.fromJson(Map<String, dynamic> json) =
      _$DeviceRegisterResponseImpl.fromJson;

  @override
  @JsonKey(name: 'status')
  int get status;
  @override
  @JsonKey(name: 'data')
  String get data;
  @override
  @JsonKey(ignore: true)
  _$$DeviceRegisterResponseImplCopyWith<_$DeviceRegisterResponseImpl>
      get copyWith => throw _privateConstructorUsedError;
}
