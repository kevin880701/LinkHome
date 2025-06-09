// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'UpdateWarrantyResponse.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

UpdateWarrantyResponse _$UpdateWarrantyResponseFromJson(
    Map<String, dynamic> json) {
  return _UpdateWarrantyResponse.fromJson(json);
}

/// @nodoc
mixin _$UpdateWarrantyResponse {
  @JsonKey(name: 'status')
  int get status => throw _privateConstructorUsedError;
  @JsonKey(name: 'data')
  String get data => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $UpdateWarrantyResponseCopyWith<UpdateWarrantyResponse> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $UpdateWarrantyResponseCopyWith<$Res> {
  factory $UpdateWarrantyResponseCopyWith(UpdateWarrantyResponse value,
          $Res Function(UpdateWarrantyResponse) then) =
      _$UpdateWarrantyResponseCopyWithImpl<$Res, UpdateWarrantyResponse>;
  @useResult
  $Res call(
      {@JsonKey(name: 'status') int status,
      @JsonKey(name: 'data') String data});
}

/// @nodoc
class _$UpdateWarrantyResponseCopyWithImpl<$Res,
        $Val extends UpdateWarrantyResponse>
    implements $UpdateWarrantyResponseCopyWith<$Res> {
  _$UpdateWarrantyResponseCopyWithImpl(this._value, this._then);

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
abstract class _$$UpdateWarrantyResponseImplCopyWith<$Res>
    implements $UpdateWarrantyResponseCopyWith<$Res> {
  factory _$$UpdateWarrantyResponseImplCopyWith(
          _$UpdateWarrantyResponseImpl value,
          $Res Function(_$UpdateWarrantyResponseImpl) then) =
      __$$UpdateWarrantyResponseImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {@JsonKey(name: 'status') int status,
      @JsonKey(name: 'data') String data});
}

/// @nodoc
class __$$UpdateWarrantyResponseImplCopyWithImpl<$Res>
    extends _$UpdateWarrantyResponseCopyWithImpl<$Res,
        _$UpdateWarrantyResponseImpl>
    implements _$$UpdateWarrantyResponseImplCopyWith<$Res> {
  __$$UpdateWarrantyResponseImplCopyWithImpl(
      _$UpdateWarrantyResponseImpl _value,
      $Res Function(_$UpdateWarrantyResponseImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? status = null,
    Object? data = null,
  }) {
    return _then(_$UpdateWarrantyResponseImpl(
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
class _$UpdateWarrantyResponseImpl implements _UpdateWarrantyResponse {
  const _$UpdateWarrantyResponseImpl(
      {@JsonKey(name: 'status') required this.status,
      @JsonKey(name: 'data') required this.data});

  factory _$UpdateWarrantyResponseImpl.fromJson(Map<String, dynamic> json) =>
      _$$UpdateWarrantyResponseImplFromJson(json);

  @override
  @JsonKey(name: 'status')
  final int status;
  @override
  @JsonKey(name: 'data')
  final String data;

  @override
  String toString() {
    return 'UpdateWarrantyResponse(status: $status, data: $data)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$UpdateWarrantyResponseImpl &&
            (identical(other.status, status) || other.status == status) &&
            (identical(other.data, data) || other.data == data));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, status, data);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$UpdateWarrantyResponseImplCopyWith<_$UpdateWarrantyResponseImpl>
      get copyWith => __$$UpdateWarrantyResponseImplCopyWithImpl<
          _$UpdateWarrantyResponseImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$UpdateWarrantyResponseImplToJson(
      this,
    );
  }
}

abstract class _UpdateWarrantyResponse implements UpdateWarrantyResponse {
  const factory _UpdateWarrantyResponse(
          {@JsonKey(name: 'status') required final int status,
          @JsonKey(name: 'data') required final String data}) =
      _$UpdateWarrantyResponseImpl;

  factory _UpdateWarrantyResponse.fromJson(Map<String, dynamic> json) =
      _$UpdateWarrantyResponseImpl.fromJson;

  @override
  @JsonKey(name: 'status')
  int get status;
  @override
  @JsonKey(name: 'data')
  String get data;
  @override
  @JsonKey(ignore: true)
  _$$UpdateWarrantyResponseImplCopyWith<_$UpdateWarrantyResponseImpl>
      get copyWith => throw _privateConstructorUsedError;
}
