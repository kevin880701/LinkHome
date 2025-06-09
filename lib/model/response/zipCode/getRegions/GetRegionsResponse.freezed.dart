// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'GetRegionsResponse.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

GetRegionsResponse _$GetRegionsResponseFromJson(Map<String, dynamic> json) {
  return _GetRegionsResponse.fromJson(json);
}

/// @nodoc
mixin _$GetRegionsResponse {
  @JsonKey(name: 'regions')
  List<String> get regions => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $GetRegionsResponseCopyWith<GetRegionsResponse> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $GetRegionsResponseCopyWith<$Res> {
  factory $GetRegionsResponseCopyWith(
          GetRegionsResponse value, $Res Function(GetRegionsResponse) then) =
      _$GetRegionsResponseCopyWithImpl<$Res, GetRegionsResponse>;
  @useResult
  $Res call({@JsonKey(name: 'regions') List<String> regions});
}

/// @nodoc
class _$GetRegionsResponseCopyWithImpl<$Res, $Val extends GetRegionsResponse>
    implements $GetRegionsResponseCopyWith<$Res> {
  _$GetRegionsResponseCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? regions = null,
  }) {
    return _then(_value.copyWith(
      regions: null == regions
          ? _value.regions
          : regions // ignore: cast_nullable_to_non_nullable
              as List<String>,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$GetRegionsResponseImplCopyWith<$Res>
    implements $GetRegionsResponseCopyWith<$Res> {
  factory _$$GetRegionsResponseImplCopyWith(_$GetRegionsResponseImpl value,
          $Res Function(_$GetRegionsResponseImpl) then) =
      __$$GetRegionsResponseImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({@JsonKey(name: 'regions') List<String> regions});
}

/// @nodoc
class __$$GetRegionsResponseImplCopyWithImpl<$Res>
    extends _$GetRegionsResponseCopyWithImpl<$Res, _$GetRegionsResponseImpl>
    implements _$$GetRegionsResponseImplCopyWith<$Res> {
  __$$GetRegionsResponseImplCopyWithImpl(_$GetRegionsResponseImpl _value,
      $Res Function(_$GetRegionsResponseImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? regions = null,
  }) {
    return _then(_$GetRegionsResponseImpl(
      regions: null == regions
          ? _value._regions
          : regions // ignore: cast_nullable_to_non_nullable
              as List<String>,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$GetRegionsResponseImpl implements _GetRegionsResponse {
  const _$GetRegionsResponseImpl(
      {@JsonKey(name: 'regions') required final List<String> regions})
      : _regions = regions;

  factory _$GetRegionsResponseImpl.fromJson(Map<String, dynamic> json) =>
      _$$GetRegionsResponseImplFromJson(json);

  final List<String> _regions;
  @override
  @JsonKey(name: 'regions')
  List<String> get regions {
    if (_regions is EqualUnmodifiableListView) return _regions;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_regions);
  }

  @override
  String toString() {
    return 'GetRegionsResponse(regions: $regions)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$GetRegionsResponseImpl &&
            const DeepCollectionEquality().equals(other._regions, _regions));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode =>
      Object.hash(runtimeType, const DeepCollectionEquality().hash(_regions));

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$GetRegionsResponseImplCopyWith<_$GetRegionsResponseImpl> get copyWith =>
      __$$GetRegionsResponseImplCopyWithImpl<_$GetRegionsResponseImpl>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$GetRegionsResponseImplToJson(
      this,
    );
  }
}

abstract class _GetRegionsResponse implements GetRegionsResponse {
  const factory _GetRegionsResponse(
          {@JsonKey(name: 'regions') required final List<String> regions}) =
      _$GetRegionsResponseImpl;

  factory _GetRegionsResponse.fromJson(Map<String, dynamic> json) =
      _$GetRegionsResponseImpl.fromJson;

  @override
  @JsonKey(name: 'regions')
  List<String> get regions;
  @override
  @JsonKey(ignore: true)
  _$$GetRegionsResponseImplCopyWith<_$GetRegionsResponseImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
