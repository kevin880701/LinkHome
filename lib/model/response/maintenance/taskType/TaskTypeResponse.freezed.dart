// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'TaskTypeResponse.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

TaskTypeResponse _$TaskTypeResponseFromJson(Map<String, dynamic> json) {
  return _TaskTypeResponse.fromJson(json);
}

/// @nodoc
mixin _$TaskTypeResponse {
  @JsonKey(name: 'id')
  int get id => throw _privateConstructorUsedError;
  @JsonKey(name: 'name')
  String get name => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $TaskTypeResponseCopyWith<TaskTypeResponse> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $TaskTypeResponseCopyWith<$Res> {
  factory $TaskTypeResponseCopyWith(
          TaskTypeResponse value, $Res Function(TaskTypeResponse) then) =
      _$TaskTypeResponseCopyWithImpl<$Res, TaskTypeResponse>;
  @useResult
  $Res call({@JsonKey(name: 'id') int id, @JsonKey(name: 'name') String name});
}

/// @nodoc
class _$TaskTypeResponseCopyWithImpl<$Res, $Val extends TaskTypeResponse>
    implements $TaskTypeResponseCopyWith<$Res> {
  _$TaskTypeResponseCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? name = null,
  }) {
    return _then(_value.copyWith(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int,
      name: null == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$TaskTypeResponseImplCopyWith<$Res>
    implements $TaskTypeResponseCopyWith<$Res> {
  factory _$$TaskTypeResponseImplCopyWith(_$TaskTypeResponseImpl value,
          $Res Function(_$TaskTypeResponseImpl) then) =
      __$$TaskTypeResponseImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({@JsonKey(name: 'id') int id, @JsonKey(name: 'name') String name});
}

/// @nodoc
class __$$TaskTypeResponseImplCopyWithImpl<$Res>
    extends _$TaskTypeResponseCopyWithImpl<$Res, _$TaskTypeResponseImpl>
    implements _$$TaskTypeResponseImplCopyWith<$Res> {
  __$$TaskTypeResponseImplCopyWithImpl(_$TaskTypeResponseImpl _value,
      $Res Function(_$TaskTypeResponseImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? name = null,
  }) {
    return _then(_$TaskTypeResponseImpl(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int,
      name: null == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$TaskTypeResponseImpl implements _TaskTypeResponse {
  const _$TaskTypeResponseImpl(
      {@JsonKey(name: 'id') required this.id,
      @JsonKey(name: 'name') required this.name});

  factory _$TaskTypeResponseImpl.fromJson(Map<String, dynamic> json) =>
      _$$TaskTypeResponseImplFromJson(json);

  @override
  @JsonKey(name: 'id')
  final int id;
  @override
  @JsonKey(name: 'name')
  final String name;

  @override
  String toString() {
    return 'TaskTypeResponse(id: $id, name: $name)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$TaskTypeResponseImpl &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.name, name) || other.name == name));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, id, name);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$TaskTypeResponseImplCopyWith<_$TaskTypeResponseImpl> get copyWith =>
      __$$TaskTypeResponseImplCopyWithImpl<_$TaskTypeResponseImpl>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$TaskTypeResponseImplToJson(
      this,
    );
  }
}

abstract class _TaskTypeResponse implements TaskTypeResponse {
  const factory _TaskTypeResponse(
          {@JsonKey(name: 'id') required final int id,
          @JsonKey(name: 'name') required final String name}) =
      _$TaskTypeResponseImpl;

  factory _TaskTypeResponse.fromJson(Map<String, dynamic> json) =
      _$TaskTypeResponseImpl.fromJson;

  @override
  @JsonKey(name: 'id')
  int get id;
  @override
  @JsonKey(name: 'name')
  String get name;
  @override
  @JsonKey(ignore: true)
  _$$TaskTypeResponseImplCopyWith<_$TaskTypeResponseImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
