// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'AddPlaceRequestBody.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

AddPlaceRequestBody _$AddPlaceRequestBodyFromJson(Map<String, dynamic> json) {
  return _AddPlaceRequestBody.fromJson(json);
}

/// @nodoc
mixin _$AddPlaceRequestBody {
  String get name => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $AddPlaceRequestBodyCopyWith<AddPlaceRequestBody> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $AddPlaceRequestBodyCopyWith<$Res> {
  factory $AddPlaceRequestBodyCopyWith(
          AddPlaceRequestBody value, $Res Function(AddPlaceRequestBody) then) =
      _$AddPlaceRequestBodyCopyWithImpl<$Res, AddPlaceRequestBody>;
  @useResult
  $Res call({String name});
}

/// @nodoc
class _$AddPlaceRequestBodyCopyWithImpl<$Res, $Val extends AddPlaceRequestBody>
    implements $AddPlaceRequestBodyCopyWith<$Res> {
  _$AddPlaceRequestBodyCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? name = null,
  }) {
    return _then(_value.copyWith(
      name: null == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$AddPlaceRequestBodyImplCopyWith<$Res>
    implements $AddPlaceRequestBodyCopyWith<$Res> {
  factory _$$AddPlaceRequestBodyImplCopyWith(_$AddPlaceRequestBodyImpl value,
          $Res Function(_$AddPlaceRequestBodyImpl) then) =
      __$$AddPlaceRequestBodyImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String name});
}

/// @nodoc
class __$$AddPlaceRequestBodyImplCopyWithImpl<$Res>
    extends _$AddPlaceRequestBodyCopyWithImpl<$Res, _$AddPlaceRequestBodyImpl>
    implements _$$AddPlaceRequestBodyImplCopyWith<$Res> {
  __$$AddPlaceRequestBodyImplCopyWithImpl(_$AddPlaceRequestBodyImpl _value,
      $Res Function(_$AddPlaceRequestBodyImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? name = null,
  }) {
    return _then(_$AddPlaceRequestBodyImpl(
      name: null == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$AddPlaceRequestBodyImpl implements _AddPlaceRequestBody {
  const _$AddPlaceRequestBodyImpl({required this.name});

  factory _$AddPlaceRequestBodyImpl.fromJson(Map<String, dynamic> json) =>
      _$$AddPlaceRequestBodyImplFromJson(json);

  @override
  final String name;

  @override
  String toString() {
    return 'AddPlaceRequestBody(name: $name)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$AddPlaceRequestBodyImpl &&
            (identical(other.name, name) || other.name == name));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, name);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$AddPlaceRequestBodyImplCopyWith<_$AddPlaceRequestBodyImpl> get copyWith =>
      __$$AddPlaceRequestBodyImplCopyWithImpl<_$AddPlaceRequestBodyImpl>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$AddPlaceRequestBodyImplToJson(
      this,
    );
  }
}

abstract class _AddPlaceRequestBody implements AddPlaceRequestBody {
  const factory _AddPlaceRequestBody({required final String name}) =
      _$AddPlaceRequestBodyImpl;

  factory _AddPlaceRequestBody.fromJson(Map<String, dynamic> json) =
      _$AddPlaceRequestBodyImpl.fromJson;

  @override
  String get name;
  @override
  @JsonKey(ignore: true)
  _$$AddPlaceRequestBodyImplCopyWith<_$AddPlaceRequestBodyImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
