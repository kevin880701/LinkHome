// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'GetMemberDevicesRequestParams.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

GetMemberDevicesRequestParams _$GetMemberDevicesRequestParamsFromJson(
    Map<String, dynamic> json) {
  return _GetMemberDevicesRequestParams.fromJson(json);
}

/// @nodoc
mixin _$GetMemberDevicesRequestParams {
  @JsonKey(name: 'place_id')
  int get placeId => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $GetMemberDevicesRequestParamsCopyWith<GetMemberDevicesRequestParams>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $GetMemberDevicesRequestParamsCopyWith<$Res> {
  factory $GetMemberDevicesRequestParamsCopyWith(
          GetMemberDevicesRequestParams value,
          $Res Function(GetMemberDevicesRequestParams) then) =
      _$GetMemberDevicesRequestParamsCopyWithImpl<$Res,
          GetMemberDevicesRequestParams>;
  @useResult
  $Res call({@JsonKey(name: 'place_id') int placeId});
}

/// @nodoc
class _$GetMemberDevicesRequestParamsCopyWithImpl<$Res,
        $Val extends GetMemberDevicesRequestParams>
    implements $GetMemberDevicesRequestParamsCopyWith<$Res> {
  _$GetMemberDevicesRequestParamsCopyWithImpl(this._value, this._then);

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
abstract class _$$GetMemberDevicesRequestParamsImplCopyWith<$Res>
    implements $GetMemberDevicesRequestParamsCopyWith<$Res> {
  factory _$$GetMemberDevicesRequestParamsImplCopyWith(
          _$GetMemberDevicesRequestParamsImpl value,
          $Res Function(_$GetMemberDevicesRequestParamsImpl) then) =
      __$$GetMemberDevicesRequestParamsImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({@JsonKey(name: 'place_id') int placeId});
}

/// @nodoc
class __$$GetMemberDevicesRequestParamsImplCopyWithImpl<$Res>
    extends _$GetMemberDevicesRequestParamsCopyWithImpl<$Res,
        _$GetMemberDevicesRequestParamsImpl>
    implements _$$GetMemberDevicesRequestParamsImplCopyWith<$Res> {
  __$$GetMemberDevicesRequestParamsImplCopyWithImpl(
      _$GetMemberDevicesRequestParamsImpl _value,
      $Res Function(_$GetMemberDevicesRequestParamsImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? placeId = null,
  }) {
    return _then(_$GetMemberDevicesRequestParamsImpl(
      placeId: null == placeId
          ? _value.placeId
          : placeId // ignore: cast_nullable_to_non_nullable
              as int,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$GetMemberDevicesRequestParamsImpl
    implements _GetMemberDevicesRequestParams {
  const _$GetMemberDevicesRequestParamsImpl(
      {@JsonKey(name: 'place_id') required this.placeId});

  factory _$GetMemberDevicesRequestParamsImpl.fromJson(
          Map<String, dynamic> json) =>
      _$$GetMemberDevicesRequestParamsImplFromJson(json);

  @override
  @JsonKey(name: 'place_id')
  final int placeId;

  @override
  String toString() {
    return 'GetMemberDevicesRequestParams(placeId: $placeId)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$GetMemberDevicesRequestParamsImpl &&
            (identical(other.placeId, placeId) || other.placeId == placeId));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, placeId);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$GetMemberDevicesRequestParamsImplCopyWith<
          _$GetMemberDevicesRequestParamsImpl>
      get copyWith => __$$GetMemberDevicesRequestParamsImplCopyWithImpl<
          _$GetMemberDevicesRequestParamsImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$GetMemberDevicesRequestParamsImplToJson(
      this,
    );
  }
}

abstract class _GetMemberDevicesRequestParams
    implements GetMemberDevicesRequestParams {
  const factory _GetMemberDevicesRequestParams(
          {@JsonKey(name: 'place_id') required final int placeId}) =
      _$GetMemberDevicesRequestParamsImpl;

  factory _GetMemberDevicesRequestParams.fromJson(Map<String, dynamic> json) =
      _$GetMemberDevicesRequestParamsImpl.fromJson;

  @override
  @JsonKey(name: 'place_id')
  int get placeId;
  @override
  @JsonKey(ignore: true)
  _$$GetMemberDevicesRequestParamsImplCopyWith<
          _$GetMemberDevicesRequestParamsImpl>
      get copyWith => throw _privateConstructorUsedError;
}
