// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'GetVendorInfoRequestParams.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

GetVendorInfoRequestParams _$GetVendorInfoRequestParamsFromJson(
    Map<String, dynamic> json) {
  return _GetVendorInfoRequestParams.fromJson(json);
}

/// @nodoc
mixin _$GetVendorInfoRequestParams {
  int get vendor_id => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $GetVendorInfoRequestParamsCopyWith<GetVendorInfoRequestParams>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $GetVendorInfoRequestParamsCopyWith<$Res> {
  factory $GetVendorInfoRequestParamsCopyWith(GetVendorInfoRequestParams value,
          $Res Function(GetVendorInfoRequestParams) then) =
      _$GetVendorInfoRequestParamsCopyWithImpl<$Res,
          GetVendorInfoRequestParams>;
  @useResult
  $Res call({int vendor_id});
}

/// @nodoc
class _$GetVendorInfoRequestParamsCopyWithImpl<$Res,
        $Val extends GetVendorInfoRequestParams>
    implements $GetVendorInfoRequestParamsCopyWith<$Res> {
  _$GetVendorInfoRequestParamsCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? vendor_id = null,
  }) {
    return _then(_value.copyWith(
      vendor_id: null == vendor_id
          ? _value.vendor_id
          : vendor_id // ignore: cast_nullable_to_non_nullable
              as int,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$GetVendorInfoRequestParamsImplCopyWith<$Res>
    implements $GetVendorInfoRequestParamsCopyWith<$Res> {
  factory _$$GetVendorInfoRequestParamsImplCopyWith(
          _$GetVendorInfoRequestParamsImpl value,
          $Res Function(_$GetVendorInfoRequestParamsImpl) then) =
      __$$GetVendorInfoRequestParamsImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({int vendor_id});
}

/// @nodoc
class __$$GetVendorInfoRequestParamsImplCopyWithImpl<$Res>
    extends _$GetVendorInfoRequestParamsCopyWithImpl<$Res,
        _$GetVendorInfoRequestParamsImpl>
    implements _$$GetVendorInfoRequestParamsImplCopyWith<$Res> {
  __$$GetVendorInfoRequestParamsImplCopyWithImpl(
      _$GetVendorInfoRequestParamsImpl _value,
      $Res Function(_$GetVendorInfoRequestParamsImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? vendor_id = null,
  }) {
    return _then(_$GetVendorInfoRequestParamsImpl(
      vendor_id: null == vendor_id
          ? _value.vendor_id
          : vendor_id // ignore: cast_nullable_to_non_nullable
              as int,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$GetVendorInfoRequestParamsImpl implements _GetVendorInfoRequestParams {
  const _$GetVendorInfoRequestParamsImpl({required this.vendor_id});

  factory _$GetVendorInfoRequestParamsImpl.fromJson(
          Map<String, dynamic> json) =>
      _$$GetVendorInfoRequestParamsImplFromJson(json);

  @override
  final int vendor_id;

  @override
  String toString() {
    return 'GetVendorInfoRequestParams(vendor_id: $vendor_id)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$GetVendorInfoRequestParamsImpl &&
            (identical(other.vendor_id, vendor_id) ||
                other.vendor_id == vendor_id));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, vendor_id);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$GetVendorInfoRequestParamsImplCopyWith<_$GetVendorInfoRequestParamsImpl>
      get copyWith => __$$GetVendorInfoRequestParamsImplCopyWithImpl<
          _$GetVendorInfoRequestParamsImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$GetVendorInfoRequestParamsImplToJson(
      this,
    );
  }
}

abstract class _GetVendorInfoRequestParams
    implements GetVendorInfoRequestParams {
  const factory _GetVendorInfoRequestParams({required final int vendor_id}) =
      _$GetVendorInfoRequestParamsImpl;

  factory _GetVendorInfoRequestParams.fromJson(Map<String, dynamic> json) =
      _$GetVendorInfoRequestParamsImpl.fromJson;

  @override
  int get vendor_id;
  @override
  @JsonKey(ignore: true)
  _$$GetVendorInfoRequestParamsImplCopyWith<_$GetVendorInfoRequestParamsImpl>
      get copyWith => throw _privateConstructorUsedError;
}
