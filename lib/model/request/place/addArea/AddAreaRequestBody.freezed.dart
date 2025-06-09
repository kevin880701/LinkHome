// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'AddAreaRequestBody.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

AddAreaRequestBody _$AddAreaRequestBodyFromJson(Map<String, dynamic> json) {
  return _AddAreaRequestBody.fromJson(json);
}

/// @nodoc
mixin _$AddAreaRequestBody {
  @JsonKey(name: 'name')
  String get name => throw _privateConstructorUsedError;
  @JsonKey(name: 'place_id')
  int get placeId => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $AddAreaRequestBodyCopyWith<AddAreaRequestBody> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $AddAreaRequestBodyCopyWith<$Res> {
  factory $AddAreaRequestBodyCopyWith(
          AddAreaRequestBody value, $Res Function(AddAreaRequestBody) then) =
      _$AddAreaRequestBodyCopyWithImpl<$Res, AddAreaRequestBody>;
  @useResult
  $Res call(
      {@JsonKey(name: 'name') String name,
      @JsonKey(name: 'place_id') int placeId});
}

/// @nodoc
class _$AddAreaRequestBodyCopyWithImpl<$Res, $Val extends AddAreaRequestBody>
    implements $AddAreaRequestBodyCopyWith<$Res> {
  _$AddAreaRequestBodyCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? name = null,
    Object? placeId = null,
  }) {
    return _then(_value.copyWith(
      name: null == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
      placeId: null == placeId
          ? _value.placeId
          : placeId // ignore: cast_nullable_to_non_nullable
              as int,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$AddAreaRequestBodyImplCopyWith<$Res>
    implements $AddAreaRequestBodyCopyWith<$Res> {
  factory _$$AddAreaRequestBodyImplCopyWith(_$AddAreaRequestBodyImpl value,
          $Res Function(_$AddAreaRequestBodyImpl) then) =
      __$$AddAreaRequestBodyImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {@JsonKey(name: 'name') String name,
      @JsonKey(name: 'place_id') int placeId});
}

/// @nodoc
class __$$AddAreaRequestBodyImplCopyWithImpl<$Res>
    extends _$AddAreaRequestBodyCopyWithImpl<$Res, _$AddAreaRequestBodyImpl>
    implements _$$AddAreaRequestBodyImplCopyWith<$Res> {
  __$$AddAreaRequestBodyImplCopyWithImpl(_$AddAreaRequestBodyImpl _value,
      $Res Function(_$AddAreaRequestBodyImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? name = null,
    Object? placeId = null,
  }) {
    return _then(_$AddAreaRequestBodyImpl(
      name: null == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
      placeId: null == placeId
          ? _value.placeId
          : placeId // ignore: cast_nullable_to_non_nullable
              as int,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$AddAreaRequestBodyImpl implements _AddAreaRequestBody {
  const _$AddAreaRequestBodyImpl(
      {@JsonKey(name: 'name') required this.name,
      @JsonKey(name: 'place_id') required this.placeId});

  factory _$AddAreaRequestBodyImpl.fromJson(Map<String, dynamic> json) =>
      _$$AddAreaRequestBodyImplFromJson(json);

  @override
  @JsonKey(name: 'name')
  final String name;
  @override
  @JsonKey(name: 'place_id')
  final int placeId;

  @override
  String toString() {
    return 'AddAreaRequestBody(name: $name, placeId: $placeId)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$AddAreaRequestBodyImpl &&
            (identical(other.name, name) || other.name == name) &&
            (identical(other.placeId, placeId) || other.placeId == placeId));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, name, placeId);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$AddAreaRequestBodyImplCopyWith<_$AddAreaRequestBodyImpl> get copyWith =>
      __$$AddAreaRequestBodyImplCopyWithImpl<_$AddAreaRequestBodyImpl>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$AddAreaRequestBodyImplToJson(
      this,
    );
  }
}

abstract class _AddAreaRequestBody implements AddAreaRequestBody {
  const factory _AddAreaRequestBody(
          {@JsonKey(name: 'name') required final String name,
          @JsonKey(name: 'place_id') required final int placeId}) =
      _$AddAreaRequestBodyImpl;

  factory _AddAreaRequestBody.fromJson(Map<String, dynamic> json) =
      _$AddAreaRequestBodyImpl.fromJson;

  @override
  @JsonKey(name: 'name')
  String get name;
  @override
  @JsonKey(name: 'place_id')
  int get placeId;
  @override
  @JsonKey(ignore: true)
  _$$AddAreaRequestBodyImplCopyWith<_$AddAreaRequestBodyImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
