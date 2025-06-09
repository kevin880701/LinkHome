// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'GetSharesResponse.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

GetSharesResponse _$GetSharesResponseFromJson(Map<String, dynamic> json) {
  return _GetSharesResponse.fromJson(json);
}

/// @nodoc
mixin _$GetSharesResponse {
  @JsonKey(name: 'owner')
  String? get owner => throw _privateConstructorUsedError;
  @JsonKey(name: 'place_id')
  int? get placeId => throw _privateConstructorUsedError;
  @JsonKey(name: 'place_name')
  String? get placeName => throw _privateConstructorUsedError;
  @JsonKey(name: 'device_id')
  int get deviceId => throw _privateConstructorUsedError;
  @JsonKey(name: 'names')
  String get names => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $GetSharesResponseCopyWith<GetSharesResponse> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $GetSharesResponseCopyWith<$Res> {
  factory $GetSharesResponseCopyWith(
          GetSharesResponse value, $Res Function(GetSharesResponse) then) =
      _$GetSharesResponseCopyWithImpl<$Res, GetSharesResponse>;
  @useResult
  $Res call(
      {@JsonKey(name: 'owner') String? owner,
      @JsonKey(name: 'place_id') int? placeId,
      @JsonKey(name: 'place_name') String? placeName,
      @JsonKey(name: 'device_id') int deviceId,
      @JsonKey(name: 'names') String names});
}

/// @nodoc
class _$GetSharesResponseCopyWithImpl<$Res, $Val extends GetSharesResponse>
    implements $GetSharesResponseCopyWith<$Res> {
  _$GetSharesResponseCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? owner = freezed,
    Object? placeId = freezed,
    Object? placeName = freezed,
    Object? deviceId = null,
    Object? names = null,
  }) {
    return _then(_value.copyWith(
      owner: freezed == owner
          ? _value.owner
          : owner // ignore: cast_nullable_to_non_nullable
              as String?,
      placeId: freezed == placeId
          ? _value.placeId
          : placeId // ignore: cast_nullable_to_non_nullable
              as int?,
      placeName: freezed == placeName
          ? _value.placeName
          : placeName // ignore: cast_nullable_to_non_nullable
              as String?,
      deviceId: null == deviceId
          ? _value.deviceId
          : deviceId // ignore: cast_nullable_to_non_nullable
              as int,
      names: null == names
          ? _value.names
          : names // ignore: cast_nullable_to_non_nullable
              as String,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$GetSharesResponseImplCopyWith<$Res>
    implements $GetSharesResponseCopyWith<$Res> {
  factory _$$GetSharesResponseImplCopyWith(_$GetSharesResponseImpl value,
          $Res Function(_$GetSharesResponseImpl) then) =
      __$$GetSharesResponseImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {@JsonKey(name: 'owner') String? owner,
      @JsonKey(name: 'place_id') int? placeId,
      @JsonKey(name: 'place_name') String? placeName,
      @JsonKey(name: 'device_id') int deviceId,
      @JsonKey(name: 'names') String names});
}

/// @nodoc
class __$$GetSharesResponseImplCopyWithImpl<$Res>
    extends _$GetSharesResponseCopyWithImpl<$Res, _$GetSharesResponseImpl>
    implements _$$GetSharesResponseImplCopyWith<$Res> {
  __$$GetSharesResponseImplCopyWithImpl(_$GetSharesResponseImpl _value,
      $Res Function(_$GetSharesResponseImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? owner = freezed,
    Object? placeId = freezed,
    Object? placeName = freezed,
    Object? deviceId = null,
    Object? names = null,
  }) {
    return _then(_$GetSharesResponseImpl(
      owner: freezed == owner
          ? _value.owner
          : owner // ignore: cast_nullable_to_non_nullable
              as String?,
      placeId: freezed == placeId
          ? _value.placeId
          : placeId // ignore: cast_nullable_to_non_nullable
              as int?,
      placeName: freezed == placeName
          ? _value.placeName
          : placeName // ignore: cast_nullable_to_non_nullable
              as String?,
      deviceId: null == deviceId
          ? _value.deviceId
          : deviceId // ignore: cast_nullable_to_non_nullable
              as int,
      names: null == names
          ? _value.names
          : names // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$GetSharesResponseImpl implements _GetSharesResponse {
  const _$GetSharesResponseImpl(
      {@JsonKey(name: 'owner') this.owner,
      @JsonKey(name: 'place_id') this.placeId,
      @JsonKey(name: 'place_name') this.placeName,
      @JsonKey(name: 'device_id') required this.deviceId,
      @JsonKey(name: 'names') required this.names});

  factory _$GetSharesResponseImpl.fromJson(Map<String, dynamic> json) =>
      _$$GetSharesResponseImplFromJson(json);

  @override
  @JsonKey(name: 'owner')
  final String? owner;
  @override
  @JsonKey(name: 'place_id')
  final int? placeId;
  @override
  @JsonKey(name: 'place_name')
  final String? placeName;
  @override
  @JsonKey(name: 'device_id')
  final int deviceId;
  @override
  @JsonKey(name: 'names')
  final String names;

  @override
  String toString() {
    return 'GetSharesResponse(owner: $owner, placeId: $placeId, placeName: $placeName, deviceId: $deviceId, names: $names)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$GetSharesResponseImpl &&
            (identical(other.owner, owner) || other.owner == owner) &&
            (identical(other.placeId, placeId) || other.placeId == placeId) &&
            (identical(other.placeName, placeName) ||
                other.placeName == placeName) &&
            (identical(other.deviceId, deviceId) ||
                other.deviceId == deviceId) &&
            (identical(other.names, names) || other.names == names));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode =>
      Object.hash(runtimeType, owner, placeId, placeName, deviceId, names);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$GetSharesResponseImplCopyWith<_$GetSharesResponseImpl> get copyWith =>
      __$$GetSharesResponseImplCopyWithImpl<_$GetSharesResponseImpl>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$GetSharesResponseImplToJson(
      this,
    );
  }
}

abstract class _GetSharesResponse implements GetSharesResponse {
  const factory _GetSharesResponse(
          {@JsonKey(name: 'owner') final String? owner,
          @JsonKey(name: 'place_id') final int? placeId,
          @JsonKey(name: 'place_name') final String? placeName,
          @JsonKey(name: 'device_id') required final int deviceId,
          @JsonKey(name: 'names') required final String names}) =
      _$GetSharesResponseImpl;

  factory _GetSharesResponse.fromJson(Map<String, dynamic> json) =
      _$GetSharesResponseImpl.fromJson;

  @override
  @JsonKey(name: 'owner')
  String? get owner;
  @override
  @JsonKey(name: 'place_id')
  int? get placeId;
  @override
  @JsonKey(name: 'place_name')
  String? get placeName;
  @override
  @JsonKey(name: 'device_id')
  int get deviceId;
  @override
  @JsonKey(name: 'names')
  String get names;
  @override
  @JsonKey(ignore: true)
  _$$GetSharesResponseImplCopyWith<_$GetSharesResponseImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
