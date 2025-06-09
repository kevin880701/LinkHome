// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'DeviceMemberRequestParams.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

DeviceMemberRequestParams _$DeviceMemberRequestParamsFromJson(
    Map<String, dynamic> json) {
  return _DeviceMemberRequestParams.fromJson(json);
}

/// @nodoc
mixin _$DeviceMemberRequestParams {
  @JsonKey(name: 'place_id')
  int get placeId => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $DeviceMemberRequestParamsCopyWith<DeviceMemberRequestParams> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $DeviceMemberRequestParamsCopyWith<$Res> {
  factory $DeviceMemberRequestParamsCopyWith(DeviceMemberRequestParams value,
          $Res Function(DeviceMemberRequestParams) then) =
      _$DeviceMemberRequestParamsCopyWithImpl<$Res, DeviceMemberRequestParams>;
  @useResult
  $Res call({@JsonKey(name: 'place_id') int placeId});
}

/// @nodoc
class _$DeviceMemberRequestParamsCopyWithImpl<$Res,
        $Val extends DeviceMemberRequestParams>
    implements $DeviceMemberRequestParamsCopyWith<$Res> {
  _$DeviceMemberRequestParamsCopyWithImpl(this._value, this._then);

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
abstract class _$$DeviceMemberRequestParamsImplCopyWith<$Res>
    implements $DeviceMemberRequestParamsCopyWith<$Res> {
  factory _$$DeviceMemberRequestParamsImplCopyWith(
          _$DeviceMemberRequestParamsImpl value,
          $Res Function(_$DeviceMemberRequestParamsImpl) then) =
      __$$DeviceMemberRequestParamsImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({@JsonKey(name: 'place_id') int placeId});
}

/// @nodoc
class __$$DeviceMemberRequestParamsImplCopyWithImpl<$Res>
    extends _$DeviceMemberRequestParamsCopyWithImpl<$Res,
        _$DeviceMemberRequestParamsImpl>
    implements _$$DeviceMemberRequestParamsImplCopyWith<$Res> {
  __$$DeviceMemberRequestParamsImplCopyWithImpl(
      _$DeviceMemberRequestParamsImpl _value,
      $Res Function(_$DeviceMemberRequestParamsImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? placeId = null,
  }) {
    return _then(_$DeviceMemberRequestParamsImpl(
      placeId: null == placeId
          ? _value.placeId
          : placeId // ignore: cast_nullable_to_non_nullable
              as int,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$DeviceMemberRequestParamsImpl implements _DeviceMemberRequestParams {
  const _$DeviceMemberRequestParamsImpl(
      {@JsonKey(name: 'place_id') required this.placeId});

  factory _$DeviceMemberRequestParamsImpl.fromJson(Map<String, dynamic> json) =>
      _$$DeviceMemberRequestParamsImplFromJson(json);

  @override
  @JsonKey(name: 'place_id')
  final int placeId;

  @override
  String toString() {
    return 'DeviceMemberRequestParams(placeId: $placeId)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$DeviceMemberRequestParamsImpl &&
            (identical(other.placeId, placeId) || other.placeId == placeId));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, placeId);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$DeviceMemberRequestParamsImplCopyWith<_$DeviceMemberRequestParamsImpl>
      get copyWith => __$$DeviceMemberRequestParamsImplCopyWithImpl<
          _$DeviceMemberRequestParamsImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$DeviceMemberRequestParamsImplToJson(
      this,
    );
  }
}

abstract class _DeviceMemberRequestParams implements DeviceMemberRequestParams {
  const factory _DeviceMemberRequestParams(
          {@JsonKey(name: 'place_id') required final int placeId}) =
      _$DeviceMemberRequestParamsImpl;

  factory _DeviceMemberRequestParams.fromJson(Map<String, dynamic> json) =
      _$DeviceMemberRequestParamsImpl.fromJson;

  @override
  @JsonKey(name: 'place_id')
  int get placeId;
  @override
  @JsonKey(ignore: true)
  _$$DeviceMemberRequestParamsImplCopyWith<_$DeviceMemberRequestParamsImpl>
      get copyWith => throw _privateConstructorUsedError;
}
