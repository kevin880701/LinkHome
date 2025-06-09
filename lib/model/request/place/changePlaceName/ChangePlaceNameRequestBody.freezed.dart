// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'ChangePlaceNameRequestBody.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

ChangePlaceNameRequestBody _$ChangePlaceNameRequestBodyFromJson(
    Map<String, dynamic> json) {
  return _ChangePlaceNameRequestBody.fromJson(json);
}

/// @nodoc
mixin _$ChangePlaceNameRequestBody {
  @JsonKey(name: 'name')
  String get name => throw _privateConstructorUsedError;
  @JsonKey(name: 'place_id')
  int get placeId => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $ChangePlaceNameRequestBodyCopyWith<ChangePlaceNameRequestBody>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ChangePlaceNameRequestBodyCopyWith<$Res> {
  factory $ChangePlaceNameRequestBodyCopyWith(ChangePlaceNameRequestBody value,
          $Res Function(ChangePlaceNameRequestBody) then) =
      _$ChangePlaceNameRequestBodyCopyWithImpl<$Res,
          ChangePlaceNameRequestBody>;
  @useResult
  $Res call(
      {@JsonKey(name: 'name') String name,
      @JsonKey(name: 'place_id') int placeId});
}

/// @nodoc
class _$ChangePlaceNameRequestBodyCopyWithImpl<$Res,
        $Val extends ChangePlaceNameRequestBody>
    implements $ChangePlaceNameRequestBodyCopyWith<$Res> {
  _$ChangePlaceNameRequestBodyCopyWithImpl(this._value, this._then);

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
abstract class _$$ChangePlaceNameRequestBodyImplCopyWith<$Res>
    implements $ChangePlaceNameRequestBodyCopyWith<$Res> {
  factory _$$ChangePlaceNameRequestBodyImplCopyWith(
          _$ChangePlaceNameRequestBodyImpl value,
          $Res Function(_$ChangePlaceNameRequestBodyImpl) then) =
      __$$ChangePlaceNameRequestBodyImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {@JsonKey(name: 'name') String name,
      @JsonKey(name: 'place_id') int placeId});
}

/// @nodoc
class __$$ChangePlaceNameRequestBodyImplCopyWithImpl<$Res>
    extends _$ChangePlaceNameRequestBodyCopyWithImpl<$Res,
        _$ChangePlaceNameRequestBodyImpl>
    implements _$$ChangePlaceNameRequestBodyImplCopyWith<$Res> {
  __$$ChangePlaceNameRequestBodyImplCopyWithImpl(
      _$ChangePlaceNameRequestBodyImpl _value,
      $Res Function(_$ChangePlaceNameRequestBodyImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? name = null,
    Object? placeId = null,
  }) {
    return _then(_$ChangePlaceNameRequestBodyImpl(
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
class _$ChangePlaceNameRequestBodyImpl implements _ChangePlaceNameRequestBody {
  const _$ChangePlaceNameRequestBodyImpl(
      {@JsonKey(name: 'name') required this.name,
      @JsonKey(name: 'place_id') required this.placeId});

  factory _$ChangePlaceNameRequestBodyImpl.fromJson(
          Map<String, dynamic> json) =>
      _$$ChangePlaceNameRequestBodyImplFromJson(json);

  @override
  @JsonKey(name: 'name')
  final String name;
  @override
  @JsonKey(name: 'place_id')
  final int placeId;

  @override
  String toString() {
    return 'ChangePlaceNameRequestBody(name: $name, placeId: $placeId)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ChangePlaceNameRequestBodyImpl &&
            (identical(other.name, name) || other.name == name) &&
            (identical(other.placeId, placeId) || other.placeId == placeId));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, name, placeId);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$ChangePlaceNameRequestBodyImplCopyWith<_$ChangePlaceNameRequestBodyImpl>
      get copyWith => __$$ChangePlaceNameRequestBodyImplCopyWithImpl<
          _$ChangePlaceNameRequestBodyImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$ChangePlaceNameRequestBodyImplToJson(
      this,
    );
  }
}

abstract class _ChangePlaceNameRequestBody
    implements ChangePlaceNameRequestBody {
  const factory _ChangePlaceNameRequestBody(
          {@JsonKey(name: 'name') required final String name,
          @JsonKey(name: 'place_id') required final int placeId}) =
      _$ChangePlaceNameRequestBodyImpl;

  factory _ChangePlaceNameRequestBody.fromJson(Map<String, dynamic> json) =
      _$ChangePlaceNameRequestBodyImpl.fromJson;

  @override
  @JsonKey(name: 'name')
  String get name;
  @override
  @JsonKey(name: 'place_id')
  int get placeId;
  @override
  @JsonKey(ignore: true)
  _$$ChangePlaceNameRequestBodyImplCopyWith<_$ChangePlaceNameRequestBodyImpl>
      get copyWith => throw _privateConstructorUsedError;
}
