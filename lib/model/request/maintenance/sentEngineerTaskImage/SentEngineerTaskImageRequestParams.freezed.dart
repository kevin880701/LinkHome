// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'SentEngineerTaskImageRequestParams.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

SentEngineerTaskImageRequestParams _$SentEngineerTaskImageRequestParamsFromJson(
    Map<String, dynamic> json) {
  return _SentEngineerTaskImageRequestParams.fromJson(json);
}

/// @nodoc
mixin _$SentEngineerTaskImageRequestParams {
  @JsonKey(name: 'm_id')
  int get mId => throw _privateConstructorUsedError;
  @JsonKey(name: 'kind')
  int get kind => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $SentEngineerTaskImageRequestParamsCopyWith<
          SentEngineerTaskImageRequestParams>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $SentEngineerTaskImageRequestParamsCopyWith<$Res> {
  factory $SentEngineerTaskImageRequestParamsCopyWith(
          SentEngineerTaskImageRequestParams value,
          $Res Function(SentEngineerTaskImageRequestParams) then) =
      _$SentEngineerTaskImageRequestParamsCopyWithImpl<$Res,
          SentEngineerTaskImageRequestParams>;
  @useResult
  $Res call({@JsonKey(name: 'm_id') int mId, @JsonKey(name: 'kind') int kind});
}

/// @nodoc
class _$SentEngineerTaskImageRequestParamsCopyWithImpl<$Res,
        $Val extends SentEngineerTaskImageRequestParams>
    implements $SentEngineerTaskImageRequestParamsCopyWith<$Res> {
  _$SentEngineerTaskImageRequestParamsCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? mId = null,
    Object? kind = null,
  }) {
    return _then(_value.copyWith(
      mId: null == mId
          ? _value.mId
          : mId // ignore: cast_nullable_to_non_nullable
              as int,
      kind: null == kind
          ? _value.kind
          : kind // ignore: cast_nullable_to_non_nullable
              as int,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$SentEngineerTaskImageRequestParamsImplCopyWith<$Res>
    implements $SentEngineerTaskImageRequestParamsCopyWith<$Res> {
  factory _$$SentEngineerTaskImageRequestParamsImplCopyWith(
          _$SentEngineerTaskImageRequestParamsImpl value,
          $Res Function(_$SentEngineerTaskImageRequestParamsImpl) then) =
      __$$SentEngineerTaskImageRequestParamsImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({@JsonKey(name: 'm_id') int mId, @JsonKey(name: 'kind') int kind});
}

/// @nodoc
class __$$SentEngineerTaskImageRequestParamsImplCopyWithImpl<$Res>
    extends _$SentEngineerTaskImageRequestParamsCopyWithImpl<$Res,
        _$SentEngineerTaskImageRequestParamsImpl>
    implements _$$SentEngineerTaskImageRequestParamsImplCopyWith<$Res> {
  __$$SentEngineerTaskImageRequestParamsImplCopyWithImpl(
      _$SentEngineerTaskImageRequestParamsImpl _value,
      $Res Function(_$SentEngineerTaskImageRequestParamsImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? mId = null,
    Object? kind = null,
  }) {
    return _then(_$SentEngineerTaskImageRequestParamsImpl(
      mId: null == mId
          ? _value.mId
          : mId // ignore: cast_nullable_to_non_nullable
              as int,
      kind: null == kind
          ? _value.kind
          : kind // ignore: cast_nullable_to_non_nullable
              as int,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$SentEngineerTaskImageRequestParamsImpl
    implements _SentEngineerTaskImageRequestParams {
  const _$SentEngineerTaskImageRequestParamsImpl(
      {@JsonKey(name: 'm_id') required this.mId,
      @JsonKey(name: 'kind') required this.kind});

  factory _$SentEngineerTaskImageRequestParamsImpl.fromJson(
          Map<String, dynamic> json) =>
      _$$SentEngineerTaskImageRequestParamsImplFromJson(json);

  @override
  @JsonKey(name: 'm_id')
  final int mId;
  @override
  @JsonKey(name: 'kind')
  final int kind;

  @override
  String toString() {
    return 'SentEngineerTaskImageRequestParams(mId: $mId, kind: $kind)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$SentEngineerTaskImageRequestParamsImpl &&
            (identical(other.mId, mId) || other.mId == mId) &&
            (identical(other.kind, kind) || other.kind == kind));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, mId, kind);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$SentEngineerTaskImageRequestParamsImplCopyWith<
          _$SentEngineerTaskImageRequestParamsImpl>
      get copyWith => __$$SentEngineerTaskImageRequestParamsImplCopyWithImpl<
          _$SentEngineerTaskImageRequestParamsImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$SentEngineerTaskImageRequestParamsImplToJson(
      this,
    );
  }
}

abstract class _SentEngineerTaskImageRequestParams
    implements SentEngineerTaskImageRequestParams {
  const factory _SentEngineerTaskImageRequestParams(
          {@JsonKey(name: 'm_id') required final int mId,
          @JsonKey(name: 'kind') required final int kind}) =
      _$SentEngineerTaskImageRequestParamsImpl;

  factory _SentEngineerTaskImageRequestParams.fromJson(
          Map<String, dynamic> json) =
      _$SentEngineerTaskImageRequestParamsImpl.fromJson;

  @override
  @JsonKey(name: 'm_id')
  int get mId;
  @override
  @JsonKey(name: 'kind')
  int get kind;
  @override
  @JsonKey(ignore: true)
  _$$SentEngineerTaskImageRequestParamsImplCopyWith<
          _$SentEngineerTaskImageRequestParamsImpl>
      get copyWith => throw _privateConstructorUsedError;
}
