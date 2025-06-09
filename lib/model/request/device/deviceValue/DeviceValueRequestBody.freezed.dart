// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'DeviceValueRequestBody.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

DeviceValueRequestBody _$DeviceValueRequestBodyFromJson(
    Map<String, dynamic> json) {
  return _DeviceValueRequestBody.fromJson(json);
}

/// @nodoc
mixin _$DeviceValueRequestBody {
  String get id => throw _privateConstructorUsedError;
  String get value => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $DeviceValueRequestBodyCopyWith<DeviceValueRequestBody> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $DeviceValueRequestBodyCopyWith<$Res> {
  factory $DeviceValueRequestBodyCopyWith(DeviceValueRequestBody value,
          $Res Function(DeviceValueRequestBody) then) =
      _$DeviceValueRequestBodyCopyWithImpl<$Res, DeviceValueRequestBody>;
  @useResult
  $Res call({String id, String value});
}

/// @nodoc
class _$DeviceValueRequestBodyCopyWithImpl<$Res,
        $Val extends DeviceValueRequestBody>
    implements $DeviceValueRequestBodyCopyWith<$Res> {
  _$DeviceValueRequestBodyCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? value = null,
  }) {
    return _then(_value.copyWith(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String,
      value: null == value
          ? _value.value
          : value // ignore: cast_nullable_to_non_nullable
              as String,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$DeviceValueRequestBodyImplCopyWith<$Res>
    implements $DeviceValueRequestBodyCopyWith<$Res> {
  factory _$$DeviceValueRequestBodyImplCopyWith(
          _$DeviceValueRequestBodyImpl value,
          $Res Function(_$DeviceValueRequestBodyImpl) then) =
      __$$DeviceValueRequestBodyImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String id, String value});
}

/// @nodoc
class __$$DeviceValueRequestBodyImplCopyWithImpl<$Res>
    extends _$DeviceValueRequestBodyCopyWithImpl<$Res,
        _$DeviceValueRequestBodyImpl>
    implements _$$DeviceValueRequestBodyImplCopyWith<$Res> {
  __$$DeviceValueRequestBodyImplCopyWithImpl(
      _$DeviceValueRequestBodyImpl _value,
      $Res Function(_$DeviceValueRequestBodyImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? value = null,
  }) {
    return _then(_$DeviceValueRequestBodyImpl(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String,
      value: null == value
          ? _value.value
          : value // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$DeviceValueRequestBodyImpl implements _DeviceValueRequestBody {
  const _$DeviceValueRequestBodyImpl({required this.id, required this.value});

  factory _$DeviceValueRequestBodyImpl.fromJson(Map<String, dynamic> json) =>
      _$$DeviceValueRequestBodyImplFromJson(json);

  @override
  final String id;
  @override
  final String value;

  @override
  String toString() {
    return 'DeviceValueRequestBody(id: $id, value: $value)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$DeviceValueRequestBodyImpl &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.value, value) || other.value == value));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, id, value);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$DeviceValueRequestBodyImplCopyWith<_$DeviceValueRequestBodyImpl>
      get copyWith => __$$DeviceValueRequestBodyImplCopyWithImpl<
          _$DeviceValueRequestBodyImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$DeviceValueRequestBodyImplToJson(
      this,
    );
  }
}

abstract class _DeviceValueRequestBody implements DeviceValueRequestBody {
  const factory _DeviceValueRequestBody(
      {required final String id,
      required final String value}) = _$DeviceValueRequestBodyImpl;

  factory _DeviceValueRequestBody.fromJson(Map<String, dynamic> json) =
      _$DeviceValueRequestBodyImpl.fromJson;

  @override
  String get id;
  @override
  String get value;
  @override
  @JsonKey(ignore: true)
  _$$DeviceValueRequestBodyImplCopyWith<_$DeviceValueRequestBodyImpl>
      get copyWith => throw _privateConstructorUsedError;
}
