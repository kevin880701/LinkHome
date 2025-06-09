// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'MaintenanceFormResponse.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

MaintenanceFormResponse _$MaintenanceFormResponseFromJson(
    Map<String, dynamic> json) {
  return _MaintenanceFormResponse.fromJson(json);
}

/// @nodoc
mixin _$MaintenanceFormResponse {
  @JsonKey(name: 'code')
  String get code => throw _privateConstructorUsedError;
  @JsonKey(name: 'types')
  String get types => throw _privateConstructorUsedError;
  @JsonKey(name: 'group1')
  String? get group1 => throw _privateConstructorUsedError;
  @JsonKey(name: 'group2')
  String get group2 => throw _privateConstructorUsedError;
  @JsonKey(name: 'item')
  String get item => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $MaintenanceFormResponseCopyWith<MaintenanceFormResponse> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $MaintenanceFormResponseCopyWith<$Res> {
  factory $MaintenanceFormResponseCopyWith(MaintenanceFormResponse value,
          $Res Function(MaintenanceFormResponse) then) =
      _$MaintenanceFormResponseCopyWithImpl<$Res, MaintenanceFormResponse>;
  @useResult
  $Res call(
      {@JsonKey(name: 'code') String code,
      @JsonKey(name: 'types') String types,
      @JsonKey(name: 'group1') String? group1,
      @JsonKey(name: 'group2') String group2,
      @JsonKey(name: 'item') String item});
}

/// @nodoc
class _$MaintenanceFormResponseCopyWithImpl<$Res,
        $Val extends MaintenanceFormResponse>
    implements $MaintenanceFormResponseCopyWith<$Res> {
  _$MaintenanceFormResponseCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? code = null,
    Object? types = null,
    Object? group1 = freezed,
    Object? group2 = null,
    Object? item = null,
  }) {
    return _then(_value.copyWith(
      code: null == code
          ? _value.code
          : code // ignore: cast_nullable_to_non_nullable
              as String,
      types: null == types
          ? _value.types
          : types // ignore: cast_nullable_to_non_nullable
              as String,
      group1: freezed == group1
          ? _value.group1
          : group1 // ignore: cast_nullable_to_non_nullable
              as String?,
      group2: null == group2
          ? _value.group2
          : group2 // ignore: cast_nullable_to_non_nullable
              as String,
      item: null == item
          ? _value.item
          : item // ignore: cast_nullable_to_non_nullable
              as String,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$MaintenanceFormResponseImplCopyWith<$Res>
    implements $MaintenanceFormResponseCopyWith<$Res> {
  factory _$$MaintenanceFormResponseImplCopyWith(
          _$MaintenanceFormResponseImpl value,
          $Res Function(_$MaintenanceFormResponseImpl) then) =
      __$$MaintenanceFormResponseImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {@JsonKey(name: 'code') String code,
      @JsonKey(name: 'types') String types,
      @JsonKey(name: 'group1') String? group1,
      @JsonKey(name: 'group2') String group2,
      @JsonKey(name: 'item') String item});
}

/// @nodoc
class __$$MaintenanceFormResponseImplCopyWithImpl<$Res>
    extends _$MaintenanceFormResponseCopyWithImpl<$Res,
        _$MaintenanceFormResponseImpl>
    implements _$$MaintenanceFormResponseImplCopyWith<$Res> {
  __$$MaintenanceFormResponseImplCopyWithImpl(
      _$MaintenanceFormResponseImpl _value,
      $Res Function(_$MaintenanceFormResponseImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? code = null,
    Object? types = null,
    Object? group1 = freezed,
    Object? group2 = null,
    Object? item = null,
  }) {
    return _then(_$MaintenanceFormResponseImpl(
      code: null == code
          ? _value.code
          : code // ignore: cast_nullable_to_non_nullable
              as String,
      types: null == types
          ? _value.types
          : types // ignore: cast_nullable_to_non_nullable
              as String,
      group1: freezed == group1
          ? _value.group1
          : group1 // ignore: cast_nullable_to_non_nullable
              as String?,
      group2: null == group2
          ? _value.group2
          : group2 // ignore: cast_nullable_to_non_nullable
              as String,
      item: null == item
          ? _value.item
          : item // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$MaintenanceFormResponseImpl implements _MaintenanceFormResponse {
  const _$MaintenanceFormResponseImpl(
      {@JsonKey(name: 'code') required this.code,
      @JsonKey(name: 'types') required this.types,
      @JsonKey(name: 'group1') this.group1,
      @JsonKey(name: 'group2') required this.group2,
      @JsonKey(name: 'item') required this.item});

  factory _$MaintenanceFormResponseImpl.fromJson(Map<String, dynamic> json) =>
      _$$MaintenanceFormResponseImplFromJson(json);

  @override
  @JsonKey(name: 'code')
  final String code;
  @override
  @JsonKey(name: 'types')
  final String types;
  @override
  @JsonKey(name: 'group1')
  final String? group1;
  @override
  @JsonKey(name: 'group2')
  final String group2;
  @override
  @JsonKey(name: 'item')
  final String item;

  @override
  String toString() {
    return 'MaintenanceFormResponse(code: $code, types: $types, group1: $group1, group2: $group2, item: $item)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$MaintenanceFormResponseImpl &&
            (identical(other.code, code) || other.code == code) &&
            (identical(other.types, types) || other.types == types) &&
            (identical(other.group1, group1) || other.group1 == group1) &&
            (identical(other.group2, group2) || other.group2 == group2) &&
            (identical(other.item, item) || other.item == item));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode =>
      Object.hash(runtimeType, code, types, group1, group2, item);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$MaintenanceFormResponseImplCopyWith<_$MaintenanceFormResponseImpl>
      get copyWith => __$$MaintenanceFormResponseImplCopyWithImpl<
          _$MaintenanceFormResponseImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$MaintenanceFormResponseImplToJson(
      this,
    );
  }
}

abstract class _MaintenanceFormResponse implements MaintenanceFormResponse {
  const factory _MaintenanceFormResponse(
          {@JsonKey(name: 'code') required final String code,
          @JsonKey(name: 'types') required final String types,
          @JsonKey(name: 'group1') final String? group1,
          @JsonKey(name: 'group2') required final String group2,
          @JsonKey(name: 'item') required final String item}) =
      _$MaintenanceFormResponseImpl;

  factory _MaintenanceFormResponse.fromJson(Map<String, dynamic> json) =
      _$MaintenanceFormResponseImpl.fromJson;

  @override
  @JsonKey(name: 'code')
  String get code;
  @override
  @JsonKey(name: 'types')
  String get types;
  @override
  @JsonKey(name: 'group1')
  String? get group1;
  @override
  @JsonKey(name: 'group2')
  String get group2;
  @override
  @JsonKey(name: 'item')
  String get item;
  @override
  @JsonKey(ignore: true)
  _$$MaintenanceFormResponseImplCopyWith<_$MaintenanceFormResponseImpl>
      get copyWith => throw _privateConstructorUsedError;
}
