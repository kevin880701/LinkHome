// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'ChangeAreaNameRequestBody.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

ChangeAreaNameRequestBody _$ChangeAreaNameRequestBodyFromJson(
    Map<String, dynamic> json) {
  return _ChangeAreaNameRequestBody.fromJson(json);
}

/// @nodoc
mixin _$ChangeAreaNameRequestBody {
  @JsonKey(name: 'name')
  String get name => throw _privateConstructorUsedError;
  @JsonKey(name: 'area_id')
  int get areaId => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $ChangeAreaNameRequestBodyCopyWith<ChangeAreaNameRequestBody> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ChangeAreaNameRequestBodyCopyWith<$Res> {
  factory $ChangeAreaNameRequestBodyCopyWith(ChangeAreaNameRequestBody value,
          $Res Function(ChangeAreaNameRequestBody) then) =
      _$ChangeAreaNameRequestBodyCopyWithImpl<$Res, ChangeAreaNameRequestBody>;
  @useResult
  $Res call(
      {@JsonKey(name: 'name') String name,
      @JsonKey(name: 'area_id') int areaId});
}

/// @nodoc
class _$ChangeAreaNameRequestBodyCopyWithImpl<$Res,
        $Val extends ChangeAreaNameRequestBody>
    implements $ChangeAreaNameRequestBodyCopyWith<$Res> {
  _$ChangeAreaNameRequestBodyCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? name = null,
    Object? areaId = null,
  }) {
    return _then(_value.copyWith(
      name: null == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
      areaId: null == areaId
          ? _value.areaId
          : areaId // ignore: cast_nullable_to_non_nullable
              as int,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$ChangeAreaNameRequestBodyImplCopyWith<$Res>
    implements $ChangeAreaNameRequestBodyCopyWith<$Res> {
  factory _$$ChangeAreaNameRequestBodyImplCopyWith(
          _$ChangeAreaNameRequestBodyImpl value,
          $Res Function(_$ChangeAreaNameRequestBodyImpl) then) =
      __$$ChangeAreaNameRequestBodyImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {@JsonKey(name: 'name') String name,
      @JsonKey(name: 'area_id') int areaId});
}

/// @nodoc
class __$$ChangeAreaNameRequestBodyImplCopyWithImpl<$Res>
    extends _$ChangeAreaNameRequestBodyCopyWithImpl<$Res,
        _$ChangeAreaNameRequestBodyImpl>
    implements _$$ChangeAreaNameRequestBodyImplCopyWith<$Res> {
  __$$ChangeAreaNameRequestBodyImplCopyWithImpl(
      _$ChangeAreaNameRequestBodyImpl _value,
      $Res Function(_$ChangeAreaNameRequestBodyImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? name = null,
    Object? areaId = null,
  }) {
    return _then(_$ChangeAreaNameRequestBodyImpl(
      name: null == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
      areaId: null == areaId
          ? _value.areaId
          : areaId // ignore: cast_nullable_to_non_nullable
              as int,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$ChangeAreaNameRequestBodyImpl implements _ChangeAreaNameRequestBody {
  const _$ChangeAreaNameRequestBodyImpl(
      {@JsonKey(name: 'name') required this.name,
      @JsonKey(name: 'area_id') required this.areaId});

  factory _$ChangeAreaNameRequestBodyImpl.fromJson(Map<String, dynamic> json) =>
      _$$ChangeAreaNameRequestBodyImplFromJson(json);

  @override
  @JsonKey(name: 'name')
  final String name;
  @override
  @JsonKey(name: 'area_id')
  final int areaId;

  @override
  String toString() {
    return 'ChangeAreaNameRequestBody(name: $name, areaId: $areaId)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ChangeAreaNameRequestBodyImpl &&
            (identical(other.name, name) || other.name == name) &&
            (identical(other.areaId, areaId) || other.areaId == areaId));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, name, areaId);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$ChangeAreaNameRequestBodyImplCopyWith<_$ChangeAreaNameRequestBodyImpl>
      get copyWith => __$$ChangeAreaNameRequestBodyImplCopyWithImpl<
          _$ChangeAreaNameRequestBodyImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$ChangeAreaNameRequestBodyImplToJson(
      this,
    );
  }
}

abstract class _ChangeAreaNameRequestBody implements ChangeAreaNameRequestBody {
  const factory _ChangeAreaNameRequestBody(
          {@JsonKey(name: 'name') required final String name,
          @JsonKey(name: 'area_id') required final int areaId}) =
      _$ChangeAreaNameRequestBodyImpl;

  factory _ChangeAreaNameRequestBody.fromJson(Map<String, dynamic> json) =
      _$ChangeAreaNameRequestBodyImpl.fromJson;

  @override
  @JsonKey(name: 'name')
  String get name;
  @override
  @JsonKey(name: 'area_id')
  int get areaId;
  @override
  @JsonKey(ignore: true)
  _$$ChangeAreaNameRequestBodyImplCopyWith<_$ChangeAreaNameRequestBodyImpl>
      get copyWith => throw _privateConstructorUsedError;
}
