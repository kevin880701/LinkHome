// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'GetCitiesResponse.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

GetCitiesResponse _$GetCitiesResponseFromJson(Map<String, dynamic> json) {
  return _GetCitiesResponse.fromJson(json);
}

/// @nodoc
mixin _$GetCitiesResponse {
  @JsonKey(name: 'cities')
  List<String> get cities => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $GetCitiesResponseCopyWith<GetCitiesResponse> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $GetCitiesResponseCopyWith<$Res> {
  factory $GetCitiesResponseCopyWith(
          GetCitiesResponse value, $Res Function(GetCitiesResponse) then) =
      _$GetCitiesResponseCopyWithImpl<$Res, GetCitiesResponse>;
  @useResult
  $Res call({@JsonKey(name: 'cities') List<String> cities});
}

/// @nodoc
class _$GetCitiesResponseCopyWithImpl<$Res, $Val extends GetCitiesResponse>
    implements $GetCitiesResponseCopyWith<$Res> {
  _$GetCitiesResponseCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? cities = null,
  }) {
    return _then(_value.copyWith(
      cities: null == cities
          ? _value.cities
          : cities // ignore: cast_nullable_to_non_nullable
              as List<String>,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$GetCitiesResponseImplCopyWith<$Res>
    implements $GetCitiesResponseCopyWith<$Res> {
  factory _$$GetCitiesResponseImplCopyWith(_$GetCitiesResponseImpl value,
          $Res Function(_$GetCitiesResponseImpl) then) =
      __$$GetCitiesResponseImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({@JsonKey(name: 'cities') List<String> cities});
}

/// @nodoc
class __$$GetCitiesResponseImplCopyWithImpl<$Res>
    extends _$GetCitiesResponseCopyWithImpl<$Res, _$GetCitiesResponseImpl>
    implements _$$GetCitiesResponseImplCopyWith<$Res> {
  __$$GetCitiesResponseImplCopyWithImpl(_$GetCitiesResponseImpl _value,
      $Res Function(_$GetCitiesResponseImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? cities = null,
  }) {
    return _then(_$GetCitiesResponseImpl(
      cities: null == cities
          ? _value._cities
          : cities // ignore: cast_nullable_to_non_nullable
              as List<String>,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$GetCitiesResponseImpl implements _GetCitiesResponse {
  const _$GetCitiesResponseImpl(
      {@JsonKey(name: 'cities') required final List<String> cities})
      : _cities = cities;

  factory _$GetCitiesResponseImpl.fromJson(Map<String, dynamic> json) =>
      _$$GetCitiesResponseImplFromJson(json);

  final List<String> _cities;
  @override
  @JsonKey(name: 'cities')
  List<String> get cities {
    if (_cities is EqualUnmodifiableListView) return _cities;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_cities);
  }

  @override
  String toString() {
    return 'GetCitiesResponse(cities: $cities)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$GetCitiesResponseImpl &&
            const DeepCollectionEquality().equals(other._cities, _cities));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode =>
      Object.hash(runtimeType, const DeepCollectionEquality().hash(_cities));

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$GetCitiesResponseImplCopyWith<_$GetCitiesResponseImpl> get copyWith =>
      __$$GetCitiesResponseImplCopyWithImpl<_$GetCitiesResponseImpl>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$GetCitiesResponseImplToJson(
      this,
    );
  }
}

abstract class _GetCitiesResponse implements GetCitiesResponse {
  const factory _GetCitiesResponse(
          {@JsonKey(name: 'cities') required final List<String> cities}) =
      _$GetCitiesResponseImpl;

  factory _GetCitiesResponse.fromJson(Map<String, dynamic> json) =
      _$GetCitiesResponseImpl.fromJson;

  @override
  @JsonKey(name: 'cities')
  List<String> get cities;
  @override
  @JsonKey(ignore: true)
  _$$GetCitiesResponseImplCopyWith<_$GetCitiesResponseImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
