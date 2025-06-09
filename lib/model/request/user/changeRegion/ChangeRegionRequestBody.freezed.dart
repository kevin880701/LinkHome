// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'ChangeRegionRequestBody.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

ChangeRegionRequestBody _$ChangeRegionRequestBodyFromJson(
    Map<String, dynamic> json) {
  return _ChangeRegionRequestBody.fromJson(json);
}

/// @nodoc
mixin _$ChangeRegionRequestBody {
  String get city => throw _privateConstructorUsedError;
  String get region => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $ChangeRegionRequestBodyCopyWith<ChangeRegionRequestBody> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ChangeRegionRequestBodyCopyWith<$Res> {
  factory $ChangeRegionRequestBodyCopyWith(ChangeRegionRequestBody value,
          $Res Function(ChangeRegionRequestBody) then) =
      _$ChangeRegionRequestBodyCopyWithImpl<$Res, ChangeRegionRequestBody>;
  @useResult
  $Res call({String city, String region});
}

/// @nodoc
class _$ChangeRegionRequestBodyCopyWithImpl<$Res,
        $Val extends ChangeRegionRequestBody>
    implements $ChangeRegionRequestBodyCopyWith<$Res> {
  _$ChangeRegionRequestBodyCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? city = null,
    Object? region = null,
  }) {
    return _then(_value.copyWith(
      city: null == city
          ? _value.city
          : city // ignore: cast_nullable_to_non_nullable
              as String,
      region: null == region
          ? _value.region
          : region // ignore: cast_nullable_to_non_nullable
              as String,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$ChangeRegionRequestBodyImplCopyWith<$Res>
    implements $ChangeRegionRequestBodyCopyWith<$Res> {
  factory _$$ChangeRegionRequestBodyImplCopyWith(
          _$ChangeRegionRequestBodyImpl value,
          $Res Function(_$ChangeRegionRequestBodyImpl) then) =
      __$$ChangeRegionRequestBodyImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String city, String region});
}

/// @nodoc
class __$$ChangeRegionRequestBodyImplCopyWithImpl<$Res>
    extends _$ChangeRegionRequestBodyCopyWithImpl<$Res,
        _$ChangeRegionRequestBodyImpl>
    implements _$$ChangeRegionRequestBodyImplCopyWith<$Res> {
  __$$ChangeRegionRequestBodyImplCopyWithImpl(
      _$ChangeRegionRequestBodyImpl _value,
      $Res Function(_$ChangeRegionRequestBodyImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? city = null,
    Object? region = null,
  }) {
    return _then(_$ChangeRegionRequestBodyImpl(
      city: null == city
          ? _value.city
          : city // ignore: cast_nullable_to_non_nullable
              as String,
      region: null == region
          ? _value.region
          : region // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$ChangeRegionRequestBodyImpl implements _ChangeRegionRequestBody {
  const _$ChangeRegionRequestBodyImpl(
      {required this.city, required this.region});

  factory _$ChangeRegionRequestBodyImpl.fromJson(Map<String, dynamic> json) =>
      _$$ChangeRegionRequestBodyImplFromJson(json);

  @override
  final String city;
  @override
  final String region;

  @override
  String toString() {
    return 'ChangeRegionRequestBody(city: $city, region: $region)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ChangeRegionRequestBodyImpl &&
            (identical(other.city, city) || other.city == city) &&
            (identical(other.region, region) || other.region == region));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, city, region);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$ChangeRegionRequestBodyImplCopyWith<_$ChangeRegionRequestBodyImpl>
      get copyWith => __$$ChangeRegionRequestBodyImplCopyWithImpl<
          _$ChangeRegionRequestBodyImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$ChangeRegionRequestBodyImplToJson(
      this,
    );
  }
}

abstract class _ChangeRegionRequestBody implements ChangeRegionRequestBody {
  const factory _ChangeRegionRequestBody(
      {required final String city,
      required final String region}) = _$ChangeRegionRequestBodyImpl;

  factory _ChangeRegionRequestBody.fromJson(Map<String, dynamic> json) =
      _$ChangeRegionRequestBodyImpl.fromJson;

  @override
  String get city;
  @override
  String get region;
  @override
  @JsonKey(ignore: true)
  _$$ChangeRegionRequestBodyImplCopyWith<_$ChangeRegionRequestBodyImpl>
      get copyWith => throw _privateConstructorUsedError;
}
