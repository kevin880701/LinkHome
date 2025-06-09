// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'AddDeviceMemberResponse.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

AddDeviceMemberResponse _$AddDeviceMemberResponseFromJson(
    Map<String, dynamic> json) {
  return _AddDeviceMemberResponse.fromJson(json);
}

/// @nodoc
mixin _$AddDeviceMemberResponse {
  @JsonKey(name: 'status')
  int get status => throw _privateConstructorUsedError;
  @JsonKey(name: 'data')
  String get data => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $AddDeviceMemberResponseCopyWith<AddDeviceMemberResponse> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $AddDeviceMemberResponseCopyWith<$Res> {
  factory $AddDeviceMemberResponseCopyWith(AddDeviceMemberResponse value,
          $Res Function(AddDeviceMemberResponse) then) =
      _$AddDeviceMemberResponseCopyWithImpl<$Res, AddDeviceMemberResponse>;
  @useResult
  $Res call(
      {@JsonKey(name: 'status') int status,
      @JsonKey(name: 'data') String data});
}

/// @nodoc
class _$AddDeviceMemberResponseCopyWithImpl<$Res,
        $Val extends AddDeviceMemberResponse>
    implements $AddDeviceMemberResponseCopyWith<$Res> {
  _$AddDeviceMemberResponseCopyWithImpl(this._value, this._then);

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
abstract class _$$AddDeviceMemberResponseImplCopyWith<$Res>
    implements $AddDeviceMemberResponseCopyWith<$Res> {
  factory _$$AddDeviceMemberResponseImplCopyWith(
          _$AddDeviceMemberResponseImpl value,
          $Res Function(_$AddDeviceMemberResponseImpl) then) =
      __$$AddDeviceMemberResponseImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {@JsonKey(name: 'status') int status,
      @JsonKey(name: 'data') String data});
}

/// @nodoc
class __$$AddDeviceMemberResponseImplCopyWithImpl<$Res>
    extends _$AddDeviceMemberResponseCopyWithImpl<$Res,
        _$AddDeviceMemberResponseImpl>
    implements _$$AddDeviceMemberResponseImplCopyWith<$Res> {
  __$$AddDeviceMemberResponseImplCopyWithImpl(
      _$AddDeviceMemberResponseImpl _value,
      $Res Function(_$AddDeviceMemberResponseImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? status = null,
    Object? data = null,
  }) {
    return _then(_$AddDeviceMemberResponseImpl(
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
class _$AddDeviceMemberResponseImpl implements _AddDeviceMemberResponse {
  const _$AddDeviceMemberResponseImpl(
      {@JsonKey(name: 'status') required this.status,
      @JsonKey(name: 'data') required this.data});

  factory _$AddDeviceMemberResponseImpl.fromJson(Map<String, dynamic> json) =>
      _$$AddDeviceMemberResponseImplFromJson(json);

  @override
  @JsonKey(name: 'status')
  final int status;
  @override
  @JsonKey(name: 'data')
  final String data;

  @override
  String toString() {
    return 'AddDeviceMemberResponse(status: $status, data: $data)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$AddDeviceMemberResponseImpl &&
            (identical(other.status, status) || other.status == status) &&
            (identical(other.data, data) || other.data == data));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, status, data);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$AddDeviceMemberResponseImplCopyWith<_$AddDeviceMemberResponseImpl>
      get copyWith => __$$AddDeviceMemberResponseImplCopyWithImpl<
          _$AddDeviceMemberResponseImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$AddDeviceMemberResponseImplToJson(
      this,
    );
  }
}

abstract class _AddDeviceMemberResponse implements AddDeviceMemberResponse {
  const factory _AddDeviceMemberResponse(
          {@JsonKey(name: 'status') required final int status,
          @JsonKey(name: 'data') required final String data}) =
      _$AddDeviceMemberResponseImpl;

  factory _AddDeviceMemberResponse.fromJson(Map<String, dynamic> json) =
      _$AddDeviceMemberResponseImpl.fromJson;

  @override
  @JsonKey(name: 'status')
  int get status;
  @override
  @JsonKey(name: 'data')
  String get data;
  @override
  @JsonKey(ignore: true)
  _$$AddDeviceMemberResponseImplCopyWith<_$AddDeviceMemberResponseImpl>
      get copyWith => throw _privateConstructorUsedError;
}
