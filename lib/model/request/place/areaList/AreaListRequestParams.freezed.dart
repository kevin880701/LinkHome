// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'AreaListRequestParams.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

AreaListRequestParams _$AreaListRequestParamsFromJson(
    Map<String, dynamic> json) {
  return _AreaListRequestParams.fromJson(json);
}

/// @nodoc
mixin _$AreaListRequestParams {
  @JsonKey(name: 'place_id')
  int get placeId => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $AreaListRequestParamsCopyWith<AreaListRequestParams> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $AreaListRequestParamsCopyWith<$Res> {
  factory $AreaListRequestParamsCopyWith(AreaListRequestParams value,
          $Res Function(AreaListRequestParams) then) =
      _$AreaListRequestParamsCopyWithImpl<$Res, AreaListRequestParams>;
  @useResult
  $Res call({@JsonKey(name: 'place_id') int placeId});
}

/// @nodoc
class _$AreaListRequestParamsCopyWithImpl<$Res,
        $Val extends AreaListRequestParams>
    implements $AreaListRequestParamsCopyWith<$Res> {
  _$AreaListRequestParamsCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? placeId = null,
  }) {
    return _then(_value.copyWith(
      placeId: null == placeId
          ? _value.placeId
          : placeId // ignore: cast_nullable_to_non_nullable
              as int,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$AreaListRequestParamsImplCopyWith<$Res>
    implements $AreaListRequestParamsCopyWith<$Res> {
  factory _$$AreaListRequestParamsImplCopyWith(
          _$AreaListRequestParamsImpl value,
          $Res Function(_$AreaListRequestParamsImpl) then) =
      __$$AreaListRequestParamsImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({@JsonKey(name: 'place_id') int placeId});
}

/// @nodoc
class __$$AreaListRequestParamsImplCopyWithImpl<$Res>
    extends _$AreaListRequestParamsCopyWithImpl<$Res,
        _$AreaListRequestParamsImpl>
    implements _$$AreaListRequestParamsImplCopyWith<$Res> {
  __$$AreaListRequestParamsImplCopyWithImpl(_$AreaListRequestParamsImpl _value,
      $Res Function(_$AreaListRequestParamsImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? placeId = null,
  }) {
    return _then(_$AreaListRequestParamsImpl(
      placeId: null == placeId
          ? _value.placeId
          : placeId // ignore: cast_nullable_to_non_nullable
              as int,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$AreaListRequestParamsImpl implements _AreaListRequestParams {
  const _$AreaListRequestParamsImpl(
      {@JsonKey(name: 'place_id') required this.placeId});

  factory _$AreaListRequestParamsImpl.fromJson(Map<String, dynamic> json) =>
      _$$AreaListRequestParamsImplFromJson(json);

  @override
  @JsonKey(name: 'place_id')
  final int placeId;

  @override
  String toString() {
    return 'AreaListRequestParams(placeId: $placeId)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$AreaListRequestParamsImpl &&
            (identical(other.placeId, placeId) || other.placeId == placeId));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, placeId);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$AreaListRequestParamsImplCopyWith<_$AreaListRequestParamsImpl>
      get copyWith => __$$AreaListRequestParamsImplCopyWithImpl<
          _$AreaListRequestParamsImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$AreaListRequestParamsImplToJson(
      this,
    );
  }
}

abstract class _AreaListRequestParams implements AreaListRequestParams {
  const factory _AreaListRequestParams(
          {@JsonKey(name: 'place_id') required final int placeId}) =
      _$AreaListRequestParamsImpl;

  factory _AreaListRequestParams.fromJson(Map<String, dynamic> json) =
      _$AreaListRequestParamsImpl.fromJson;

  @override
  @JsonKey(name: 'place_id')
  int get placeId;
  @override
  @JsonKey(ignore: true)
  _$$AreaListRequestParamsImplCopyWith<_$AreaListRequestParamsImpl>
      get copyWith => throw _privateConstructorUsedError;
}
