// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'DeleteAreaRequestParams.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

DeleteAreaRequestParams _$DeleteAreaRequestParamsFromJson(
    Map<String, dynamic> json) {
  return _DeleteAreaRequestParams.fromJson(json);
}

/// @nodoc
mixin _$DeleteAreaRequestParams {
  @JsonKey(name: 'area_id')
  int get areaId => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $DeleteAreaRequestParamsCopyWith<DeleteAreaRequestParams> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $DeleteAreaRequestParamsCopyWith<$Res> {
  factory $DeleteAreaRequestParamsCopyWith(DeleteAreaRequestParams value,
          $Res Function(DeleteAreaRequestParams) then) =
      _$DeleteAreaRequestParamsCopyWithImpl<$Res, DeleteAreaRequestParams>;
  @useResult
  $Res call({@JsonKey(name: 'area_id') int areaId});
}

/// @nodoc
class _$DeleteAreaRequestParamsCopyWithImpl<$Res,
        $Val extends DeleteAreaRequestParams>
    implements $DeleteAreaRequestParamsCopyWith<$Res> {
  _$DeleteAreaRequestParamsCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? areaId = null,
  }) {
    return _then(_value.copyWith(
      areaId: null == areaId
          ? _value.areaId
          : areaId // ignore: cast_nullable_to_non_nullable
              as int,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$DeleteAreaRequestParamsImplCopyWith<$Res>
    implements $DeleteAreaRequestParamsCopyWith<$Res> {
  factory _$$DeleteAreaRequestParamsImplCopyWith(
          _$DeleteAreaRequestParamsImpl value,
          $Res Function(_$DeleteAreaRequestParamsImpl) then) =
      __$$DeleteAreaRequestParamsImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({@JsonKey(name: 'area_id') int areaId});
}

/// @nodoc
class __$$DeleteAreaRequestParamsImplCopyWithImpl<$Res>
    extends _$DeleteAreaRequestParamsCopyWithImpl<$Res,
        _$DeleteAreaRequestParamsImpl>
    implements _$$DeleteAreaRequestParamsImplCopyWith<$Res> {
  __$$DeleteAreaRequestParamsImplCopyWithImpl(
      _$DeleteAreaRequestParamsImpl _value,
      $Res Function(_$DeleteAreaRequestParamsImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? areaId = null,
  }) {
    return _then(_$DeleteAreaRequestParamsImpl(
      areaId: null == areaId
          ? _value.areaId
          : areaId // ignore: cast_nullable_to_non_nullable
              as int,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$DeleteAreaRequestParamsImpl implements _DeleteAreaRequestParams {
  const _$DeleteAreaRequestParamsImpl(
      {@JsonKey(name: 'area_id') required this.areaId});

  factory _$DeleteAreaRequestParamsImpl.fromJson(Map<String, dynamic> json) =>
      _$$DeleteAreaRequestParamsImplFromJson(json);

  @override
  @JsonKey(name: 'area_id')
  final int areaId;

  @override
  String toString() {
    return 'DeleteAreaRequestParams(areaId: $areaId)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$DeleteAreaRequestParamsImpl &&
            (identical(other.areaId, areaId) || other.areaId == areaId));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, areaId);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$DeleteAreaRequestParamsImplCopyWith<_$DeleteAreaRequestParamsImpl>
      get copyWith => __$$DeleteAreaRequestParamsImplCopyWithImpl<
          _$DeleteAreaRequestParamsImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$DeleteAreaRequestParamsImplToJson(
      this,
    );
  }
}

abstract class _DeleteAreaRequestParams implements DeleteAreaRequestParams {
  const factory _DeleteAreaRequestParams(
          {@JsonKey(name: 'area_id') required final int areaId}) =
      _$DeleteAreaRequestParamsImpl;

  factory _DeleteAreaRequestParams.fromJson(Map<String, dynamic> json) =
      _$DeleteAreaRequestParamsImpl.fromJson;

  @override
  @JsonKey(name: 'area_id')
  int get areaId;
  @override
  @JsonKey(ignore: true)
  _$$DeleteAreaRequestParamsImplCopyWith<_$DeleteAreaRequestParamsImpl>
      get copyWith => throw _privateConstructorUsedError;
}
