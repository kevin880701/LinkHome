// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'HomeDeviceInfoResponse.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

HomeDeviceInfoResponse _$HomeDeviceInfoResponseFromJson(
    Map<String, dynamic> json) {
  return _HomeDeviceInfoResponse.fromJson(json);
}

/// @nodoc
mixin _$HomeDeviceInfoResponse {
  @JsonKey(name: 'device_id')
  int get deviceId => throw _privateConstructorUsedError;
  @JsonKey(name: 'mac')
  String? get mac => throw _privateConstructorUsedError;
  @JsonKey(name: 'type')
  int get type => throw _privateConstructorUsedError;
  @JsonKey(name: 'name')
  String get name => throw _privateConstructorUsedError;
  @JsonKey(name: 'place_id')
  int? get placeId => throw _privateConstructorUsedError;
  @JsonKey(name: 'place_name')
  String? get placeName => throw _privateConstructorUsedError;
  @JsonKey(name: 'area_id')
  int? get areaId => throw _privateConstructorUsedError;
  @JsonKey(name: 'area_name')
  String? get areaName => throw _privateConstructorUsedError;
  @JsonKey(name: 'model_id')
  int? get modelId => throw _privateConstructorUsedError;
  @JsonKey(name: 'model_name')
  String? get modelName => throw _privateConstructorUsedError;
  @JsonKey(name: 'model_image_url')
  String get modelImageUrl => throw _privateConstructorUsedError;
  @JsonKey(name: 'online')
  int? get online => throw _privateConstructorUsedError;
  @JsonKey(name: 'power')
  int? get power => throw _privateConstructorUsedError;
  @JsonKey(name: 'error')
  int? get error => throw _privateConstructorUsedError;
  @JsonKey(name: 'installation_date')
  String? get installationDate => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $HomeDeviceInfoResponseCopyWith<HomeDeviceInfoResponse> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $HomeDeviceInfoResponseCopyWith<$Res> {
  factory $HomeDeviceInfoResponseCopyWith(HomeDeviceInfoResponse value,
          $Res Function(HomeDeviceInfoResponse) then) =
      _$HomeDeviceInfoResponseCopyWithImpl<$Res, HomeDeviceInfoResponse>;
  @useResult
  $Res call(
      {@JsonKey(name: 'device_id') int deviceId,
      @JsonKey(name: 'mac') String? mac,
      @JsonKey(name: 'type') int type,
      @JsonKey(name: 'name') String name,
      @JsonKey(name: 'place_id') int? placeId,
      @JsonKey(name: 'place_name') String? placeName,
      @JsonKey(name: 'area_id') int? areaId,
      @JsonKey(name: 'area_name') String? areaName,
      @JsonKey(name: 'model_id') int? modelId,
      @JsonKey(name: 'model_name') String? modelName,
      @JsonKey(name: 'model_image_url') String modelImageUrl,
      @JsonKey(name: 'online') int? online,
      @JsonKey(name: 'power') int? power,
      @JsonKey(name: 'error') int? error,
      @JsonKey(name: 'installation_date') String? installationDate});
}

/// @nodoc
class _$HomeDeviceInfoResponseCopyWithImpl<$Res,
        $Val extends HomeDeviceInfoResponse>
    implements $HomeDeviceInfoResponseCopyWith<$Res> {
  _$HomeDeviceInfoResponseCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? deviceId = null,
    Object? mac = freezed,
    Object? type = null,
    Object? name = null,
    Object? placeId = freezed,
    Object? placeName = freezed,
    Object? areaId = freezed,
    Object? areaName = freezed,
    Object? modelId = freezed,
    Object? modelName = freezed,
    Object? modelImageUrl = null,
    Object? online = freezed,
    Object? power = freezed,
    Object? error = freezed,
    Object? installationDate = freezed,
  }) {
    return _then(_value.copyWith(
      deviceId: null == deviceId
          ? _value.deviceId
          : deviceId // ignore: cast_nullable_to_non_nullable
              as int,
      mac: freezed == mac
          ? _value.mac
          : mac // ignore: cast_nullable_to_non_nullable
              as String?,
      type: null == type
          ? _value.type
          : type // ignore: cast_nullable_to_non_nullable
              as int,
      name: null == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
      placeId: freezed == placeId
          ? _value.placeId
          : placeId // ignore: cast_nullable_to_non_nullable
              as int?,
      placeName: freezed == placeName
          ? _value.placeName
          : placeName // ignore: cast_nullable_to_non_nullable
              as String?,
      areaId: freezed == areaId
          ? _value.areaId
          : areaId // ignore: cast_nullable_to_non_nullable
              as int?,
      areaName: freezed == areaName
          ? _value.areaName
          : areaName // ignore: cast_nullable_to_non_nullable
              as String?,
      modelId: freezed == modelId
          ? _value.modelId
          : modelId // ignore: cast_nullable_to_non_nullable
              as int?,
      modelName: freezed == modelName
          ? _value.modelName
          : modelName // ignore: cast_nullable_to_non_nullable
              as String?,
      modelImageUrl: null == modelImageUrl
          ? _value.modelImageUrl
          : modelImageUrl // ignore: cast_nullable_to_non_nullable
              as String,
      online: freezed == online
          ? _value.online
          : online // ignore: cast_nullable_to_non_nullable
              as int?,
      power: freezed == power
          ? _value.power
          : power // ignore: cast_nullable_to_non_nullable
              as int?,
      error: freezed == error
          ? _value.error
          : error // ignore: cast_nullable_to_non_nullable
              as int?,
      installationDate: freezed == installationDate
          ? _value.installationDate
          : installationDate // ignore: cast_nullable_to_non_nullable
              as String?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$HomeDeviceInfoResponseImplCopyWith<$Res>
    implements $HomeDeviceInfoResponseCopyWith<$Res> {
  factory _$$HomeDeviceInfoResponseImplCopyWith(
          _$HomeDeviceInfoResponseImpl value,
          $Res Function(_$HomeDeviceInfoResponseImpl) then) =
      __$$HomeDeviceInfoResponseImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {@JsonKey(name: 'device_id') int deviceId,
      @JsonKey(name: 'mac') String? mac,
      @JsonKey(name: 'type') int type,
      @JsonKey(name: 'name') String name,
      @JsonKey(name: 'place_id') int? placeId,
      @JsonKey(name: 'place_name') String? placeName,
      @JsonKey(name: 'area_id') int? areaId,
      @JsonKey(name: 'area_name') String? areaName,
      @JsonKey(name: 'model_id') int? modelId,
      @JsonKey(name: 'model_name') String? modelName,
      @JsonKey(name: 'model_image_url') String modelImageUrl,
      @JsonKey(name: 'online') int? online,
      @JsonKey(name: 'power') int? power,
      @JsonKey(name: 'error') int? error,
      @JsonKey(name: 'installation_date') String? installationDate});
}

/// @nodoc
class __$$HomeDeviceInfoResponseImplCopyWithImpl<$Res>
    extends _$HomeDeviceInfoResponseCopyWithImpl<$Res,
        _$HomeDeviceInfoResponseImpl>
    implements _$$HomeDeviceInfoResponseImplCopyWith<$Res> {
  __$$HomeDeviceInfoResponseImplCopyWithImpl(
      _$HomeDeviceInfoResponseImpl _value,
      $Res Function(_$HomeDeviceInfoResponseImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? deviceId = null,
    Object? mac = freezed,
    Object? type = null,
    Object? name = null,
    Object? placeId = freezed,
    Object? placeName = freezed,
    Object? areaId = freezed,
    Object? areaName = freezed,
    Object? modelId = freezed,
    Object? modelName = freezed,
    Object? modelImageUrl = null,
    Object? online = freezed,
    Object? power = freezed,
    Object? error = freezed,
    Object? installationDate = freezed,
  }) {
    return _then(_$HomeDeviceInfoResponseImpl(
      deviceId: null == deviceId
          ? _value.deviceId
          : deviceId // ignore: cast_nullable_to_non_nullable
              as int,
      mac: freezed == mac
          ? _value.mac
          : mac // ignore: cast_nullable_to_non_nullable
              as String?,
      type: null == type
          ? _value.type
          : type // ignore: cast_nullable_to_non_nullable
              as int,
      name: null == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
      placeId: freezed == placeId
          ? _value.placeId
          : placeId // ignore: cast_nullable_to_non_nullable
              as int?,
      placeName: freezed == placeName
          ? _value.placeName
          : placeName // ignore: cast_nullable_to_non_nullable
              as String?,
      areaId: freezed == areaId
          ? _value.areaId
          : areaId // ignore: cast_nullable_to_non_nullable
              as int?,
      areaName: freezed == areaName
          ? _value.areaName
          : areaName // ignore: cast_nullable_to_non_nullable
              as String?,
      modelId: freezed == modelId
          ? _value.modelId
          : modelId // ignore: cast_nullable_to_non_nullable
              as int?,
      modelName: freezed == modelName
          ? _value.modelName
          : modelName // ignore: cast_nullable_to_non_nullable
              as String?,
      modelImageUrl: null == modelImageUrl
          ? _value.modelImageUrl
          : modelImageUrl // ignore: cast_nullable_to_non_nullable
              as String,
      online: freezed == online
          ? _value.online
          : online // ignore: cast_nullable_to_non_nullable
              as int?,
      power: freezed == power
          ? _value.power
          : power // ignore: cast_nullable_to_non_nullable
              as int?,
      error: freezed == error
          ? _value.error
          : error // ignore: cast_nullable_to_non_nullable
              as int?,
      installationDate: freezed == installationDate
          ? _value.installationDate
          : installationDate // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$HomeDeviceInfoResponseImpl implements _HomeDeviceInfoResponse {
  const _$HomeDeviceInfoResponseImpl(
      {@JsonKey(name: 'device_id') required this.deviceId,
      @JsonKey(name: 'mac') this.mac,
      @JsonKey(name: 'type') required this.type,
      @JsonKey(name: 'name') required this.name,
      @JsonKey(name: 'place_id') this.placeId,
      @JsonKey(name: 'place_name') this.placeName,
      @JsonKey(name: 'area_id') this.areaId,
      @JsonKey(name: 'area_name') this.areaName,
      @JsonKey(name: 'model_id') this.modelId,
      @JsonKey(name: 'model_name') this.modelName,
      @JsonKey(name: 'model_image_url') required this.modelImageUrl,
      @JsonKey(name: 'online') this.online,
      @JsonKey(name: 'power') this.power,
      @JsonKey(name: 'error') this.error,
      @JsonKey(name: 'installation_date') this.installationDate});

  factory _$HomeDeviceInfoResponseImpl.fromJson(Map<String, dynamic> json) =>
      _$$HomeDeviceInfoResponseImplFromJson(json);

  @override
  @JsonKey(name: 'device_id')
  final int deviceId;
  @override
  @JsonKey(name: 'mac')
  final String? mac;
  @override
  @JsonKey(name: 'type')
  final int type;
  @override
  @JsonKey(name: 'name')
  final String name;
  @override
  @JsonKey(name: 'place_id')
  final int? placeId;
  @override
  @JsonKey(name: 'place_name')
  final String? placeName;
  @override
  @JsonKey(name: 'area_id')
  final int? areaId;
  @override
  @JsonKey(name: 'area_name')
  final String? areaName;
  @override
  @JsonKey(name: 'model_id')
  final int? modelId;
  @override
  @JsonKey(name: 'model_name')
  final String? modelName;
  @override
  @JsonKey(name: 'model_image_url')
  final String modelImageUrl;
  @override
  @JsonKey(name: 'online')
  final int? online;
  @override
  @JsonKey(name: 'power')
  final int? power;
  @override
  @JsonKey(name: 'error')
  final int? error;
  @override
  @JsonKey(name: 'installation_date')
  final String? installationDate;

  @override
  String toString() {
    return 'HomeDeviceInfoResponse(deviceId: $deviceId, mac: $mac, type: $type, name: $name, placeId: $placeId, placeName: $placeName, areaId: $areaId, areaName: $areaName, modelId: $modelId, modelName: $modelName, modelImageUrl: $modelImageUrl, online: $online, power: $power, error: $error, installationDate: $installationDate)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$HomeDeviceInfoResponseImpl &&
            (identical(other.deviceId, deviceId) ||
                other.deviceId == deviceId) &&
            (identical(other.mac, mac) || other.mac == mac) &&
            (identical(other.type, type) || other.type == type) &&
            (identical(other.name, name) || other.name == name) &&
            (identical(other.placeId, placeId) || other.placeId == placeId) &&
            (identical(other.placeName, placeName) ||
                other.placeName == placeName) &&
            (identical(other.areaId, areaId) || other.areaId == areaId) &&
            (identical(other.areaName, areaName) ||
                other.areaName == areaName) &&
            (identical(other.modelId, modelId) || other.modelId == modelId) &&
            (identical(other.modelName, modelName) ||
                other.modelName == modelName) &&
            (identical(other.modelImageUrl, modelImageUrl) ||
                other.modelImageUrl == modelImageUrl) &&
            (identical(other.online, online) || other.online == online) &&
            (identical(other.power, power) || other.power == power) &&
            (identical(other.error, error) || other.error == error) &&
            (identical(other.installationDate, installationDate) ||
                other.installationDate == installationDate));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      deviceId,
      mac,
      type,
      name,
      placeId,
      placeName,
      areaId,
      areaName,
      modelId,
      modelName,
      modelImageUrl,
      online,
      power,
      error,
      installationDate);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$HomeDeviceInfoResponseImplCopyWith<_$HomeDeviceInfoResponseImpl>
      get copyWith => __$$HomeDeviceInfoResponseImplCopyWithImpl<
          _$HomeDeviceInfoResponseImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$HomeDeviceInfoResponseImplToJson(
      this,
    );
  }
}

abstract class _HomeDeviceInfoResponse implements HomeDeviceInfoResponse {
  const factory _HomeDeviceInfoResponse(
          {@JsonKey(name: 'device_id') required final int deviceId,
          @JsonKey(name: 'mac') final String? mac,
          @JsonKey(name: 'type') required final int type,
          @JsonKey(name: 'name') required final String name,
          @JsonKey(name: 'place_id') final int? placeId,
          @JsonKey(name: 'place_name') final String? placeName,
          @JsonKey(name: 'area_id') final int? areaId,
          @JsonKey(name: 'area_name') final String? areaName,
          @JsonKey(name: 'model_id') final int? modelId,
          @JsonKey(name: 'model_name') final String? modelName,
          @JsonKey(name: 'model_image_url') required final String modelImageUrl,
          @JsonKey(name: 'online') final int? online,
          @JsonKey(name: 'power') final int? power,
          @JsonKey(name: 'error') final int? error,
          @JsonKey(name: 'installation_date') final String? installationDate}) =
      _$HomeDeviceInfoResponseImpl;

  factory _HomeDeviceInfoResponse.fromJson(Map<String, dynamic> json) =
      _$HomeDeviceInfoResponseImpl.fromJson;

  @override
  @JsonKey(name: 'device_id')
  int get deviceId;
  @override
  @JsonKey(name: 'mac')
  String? get mac;
  @override
  @JsonKey(name: 'type')
  int get type;
  @override
  @JsonKey(name: 'name')
  String get name;
  @override
  @JsonKey(name: 'place_id')
  int? get placeId;
  @override
  @JsonKey(name: 'place_name')
  String? get placeName;
  @override
  @JsonKey(name: 'area_id')
  int? get areaId;
  @override
  @JsonKey(name: 'area_name')
  String? get areaName;
  @override
  @JsonKey(name: 'model_id')
  int? get modelId;
  @override
  @JsonKey(name: 'model_name')
  String? get modelName;
  @override
  @JsonKey(name: 'model_image_url')
  String get modelImageUrl;
  @override
  @JsonKey(name: 'online')
  int? get online;
  @override
  @JsonKey(name: 'power')
  int? get power;
  @override
  @JsonKey(name: 'error')
  int? get error;
  @override
  @JsonKey(name: 'installation_date')
  String? get installationDate;
  @override
  @JsonKey(ignore: true)
  _$$HomeDeviceInfoResponseImplCopyWith<_$HomeDeviceInfoResponseImpl>
      get copyWith => throw _privateConstructorUsedError;
}
