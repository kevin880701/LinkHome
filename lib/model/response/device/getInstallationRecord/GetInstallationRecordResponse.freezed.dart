// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'GetInstallationRecordResponse.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

GetInstallationRecordResponse _$GetInstallationRecordResponseFromJson(
    Map<String, dynamic> json) {
  return _GetInstallationRecordResponse.fromJson(json);
}

/// @nodoc
mixin _$GetInstallationRecordResponse {
  @JsonKey(name: 'mac')
  String? get mac => throw _privateConstructorUsedError;
  @JsonKey(name: 'model_name')
  String get modelName => throw _privateConstructorUsedError;
  @JsonKey(name: 'customer_name')
  String? get customerName => throw _privateConstructorUsedError;
  @JsonKey(name: 'customer_area')
  String? get customerArea => throw _privateConstructorUsedError;
  @JsonKey(name: 'installation_date')
  DateTime get installationDate => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $GetInstallationRecordResponseCopyWith<GetInstallationRecordResponse>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $GetInstallationRecordResponseCopyWith<$Res> {
  factory $GetInstallationRecordResponseCopyWith(
          GetInstallationRecordResponse value,
          $Res Function(GetInstallationRecordResponse) then) =
      _$GetInstallationRecordResponseCopyWithImpl<$Res,
          GetInstallationRecordResponse>;
  @useResult
  $Res call(
      {@JsonKey(name: 'mac') String? mac,
      @JsonKey(name: 'model_name') String modelName,
      @JsonKey(name: 'customer_name') String? customerName,
      @JsonKey(name: 'customer_area') String? customerArea,
      @JsonKey(name: 'installation_date') DateTime installationDate});
}

/// @nodoc
class _$GetInstallationRecordResponseCopyWithImpl<$Res,
        $Val extends GetInstallationRecordResponse>
    implements $GetInstallationRecordResponseCopyWith<$Res> {
  _$GetInstallationRecordResponseCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? mac = freezed,
    Object? modelName = null,
    Object? customerName = freezed,
    Object? customerArea = freezed,
    Object? installationDate = null,
  }) {
    return _then(_value.copyWith(
      mac: freezed == mac
          ? _value.mac
          : mac // ignore: cast_nullable_to_non_nullable
              as String?,
      modelName: null == modelName
          ? _value.modelName
          : modelName // ignore: cast_nullable_to_non_nullable
              as String,
      customerName: freezed == customerName
          ? _value.customerName
          : customerName // ignore: cast_nullable_to_non_nullable
              as String?,
      customerArea: freezed == customerArea
          ? _value.customerArea
          : customerArea // ignore: cast_nullable_to_non_nullable
              as String?,
      installationDate: null == installationDate
          ? _value.installationDate
          : installationDate // ignore: cast_nullable_to_non_nullable
              as DateTime,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$GetInstallationRecordResponseImplCopyWith<$Res>
    implements $GetInstallationRecordResponseCopyWith<$Res> {
  factory _$$GetInstallationRecordResponseImplCopyWith(
          _$GetInstallationRecordResponseImpl value,
          $Res Function(_$GetInstallationRecordResponseImpl) then) =
      __$$GetInstallationRecordResponseImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {@JsonKey(name: 'mac') String? mac,
      @JsonKey(name: 'model_name') String modelName,
      @JsonKey(name: 'customer_name') String? customerName,
      @JsonKey(name: 'customer_area') String? customerArea,
      @JsonKey(name: 'installation_date') DateTime installationDate});
}

/// @nodoc
class __$$GetInstallationRecordResponseImplCopyWithImpl<$Res>
    extends _$GetInstallationRecordResponseCopyWithImpl<$Res,
        _$GetInstallationRecordResponseImpl>
    implements _$$GetInstallationRecordResponseImplCopyWith<$Res> {
  __$$GetInstallationRecordResponseImplCopyWithImpl(
      _$GetInstallationRecordResponseImpl _value,
      $Res Function(_$GetInstallationRecordResponseImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? mac = freezed,
    Object? modelName = null,
    Object? customerName = freezed,
    Object? customerArea = freezed,
    Object? installationDate = null,
  }) {
    return _then(_$GetInstallationRecordResponseImpl(
      mac: freezed == mac
          ? _value.mac
          : mac // ignore: cast_nullable_to_non_nullable
              as String?,
      modelName: null == modelName
          ? _value.modelName
          : modelName // ignore: cast_nullable_to_non_nullable
              as String,
      customerName: freezed == customerName
          ? _value.customerName
          : customerName // ignore: cast_nullable_to_non_nullable
              as String?,
      customerArea: freezed == customerArea
          ? _value.customerArea
          : customerArea // ignore: cast_nullable_to_non_nullable
              as String?,
      installationDate: null == installationDate
          ? _value.installationDate
          : installationDate // ignore: cast_nullable_to_non_nullable
              as DateTime,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$GetInstallationRecordResponseImpl
    implements _GetInstallationRecordResponse {
  const _$GetInstallationRecordResponseImpl(
      {@JsonKey(name: 'mac') this.mac,
      @JsonKey(name: 'model_name') required this.modelName,
      @JsonKey(name: 'customer_name') this.customerName,
      @JsonKey(name: 'customer_area') this.customerArea,
      @JsonKey(name: 'installation_date') required this.installationDate});

  factory _$GetInstallationRecordResponseImpl.fromJson(
          Map<String, dynamic> json) =>
      _$$GetInstallationRecordResponseImplFromJson(json);

  @override
  @JsonKey(name: 'mac')
  final String? mac;
  @override
  @JsonKey(name: 'model_name')
  final String modelName;
  @override
  @JsonKey(name: 'customer_name')
  final String? customerName;
  @override
  @JsonKey(name: 'customer_area')
  final String? customerArea;
  @override
  @JsonKey(name: 'installation_date')
  final DateTime installationDate;

  @override
  String toString() {
    return 'GetInstallationRecordResponse(mac: $mac, modelName: $modelName, customerName: $customerName, customerArea: $customerArea, installationDate: $installationDate)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$GetInstallationRecordResponseImpl &&
            (identical(other.mac, mac) || other.mac == mac) &&
            (identical(other.modelName, modelName) ||
                other.modelName == modelName) &&
            (identical(other.customerName, customerName) ||
                other.customerName == customerName) &&
            (identical(other.customerArea, customerArea) ||
                other.customerArea == customerArea) &&
            (identical(other.installationDate, installationDate) ||
                other.installationDate == installationDate));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, mac, modelName, customerName,
      customerArea, installationDate);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$GetInstallationRecordResponseImplCopyWith<
          _$GetInstallationRecordResponseImpl>
      get copyWith => __$$GetInstallationRecordResponseImplCopyWithImpl<
          _$GetInstallationRecordResponseImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$GetInstallationRecordResponseImplToJson(
      this,
    );
  }
}

abstract class _GetInstallationRecordResponse
    implements GetInstallationRecordResponse {
  const factory _GetInstallationRecordResponse(
          {@JsonKey(name: 'mac') final String? mac,
          @JsonKey(name: 'model_name') required final String modelName,
          @JsonKey(name: 'customer_name') final String? customerName,
          @JsonKey(name: 'customer_area') final String? customerArea,
          @JsonKey(name: 'installation_date')
          required final DateTime installationDate}) =
      _$GetInstallationRecordResponseImpl;

  factory _GetInstallationRecordResponse.fromJson(Map<String, dynamic> json) =
      _$GetInstallationRecordResponseImpl.fromJson;

  @override
  @JsonKey(name: 'mac')
  String? get mac;
  @override
  @JsonKey(name: 'model_name')
  String get modelName;
  @override
  @JsonKey(name: 'customer_name')
  String? get customerName;
  @override
  @JsonKey(name: 'customer_area')
  String? get customerArea;
  @override
  @JsonKey(name: 'installation_date')
  DateTime get installationDate;
  @override
  @JsonKey(ignore: true)
  _$$GetInstallationRecordResponseImplCopyWith<
          _$GetInstallationRecordResponseImpl>
      get copyWith => throw _privateConstructorUsedError;
}
