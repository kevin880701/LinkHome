// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'DeletePlaceRequestParams.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

DeletePlaceRequestParams _$DeletePlaceRequestParamsFromJson(
    Map<String, dynamic> json) {
  return _DeletePlaceRequestParams.fromJson(json);
}

/// @nodoc
mixin _$DeletePlaceRequestParams {
  @JsonKey(name: 'place_id')
  int get placeId => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $DeletePlaceRequestParamsCopyWith<DeletePlaceRequestParams> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $DeletePlaceRequestParamsCopyWith<$Res> {
  factory $DeletePlaceRequestParamsCopyWith(DeletePlaceRequestParams value,
          $Res Function(DeletePlaceRequestParams) then) =
      _$DeletePlaceRequestParamsCopyWithImpl<$Res, DeletePlaceRequestParams>;
  @useResult
  $Res call({@JsonKey(name: 'place_id') int placeId});
}

/// @nodoc
class _$DeletePlaceRequestParamsCopyWithImpl<$Res,
        $Val extends DeletePlaceRequestParams>
    implements $DeletePlaceRequestParamsCopyWith<$Res> {
  _$DeletePlaceRequestParamsCopyWithImpl(this._value, this._then);

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
abstract class _$$DeletePlaceRequestParamsImplCopyWith<$Res>
    implements $DeletePlaceRequestParamsCopyWith<$Res> {
  factory _$$DeletePlaceRequestParamsImplCopyWith(
          _$DeletePlaceRequestParamsImpl value,
          $Res Function(_$DeletePlaceRequestParamsImpl) then) =
      __$$DeletePlaceRequestParamsImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({@JsonKey(name: 'place_id') int placeId});
}

/// @nodoc
class __$$DeletePlaceRequestParamsImplCopyWithImpl<$Res>
    extends _$DeletePlaceRequestParamsCopyWithImpl<$Res,
        _$DeletePlaceRequestParamsImpl>
    implements _$$DeletePlaceRequestParamsImplCopyWith<$Res> {
  __$$DeletePlaceRequestParamsImplCopyWithImpl(
      _$DeletePlaceRequestParamsImpl _value,
      $Res Function(_$DeletePlaceRequestParamsImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? placeId = null,
  }) {
    return _then(_$DeletePlaceRequestParamsImpl(
      placeId: null == placeId
          ? _value.placeId
          : placeId // ignore: cast_nullable_to_non_nullable
              as int,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$DeletePlaceRequestParamsImpl implements _DeletePlaceRequestParams {
  const _$DeletePlaceRequestParamsImpl(
      {@JsonKey(name: 'place_id') required this.placeId});

  factory _$DeletePlaceRequestParamsImpl.fromJson(Map<String, dynamic> json) =>
      _$$DeletePlaceRequestParamsImplFromJson(json);

  @override
  @JsonKey(name: 'place_id')
  final int placeId;

  @override
  String toString() {
    return 'DeletePlaceRequestParams(placeId: $placeId)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$DeletePlaceRequestParamsImpl &&
            (identical(other.placeId, placeId) || other.placeId == placeId));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, placeId);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$DeletePlaceRequestParamsImplCopyWith<_$DeletePlaceRequestParamsImpl>
      get copyWith => __$$DeletePlaceRequestParamsImplCopyWithImpl<
          _$DeletePlaceRequestParamsImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$DeletePlaceRequestParamsImplToJson(
      this,
    );
  }
}

abstract class _DeletePlaceRequestParams implements DeletePlaceRequestParams {
  const factory _DeletePlaceRequestParams(
          {@JsonKey(name: 'place_id') required final int placeId}) =
      _$DeletePlaceRequestParamsImpl;

  factory _DeletePlaceRequestParams.fromJson(Map<String, dynamic> json) =
      _$DeletePlaceRequestParamsImpl.fromJson;

  @override
  @JsonKey(name: 'place_id')
  int get placeId;
  @override
  @JsonKey(ignore: true)
  _$$DeletePlaceRequestParamsImplCopyWith<_$DeletePlaceRequestParamsImpl>
      get copyWith => throw _privateConstructorUsedError;
}
