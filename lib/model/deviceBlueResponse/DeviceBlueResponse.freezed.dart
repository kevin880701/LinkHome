// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'DeviceBlueResponse.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

DeviceBlueResponse _$DeviceBlueResponseFromJson(Map<String, dynamic> json) {
  return _DeviceBlueResponse.fromJson(json);
}

/// @nodoc
mixin _$DeviceBlueResponse {
  @JsonKey(name: 'cmd')
  String get cmd => throw _privateConstructorUsedError;
  int? get result => throw _privateConstructorUsedError;
  String? get model => throw _privateConstructorUsedError;
  String? get system => throw _privateConstructorUsedError;
  String? get version => throw _privateConstructorUsedError;
  String? get id => throw _privateConstructorUsedError;
  String? get ip => throw _privateConstructorUsedError;
  String? get name => throw _privateConstructorUsedError;
  String? get ssid => throw _privateConstructorUsedError;
  @JsonKey(name: 'model_id')
  String? get modelId => throw _privateConstructorUsedError;
  int? get rssi => throw _privateConstructorUsedError;
  @JsonKey(name: 'data')
  List<WifiData>? get data => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $DeviceBlueResponseCopyWith<DeviceBlueResponse> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $DeviceBlueResponseCopyWith<$Res> {
  factory $DeviceBlueResponseCopyWith(
          DeviceBlueResponse value, $Res Function(DeviceBlueResponse) then) =
      _$DeviceBlueResponseCopyWithImpl<$Res, DeviceBlueResponse>;
  @useResult
  $Res call(
      {@JsonKey(name: 'cmd') String cmd,
      int? result,
      String? model,
      String? system,
      String? version,
      String? id,
      String? ip,
      String? name,
      String? ssid,
      @JsonKey(name: 'model_id') String? modelId,
      int? rssi,
      @JsonKey(name: 'data') List<WifiData>? data});
}

/// @nodoc
class _$DeviceBlueResponseCopyWithImpl<$Res, $Val extends DeviceBlueResponse>
    implements $DeviceBlueResponseCopyWith<$Res> {
  _$DeviceBlueResponseCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? cmd = null,
    Object? result = freezed,
    Object? model = freezed,
    Object? system = freezed,
    Object? version = freezed,
    Object? id = freezed,
    Object? ip = freezed,
    Object? name = freezed,
    Object? ssid = freezed,
    Object? modelId = freezed,
    Object? rssi = freezed,
    Object? data = freezed,
  }) {
    return _then(_value.copyWith(
      cmd: null == cmd
          ? _value.cmd
          : cmd // ignore: cast_nullable_to_non_nullable
              as String,
      result: freezed == result
          ? _value.result
          : result // ignore: cast_nullable_to_non_nullable
              as int?,
      model: freezed == model
          ? _value.model
          : model // ignore: cast_nullable_to_non_nullable
              as String?,
      system: freezed == system
          ? _value.system
          : system // ignore: cast_nullable_to_non_nullable
              as String?,
      version: freezed == version
          ? _value.version
          : version // ignore: cast_nullable_to_non_nullable
              as String?,
      id: freezed == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String?,
      ip: freezed == ip
          ? _value.ip
          : ip // ignore: cast_nullable_to_non_nullable
              as String?,
      name: freezed == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String?,
      ssid: freezed == ssid
          ? _value.ssid
          : ssid // ignore: cast_nullable_to_non_nullable
              as String?,
      modelId: freezed == modelId
          ? _value.modelId
          : modelId // ignore: cast_nullable_to_non_nullable
              as String?,
      rssi: freezed == rssi
          ? _value.rssi
          : rssi // ignore: cast_nullable_to_non_nullable
              as int?,
      data: freezed == data
          ? _value.data
          : data // ignore: cast_nullable_to_non_nullable
              as List<WifiData>?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$DeviceBlueResponseImplCopyWith<$Res>
    implements $DeviceBlueResponseCopyWith<$Res> {
  factory _$$DeviceBlueResponseImplCopyWith(_$DeviceBlueResponseImpl value,
          $Res Function(_$DeviceBlueResponseImpl) then) =
      __$$DeviceBlueResponseImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {@JsonKey(name: 'cmd') String cmd,
      int? result,
      String? model,
      String? system,
      String? version,
      String? id,
      String? ip,
      String? name,
      String? ssid,
      @JsonKey(name: 'model_id') String? modelId,
      int? rssi,
      @JsonKey(name: 'data') List<WifiData>? data});
}

/// @nodoc
class __$$DeviceBlueResponseImplCopyWithImpl<$Res>
    extends _$DeviceBlueResponseCopyWithImpl<$Res, _$DeviceBlueResponseImpl>
    implements _$$DeviceBlueResponseImplCopyWith<$Res> {
  __$$DeviceBlueResponseImplCopyWithImpl(_$DeviceBlueResponseImpl _value,
      $Res Function(_$DeviceBlueResponseImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? cmd = null,
    Object? result = freezed,
    Object? model = freezed,
    Object? system = freezed,
    Object? version = freezed,
    Object? id = freezed,
    Object? ip = freezed,
    Object? name = freezed,
    Object? ssid = freezed,
    Object? modelId = freezed,
    Object? rssi = freezed,
    Object? data = freezed,
  }) {
    return _then(_$DeviceBlueResponseImpl(
      cmd: null == cmd
          ? _value.cmd
          : cmd // ignore: cast_nullable_to_non_nullable
              as String,
      result: freezed == result
          ? _value.result
          : result // ignore: cast_nullable_to_non_nullable
              as int?,
      model: freezed == model
          ? _value.model
          : model // ignore: cast_nullable_to_non_nullable
              as String?,
      system: freezed == system
          ? _value.system
          : system // ignore: cast_nullable_to_non_nullable
              as String?,
      version: freezed == version
          ? _value.version
          : version // ignore: cast_nullable_to_non_nullable
              as String?,
      id: freezed == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String?,
      ip: freezed == ip
          ? _value.ip
          : ip // ignore: cast_nullable_to_non_nullable
              as String?,
      name: freezed == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String?,
      ssid: freezed == ssid
          ? _value.ssid
          : ssid // ignore: cast_nullable_to_non_nullable
              as String?,
      modelId: freezed == modelId
          ? _value.modelId
          : modelId // ignore: cast_nullable_to_non_nullable
              as String?,
      rssi: freezed == rssi
          ? _value.rssi
          : rssi // ignore: cast_nullable_to_non_nullable
              as int?,
      data: freezed == data
          ? _value._data
          : data // ignore: cast_nullable_to_non_nullable
              as List<WifiData>?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$DeviceBlueResponseImpl implements _DeviceBlueResponse {
  const _$DeviceBlueResponseImpl(
      {@JsonKey(name: 'cmd') required this.cmd,
      this.result,
      this.model,
      this.system,
      this.version,
      this.id,
      this.ip,
      this.name,
      this.ssid,
      @JsonKey(name: 'model_id') this.modelId,
      this.rssi,
      @JsonKey(name: 'data') final List<WifiData>? data})
      : _data = data;

  factory _$DeviceBlueResponseImpl.fromJson(Map<String, dynamic> json) =>
      _$$DeviceBlueResponseImplFromJson(json);

  @override
  @JsonKey(name: 'cmd')
  final String cmd;
  @override
  final int? result;
  @override
  final String? model;
  @override
  final String? system;
  @override
  final String? version;
  @override
  final String? id;
  @override
  final String? ip;
  @override
  final String? name;
  @override
  final String? ssid;
  @override
  @JsonKey(name: 'model_id')
  final String? modelId;
  @override
  final int? rssi;
  final List<WifiData>? _data;
  @override
  @JsonKey(name: 'data')
  List<WifiData>? get data {
    final value = _data;
    if (value == null) return null;
    if (_data is EqualUnmodifiableListView) return _data;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(value);
  }

  @override
  String toString() {
    return 'DeviceBlueResponse(cmd: $cmd, result: $result, model: $model, system: $system, version: $version, id: $id, ip: $ip, name: $name, ssid: $ssid, modelId: $modelId, rssi: $rssi, data: $data)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$DeviceBlueResponseImpl &&
            (identical(other.cmd, cmd) || other.cmd == cmd) &&
            (identical(other.result, result) || other.result == result) &&
            (identical(other.model, model) || other.model == model) &&
            (identical(other.system, system) || other.system == system) &&
            (identical(other.version, version) || other.version == version) &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.ip, ip) || other.ip == ip) &&
            (identical(other.name, name) || other.name == name) &&
            (identical(other.ssid, ssid) || other.ssid == ssid) &&
            (identical(other.modelId, modelId) || other.modelId == modelId) &&
            (identical(other.rssi, rssi) || other.rssi == rssi) &&
            const DeepCollectionEquality().equals(other._data, _data));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      cmd,
      result,
      model,
      system,
      version,
      id,
      ip,
      name,
      ssid,
      modelId,
      rssi,
      const DeepCollectionEquality().hash(_data));

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$DeviceBlueResponseImplCopyWith<_$DeviceBlueResponseImpl> get copyWith =>
      __$$DeviceBlueResponseImplCopyWithImpl<_$DeviceBlueResponseImpl>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$DeviceBlueResponseImplToJson(
      this,
    );
  }
}

abstract class _DeviceBlueResponse implements DeviceBlueResponse {
  const factory _DeviceBlueResponse(
          {@JsonKey(name: 'cmd') required final String cmd,
          final int? result,
          final String? model,
          final String? system,
          final String? version,
          final String? id,
          final String? ip,
          final String? name,
          final String? ssid,
          @JsonKey(name: 'model_id') final String? modelId,
          final int? rssi,
          @JsonKey(name: 'data') final List<WifiData>? data}) =
      _$DeviceBlueResponseImpl;

  factory _DeviceBlueResponse.fromJson(Map<String, dynamic> json) =
      _$DeviceBlueResponseImpl.fromJson;

  @override
  @JsonKey(name: 'cmd')
  String get cmd;
  @override
  int? get result;
  @override
  String? get model;
  @override
  String? get system;
  @override
  String? get version;
  @override
  String? get id;
  @override
  String? get ip;
  @override
  String? get name;
  @override
  String? get ssid;
  @override
  @JsonKey(name: 'model_id')
  String? get modelId;
  @override
  int? get rssi;
  @override
  @JsonKey(name: 'data')
  List<WifiData>? get data;
  @override
  @JsonKey(ignore: true)
  _$$DeviceBlueResponseImplCopyWith<_$DeviceBlueResponseImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

WifiData _$WifiDataFromJson(Map<String, dynamic> json) {
  return _WifiData.fromJson(json);
}

/// @nodoc
mixin _$WifiData {
  @JsonKey(name: 'ssid')
  String get ssid => throw _privateConstructorUsedError;
  @JsonKey(name: 'rssi')
  int get rssi => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $WifiDataCopyWith<WifiData> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $WifiDataCopyWith<$Res> {
  factory $WifiDataCopyWith(WifiData value, $Res Function(WifiData) then) =
      _$WifiDataCopyWithImpl<$Res, WifiData>;
  @useResult
  $Res call(
      {@JsonKey(name: 'ssid') String ssid, @JsonKey(name: 'rssi') int rssi});
}

/// @nodoc
class _$WifiDataCopyWithImpl<$Res, $Val extends WifiData>
    implements $WifiDataCopyWith<$Res> {
  _$WifiDataCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? ssid = null,
    Object? rssi = null,
  }) {
    return _then(_value.copyWith(
      ssid: null == ssid
          ? _value.ssid
          : ssid // ignore: cast_nullable_to_non_nullable
              as String,
      rssi: null == rssi
          ? _value.rssi
          : rssi // ignore: cast_nullable_to_non_nullable
              as int,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$WifiDataImplCopyWith<$Res>
    implements $WifiDataCopyWith<$Res> {
  factory _$$WifiDataImplCopyWith(
          _$WifiDataImpl value, $Res Function(_$WifiDataImpl) then) =
      __$$WifiDataImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {@JsonKey(name: 'ssid') String ssid, @JsonKey(name: 'rssi') int rssi});
}

/// @nodoc
class __$$WifiDataImplCopyWithImpl<$Res>
    extends _$WifiDataCopyWithImpl<$Res, _$WifiDataImpl>
    implements _$$WifiDataImplCopyWith<$Res> {
  __$$WifiDataImplCopyWithImpl(
      _$WifiDataImpl _value, $Res Function(_$WifiDataImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? ssid = null,
    Object? rssi = null,
  }) {
    return _then(_$WifiDataImpl(
      ssid: null == ssid
          ? _value.ssid
          : ssid // ignore: cast_nullable_to_non_nullable
              as String,
      rssi: null == rssi
          ? _value.rssi
          : rssi // ignore: cast_nullable_to_non_nullable
              as int,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$WifiDataImpl implements _WifiData {
  const _$WifiDataImpl(
      {@JsonKey(name: 'ssid') required this.ssid,
      @JsonKey(name: 'rssi') required this.rssi});

  factory _$WifiDataImpl.fromJson(Map<String, dynamic> json) =>
      _$$WifiDataImplFromJson(json);

  @override
  @JsonKey(name: 'ssid')
  final String ssid;
  @override
  @JsonKey(name: 'rssi')
  final int rssi;

  @override
  String toString() {
    return 'WifiData(ssid: $ssid, rssi: $rssi)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$WifiDataImpl &&
            (identical(other.ssid, ssid) || other.ssid == ssid) &&
            (identical(other.rssi, rssi) || other.rssi == rssi));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, ssid, rssi);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$WifiDataImplCopyWith<_$WifiDataImpl> get copyWith =>
      __$$WifiDataImplCopyWithImpl<_$WifiDataImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$WifiDataImplToJson(
      this,
    );
  }
}

abstract class _WifiData implements WifiData {
  const factory _WifiData(
      {@JsonKey(name: 'ssid') required final String ssid,
      @JsonKey(name: 'rssi') required final int rssi}) = _$WifiDataImpl;

  factory _WifiData.fromJson(Map<String, dynamic> json) =
      _$WifiDataImpl.fromJson;

  @override
  @JsonKey(name: 'ssid')
  String get ssid;
  @override
  @JsonKey(name: 'rssi')
  int get rssi;
  @override
  @JsonKey(ignore: true)
  _$$WifiDataImplCopyWith<_$WifiDataImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
