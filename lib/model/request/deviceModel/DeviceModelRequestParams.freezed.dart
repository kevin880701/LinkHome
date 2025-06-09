// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'DeviceModelRequestParams.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

DeviceModelRequestParams _$DeviceModelRequestParamsFromJson(
    Map<String, dynamic> json) {
  return _DeviceModelRequestParams.fromJson(json);
}

/// @nodoc
mixin _$DeviceModelRequestParams {
  @JsonKey(name: 'vendor_id')
  int get vendorId => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $DeviceModelRequestParamsCopyWith<DeviceModelRequestParams> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $DeviceModelRequestParamsCopyWith<$Res> {
  factory $DeviceModelRequestParamsCopyWith(DeviceModelRequestParams value,
          $Res Function(DeviceModelRequestParams) then) =
      _$DeviceModelRequestParamsCopyWithImpl<$Res, DeviceModelRequestParams>;
  @useResult
  $Res call({@JsonKey(name: 'vendor_id') int vendorId});
}

/// @nodoc
class _$DeviceModelRequestParamsCopyWithImpl<$Res,
        $Val extends DeviceModelRequestParams>
    implements $DeviceModelRequestParamsCopyWith<$Res> {
  _$DeviceModelRequestParamsCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? vendorId = null,
  }) {
    return _then(_value.copyWith(
      vendorId: null == vendorId
          ? _value.vendorId
          : vendorId // ignore: cast_nullable_to_non_nullable
              as int,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$DeviceModelRequestParamsImplCopyWith<$Res>
    implements $DeviceModelRequestParamsCopyWith<$Res> {
  factory _$$DeviceModelRequestParamsImplCopyWith(
          _$DeviceModelRequestParamsImpl value,
          $Res Function(_$DeviceModelRequestParamsImpl) then) =
      __$$DeviceModelRequestParamsImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({@JsonKey(name: 'vendor_id') int vendorId});
}

/// @nodoc
class __$$DeviceModelRequestParamsImplCopyWithImpl<$Res>
    extends _$DeviceModelRequestParamsCopyWithImpl<$Res,
        _$DeviceModelRequestParamsImpl>
    implements _$$DeviceModelRequestParamsImplCopyWith<$Res> {
  __$$DeviceModelRequestParamsImplCopyWithImpl(
      _$DeviceModelRequestParamsImpl _value,
      $Res Function(_$DeviceModelRequestParamsImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? vendorId = null,
  }) {
    return _then(_$DeviceModelRequestParamsImpl(
      vendorId: null == vendorId
          ? _value.vendorId
          : vendorId // ignore: cast_nullable_to_non_nullable
              as int,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$DeviceModelRequestParamsImpl implements _DeviceModelRequestParams {
  const _$DeviceModelRequestParamsImpl(
      {@JsonKey(name: 'vendor_id') required this.vendorId});

  factory _$DeviceModelRequestParamsImpl.fromJson(Map<String, dynamic> json) =>
      _$$DeviceModelRequestParamsImplFromJson(json);

  @override
  @JsonKey(name: 'vendor_id')
  final int vendorId;

  @override
  String toString() {
    return 'DeviceModelRequestParams(vendorId: $vendorId)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$DeviceModelRequestParamsImpl &&
            (identical(other.vendorId, vendorId) ||
                other.vendorId == vendorId));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, vendorId);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$DeviceModelRequestParamsImplCopyWith<_$DeviceModelRequestParamsImpl>
      get copyWith => __$$DeviceModelRequestParamsImplCopyWithImpl<
          _$DeviceModelRequestParamsImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$DeviceModelRequestParamsImplToJson(
      this,
    );
  }
}

abstract class _DeviceModelRequestParams implements DeviceModelRequestParams {
  const factory _DeviceModelRequestParams(
          {@JsonKey(name: 'vendor_id') required final int vendorId}) =
      _$DeviceModelRequestParamsImpl;

  factory _DeviceModelRequestParams.fromJson(Map<String, dynamic> json) =
      _$DeviceModelRequestParamsImpl.fromJson;

  @override
  @JsonKey(name: 'vendor_id')
  int get vendorId;
  @override
  @JsonKey(ignore: true)
  _$$DeviceModelRequestParamsImplCopyWith<_$DeviceModelRequestParamsImpl>
      get copyWith => throw _privateConstructorUsedError;
}
