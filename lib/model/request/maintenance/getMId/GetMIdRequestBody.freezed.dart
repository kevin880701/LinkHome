// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'GetMIdRequestBody.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

GetMIdRequestBody _$GetMIdRequestBodyFromJson(Map<String, dynamic> json) {
  return _GetMIdRequestBody.fromJson(json);
}

/// @nodoc
mixin _$GetMIdRequestBody {
  @JsonKey(name: 'device_id')
  int get deviceId => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $GetMIdRequestBodyCopyWith<GetMIdRequestBody> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $GetMIdRequestBodyCopyWith<$Res> {
  factory $GetMIdRequestBodyCopyWith(
          GetMIdRequestBody value, $Res Function(GetMIdRequestBody) then) =
      _$GetMIdRequestBodyCopyWithImpl<$Res, GetMIdRequestBody>;
  @useResult
  $Res call({@JsonKey(name: 'device_id') int deviceId});
}

/// @nodoc
class _$GetMIdRequestBodyCopyWithImpl<$Res, $Val extends GetMIdRequestBody>
    implements $GetMIdRequestBodyCopyWith<$Res> {
  _$GetMIdRequestBodyCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? deviceId = null,
  }) {
    return _then(_value.copyWith(
      deviceId: null == deviceId
          ? _value.deviceId
          : deviceId // ignore: cast_nullable_to_non_nullable
              as int,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$GetMIdRequestBodyImplCopyWith<$Res>
    implements $GetMIdRequestBodyCopyWith<$Res> {
  factory _$$GetMIdRequestBodyImplCopyWith(_$GetMIdRequestBodyImpl value,
          $Res Function(_$GetMIdRequestBodyImpl) then) =
      __$$GetMIdRequestBodyImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({@JsonKey(name: 'device_id') int deviceId});
}

/// @nodoc
class __$$GetMIdRequestBodyImplCopyWithImpl<$Res>
    extends _$GetMIdRequestBodyCopyWithImpl<$Res, _$GetMIdRequestBodyImpl>
    implements _$$GetMIdRequestBodyImplCopyWith<$Res> {
  __$$GetMIdRequestBodyImplCopyWithImpl(_$GetMIdRequestBodyImpl _value,
      $Res Function(_$GetMIdRequestBodyImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? deviceId = null,
  }) {
    return _then(_$GetMIdRequestBodyImpl(
      deviceId: null == deviceId
          ? _value.deviceId
          : deviceId // ignore: cast_nullable_to_non_nullable
              as int,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$GetMIdRequestBodyImpl implements _GetMIdRequestBody {
  const _$GetMIdRequestBodyImpl(
      {@JsonKey(name: 'device_id') required this.deviceId});

  factory _$GetMIdRequestBodyImpl.fromJson(Map<String, dynamic> json) =>
      _$$GetMIdRequestBodyImplFromJson(json);

  @override
  @JsonKey(name: 'device_id')
  final int deviceId;

  @override
  String toString() {
    return 'GetMIdRequestBody(deviceId: $deviceId)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$GetMIdRequestBodyImpl &&
            (identical(other.deviceId, deviceId) ||
                other.deviceId == deviceId));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, deviceId);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$GetMIdRequestBodyImplCopyWith<_$GetMIdRequestBodyImpl> get copyWith =>
      __$$GetMIdRequestBodyImplCopyWithImpl<_$GetMIdRequestBodyImpl>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$GetMIdRequestBodyImplToJson(
      this,
    );
  }
}

abstract class _GetMIdRequestBody implements GetMIdRequestBody {
  const factory _GetMIdRequestBody(
          {@JsonKey(name: 'device_id') required final int deviceId}) =
      _$GetMIdRequestBodyImpl;

  factory _GetMIdRequestBody.fromJson(Map<String, dynamic> json) =
      _$GetMIdRequestBodyImpl.fromJson;

  @override
  @JsonKey(name: 'device_id')
  int get deviceId;
  @override
  @JsonKey(ignore: true)
  _$$GetMIdRequestBodyImplCopyWith<_$GetMIdRequestBodyImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
