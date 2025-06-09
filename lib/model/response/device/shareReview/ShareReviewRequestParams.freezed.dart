// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'ShareReviewRequestParams.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

ShareReviewRequestParams _$ShareReviewRequestParamsFromJson(
    Map<String, dynamic> json) {
  return _ShareReviewRequestParams.fromJson(json);
}

/// @nodoc
mixin _$ShareReviewRequestParams {
  @JsonKey(name: 'place_id')
  int? get placeId => throw _privateConstructorUsedError;
  @JsonKey(name: 'device_id')
  int get deviceId => throw _privateConstructorUsedError;
  @JsonKey(name: 'accept')
  int get accept => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $ShareReviewRequestParamsCopyWith<ShareReviewRequestParams> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ShareReviewRequestParamsCopyWith<$Res> {
  factory $ShareReviewRequestParamsCopyWith(ShareReviewRequestParams value,
          $Res Function(ShareReviewRequestParams) then) =
      _$ShareReviewRequestParamsCopyWithImpl<$Res, ShareReviewRequestParams>;
  @useResult
  $Res call(
      {@JsonKey(name: 'place_id') int? placeId,
      @JsonKey(name: 'device_id') int deviceId,
      @JsonKey(name: 'accept') int accept});
}

/// @nodoc
class _$ShareReviewRequestParamsCopyWithImpl<$Res,
        $Val extends ShareReviewRequestParams>
    implements $ShareReviewRequestParamsCopyWith<$Res> {
  _$ShareReviewRequestParamsCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? placeId = freezed,
    Object? deviceId = null,
    Object? accept = null,
  }) {
    return _then(_value.copyWith(
      placeId: freezed == placeId
          ? _value.placeId
          : placeId // ignore: cast_nullable_to_non_nullable
              as int?,
      deviceId: null == deviceId
          ? _value.deviceId
          : deviceId // ignore: cast_nullable_to_non_nullable
              as int,
      accept: null == accept
          ? _value.accept
          : accept // ignore: cast_nullable_to_non_nullable
              as int,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$ShareReviewRequestParamsImplCopyWith<$Res>
    implements $ShareReviewRequestParamsCopyWith<$Res> {
  factory _$$ShareReviewRequestParamsImplCopyWith(
          _$ShareReviewRequestParamsImpl value,
          $Res Function(_$ShareReviewRequestParamsImpl) then) =
      __$$ShareReviewRequestParamsImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {@JsonKey(name: 'place_id') int? placeId,
      @JsonKey(name: 'device_id') int deviceId,
      @JsonKey(name: 'accept') int accept});
}

/// @nodoc
class __$$ShareReviewRequestParamsImplCopyWithImpl<$Res>
    extends _$ShareReviewRequestParamsCopyWithImpl<$Res,
        _$ShareReviewRequestParamsImpl>
    implements _$$ShareReviewRequestParamsImplCopyWith<$Res> {
  __$$ShareReviewRequestParamsImplCopyWithImpl(
      _$ShareReviewRequestParamsImpl _value,
      $Res Function(_$ShareReviewRequestParamsImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? placeId = freezed,
    Object? deviceId = null,
    Object? accept = null,
  }) {
    return _then(_$ShareReviewRequestParamsImpl(
      placeId: freezed == placeId
          ? _value.placeId
          : placeId // ignore: cast_nullable_to_non_nullable
              as int?,
      deviceId: null == deviceId
          ? _value.deviceId
          : deviceId // ignore: cast_nullable_to_non_nullable
              as int,
      accept: null == accept
          ? _value.accept
          : accept // ignore: cast_nullable_to_non_nullable
              as int,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$ShareReviewRequestParamsImpl implements _ShareReviewRequestParams {
  const _$ShareReviewRequestParamsImpl(
      {@JsonKey(name: 'place_id') this.placeId,
      @JsonKey(name: 'device_id') required this.deviceId,
      @JsonKey(name: 'accept') required this.accept});

  factory _$ShareReviewRequestParamsImpl.fromJson(Map<String, dynamic> json) =>
      _$$ShareReviewRequestParamsImplFromJson(json);

  @override
  @JsonKey(name: 'place_id')
  final int? placeId;
  @override
  @JsonKey(name: 'device_id')
  final int deviceId;
  @override
  @JsonKey(name: 'accept')
  final int accept;

  @override
  String toString() {
    return 'ShareReviewRequestParams(placeId: $placeId, deviceId: $deviceId, accept: $accept)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ShareReviewRequestParamsImpl &&
            (identical(other.placeId, placeId) || other.placeId == placeId) &&
            (identical(other.deviceId, deviceId) ||
                other.deviceId == deviceId) &&
            (identical(other.accept, accept) || other.accept == accept));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, placeId, deviceId, accept);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$ShareReviewRequestParamsImplCopyWith<_$ShareReviewRequestParamsImpl>
      get copyWith => __$$ShareReviewRequestParamsImplCopyWithImpl<
          _$ShareReviewRequestParamsImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$ShareReviewRequestParamsImplToJson(
      this,
    );
  }
}

abstract class _ShareReviewRequestParams implements ShareReviewRequestParams {
  const factory _ShareReviewRequestParams(
          {@JsonKey(name: 'place_id') final int? placeId,
          @JsonKey(name: 'device_id') required final int deviceId,
          @JsonKey(name: 'accept') required final int accept}) =
      _$ShareReviewRequestParamsImpl;

  factory _ShareReviewRequestParams.fromJson(Map<String, dynamic> json) =
      _$ShareReviewRequestParamsImpl.fromJson;

  @override
  @JsonKey(name: 'place_id')
  int? get placeId;
  @override
  @JsonKey(name: 'device_id')
  int get deviceId;
  @override
  @JsonKey(name: 'accept')
  int get accept;
  @override
  @JsonKey(ignore: true)
  _$$ShareReviewRequestParamsImplCopyWith<_$ShareReviewRequestParamsImpl>
      get copyWith => throw _privateConstructorUsedError;
}
