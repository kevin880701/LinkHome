// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'MaintenanceFormRequestParams.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

MaintenanceFormRequestParams _$MaintenanceFormRequestParamsFromJson(
    Map<String, dynamic> json) {
  return _MaintenanceFormRequestParams.fromJson(json);
}

/// @nodoc
mixin _$MaintenanceFormRequestParams {
  int get type => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $MaintenanceFormRequestParamsCopyWith<MaintenanceFormRequestParams>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $MaintenanceFormRequestParamsCopyWith<$Res> {
  factory $MaintenanceFormRequestParamsCopyWith(
          MaintenanceFormRequestParams value,
          $Res Function(MaintenanceFormRequestParams) then) =
      _$MaintenanceFormRequestParamsCopyWithImpl<$Res,
          MaintenanceFormRequestParams>;
  @useResult
  $Res call({int type});
}

/// @nodoc
class _$MaintenanceFormRequestParamsCopyWithImpl<$Res,
        $Val extends MaintenanceFormRequestParams>
    implements $MaintenanceFormRequestParamsCopyWith<$Res> {
  _$MaintenanceFormRequestParamsCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? type = null,
  }) {
    return _then(_value.copyWith(
      type: null == type
          ? _value.type
          : type // ignore: cast_nullable_to_non_nullable
              as int,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$MaintenanceFormRequestParamsImplCopyWith<$Res>
    implements $MaintenanceFormRequestParamsCopyWith<$Res> {
  factory _$$MaintenanceFormRequestParamsImplCopyWith(
          _$MaintenanceFormRequestParamsImpl value,
          $Res Function(_$MaintenanceFormRequestParamsImpl) then) =
      __$$MaintenanceFormRequestParamsImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({int type});
}

/// @nodoc
class __$$MaintenanceFormRequestParamsImplCopyWithImpl<$Res>
    extends _$MaintenanceFormRequestParamsCopyWithImpl<$Res,
        _$MaintenanceFormRequestParamsImpl>
    implements _$$MaintenanceFormRequestParamsImplCopyWith<$Res> {
  __$$MaintenanceFormRequestParamsImplCopyWithImpl(
      _$MaintenanceFormRequestParamsImpl _value,
      $Res Function(_$MaintenanceFormRequestParamsImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? type = null,
  }) {
    return _then(_$MaintenanceFormRequestParamsImpl(
      type: null == type
          ? _value.type
          : type // ignore: cast_nullable_to_non_nullable
              as int,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$MaintenanceFormRequestParamsImpl
    implements _MaintenanceFormRequestParams {
  const _$MaintenanceFormRequestParamsImpl({required this.type});

  factory _$MaintenanceFormRequestParamsImpl.fromJson(
          Map<String, dynamic> json) =>
      _$$MaintenanceFormRequestParamsImplFromJson(json);

  @override
  final int type;

  @override
  String toString() {
    return 'MaintenanceFormRequestParams(type: $type)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$MaintenanceFormRequestParamsImpl &&
            (identical(other.type, type) || other.type == type));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, type);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$MaintenanceFormRequestParamsImplCopyWith<
          _$MaintenanceFormRequestParamsImpl>
      get copyWith => __$$MaintenanceFormRequestParamsImplCopyWithImpl<
          _$MaintenanceFormRequestParamsImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$MaintenanceFormRequestParamsImplToJson(
      this,
    );
  }
}

abstract class _MaintenanceFormRequestParams
    implements MaintenanceFormRequestParams {
  const factory _MaintenanceFormRequestParams({required final int type}) =
      _$MaintenanceFormRequestParamsImpl;

  factory _MaintenanceFormRequestParams.fromJson(Map<String, dynamic> json) =
      _$MaintenanceFormRequestParamsImpl.fromJson;

  @override
  int get type;
  @override
  @JsonKey(ignore: true)
  _$$MaintenanceFormRequestParamsImplCopyWith<
          _$MaintenanceFormRequestParamsImpl>
      get copyWith => throw _privateConstructorUsedError;
}
