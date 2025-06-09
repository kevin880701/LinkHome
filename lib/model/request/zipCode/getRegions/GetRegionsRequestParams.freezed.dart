// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'GetRegionsRequestParams.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

GetRegionsRequestParams _$GetRegionsRequestParamsFromJson(
    Map<String, dynamic> json) {
  return _GetRegionsRequestParams.fromJson(json);
}

/// @nodoc
mixin _$GetRegionsRequestParams {
  @JsonKey(name: 'countyname')
  String get countyName => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $GetRegionsRequestParamsCopyWith<GetRegionsRequestParams> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $GetRegionsRequestParamsCopyWith<$Res> {
  factory $GetRegionsRequestParamsCopyWith(GetRegionsRequestParams value,
          $Res Function(GetRegionsRequestParams) then) =
      _$GetRegionsRequestParamsCopyWithImpl<$Res, GetRegionsRequestParams>;
  @useResult
  $Res call({@JsonKey(name: 'countyname') String countyName});
}

/// @nodoc
class _$GetRegionsRequestParamsCopyWithImpl<$Res,
        $Val extends GetRegionsRequestParams>
    implements $GetRegionsRequestParamsCopyWith<$Res> {
  _$GetRegionsRequestParamsCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? countyName = null,
  }) {
    return _then(_value.copyWith(
      countyName: null == countyName
          ? _value.countyName
          : countyName // ignore: cast_nullable_to_non_nullable
              as String,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$GetRegionsRequestParamsImplCopyWith<$Res>
    implements $GetRegionsRequestParamsCopyWith<$Res> {
  factory _$$GetRegionsRequestParamsImplCopyWith(
          _$GetRegionsRequestParamsImpl value,
          $Res Function(_$GetRegionsRequestParamsImpl) then) =
      __$$GetRegionsRequestParamsImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({@JsonKey(name: 'countyname') String countyName});
}

/// @nodoc
class __$$GetRegionsRequestParamsImplCopyWithImpl<$Res>
    extends _$GetRegionsRequestParamsCopyWithImpl<$Res,
        _$GetRegionsRequestParamsImpl>
    implements _$$GetRegionsRequestParamsImplCopyWith<$Res> {
  __$$GetRegionsRequestParamsImplCopyWithImpl(
      _$GetRegionsRequestParamsImpl _value,
      $Res Function(_$GetRegionsRequestParamsImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? countyName = null,
  }) {
    return _then(_$GetRegionsRequestParamsImpl(
      countyName: null == countyName
          ? _value.countyName
          : countyName // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$GetRegionsRequestParamsImpl implements _GetRegionsRequestParams {
  const _$GetRegionsRequestParamsImpl(
      {@JsonKey(name: 'countyname') required this.countyName});

  factory _$GetRegionsRequestParamsImpl.fromJson(Map<String, dynamic> json) =>
      _$$GetRegionsRequestParamsImplFromJson(json);

  @override
  @JsonKey(name: 'countyname')
  final String countyName;

  @override
  String toString() {
    return 'GetRegionsRequestParams(countyName: $countyName)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$GetRegionsRequestParamsImpl &&
            (identical(other.countyName, countyName) ||
                other.countyName == countyName));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, countyName);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$GetRegionsRequestParamsImplCopyWith<_$GetRegionsRequestParamsImpl>
      get copyWith => __$$GetRegionsRequestParamsImplCopyWithImpl<
          _$GetRegionsRequestParamsImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$GetRegionsRequestParamsImplToJson(
      this,
    );
  }
}

abstract class _GetRegionsRequestParams implements GetRegionsRequestParams {
  const factory _GetRegionsRequestParams(
          {@JsonKey(name: 'countyname') required final String countyName}) =
      _$GetRegionsRequestParamsImpl;

  factory _GetRegionsRequestParams.fromJson(Map<String, dynamic> json) =
      _$GetRegionsRequestParamsImpl.fromJson;

  @override
  @JsonKey(name: 'countyname')
  String get countyName;
  @override
  @JsonKey(ignore: true)
  _$$GetRegionsRequestParamsImplCopyWith<_$GetRegionsRequestParamsImpl>
      get copyWith => throw _privateConstructorUsedError;
}
