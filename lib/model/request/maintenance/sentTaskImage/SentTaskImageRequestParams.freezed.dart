// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'SentTaskImageRequestParams.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

SentTaskImageRequestParams _$SentTaskImageRequestParamsFromJson(
    Map<String, dynamic> json) {
  return _SentTaskImageRequestParams.fromJson(json);
}

/// @nodoc
mixin _$SentTaskImageRequestParams {
  @JsonKey(name: 'm_id')
  int get mId => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $SentTaskImageRequestParamsCopyWith<SentTaskImageRequestParams>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $SentTaskImageRequestParamsCopyWith<$Res> {
  factory $SentTaskImageRequestParamsCopyWith(SentTaskImageRequestParams value,
          $Res Function(SentTaskImageRequestParams) then) =
      _$SentTaskImageRequestParamsCopyWithImpl<$Res,
          SentTaskImageRequestParams>;
  @useResult
  $Res call({@JsonKey(name: 'm_id') int mId});
}

/// @nodoc
class _$SentTaskImageRequestParamsCopyWithImpl<$Res,
        $Val extends SentTaskImageRequestParams>
    implements $SentTaskImageRequestParamsCopyWith<$Res> {
  _$SentTaskImageRequestParamsCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? mId = null,
  }) {
    return _then(_value.copyWith(
      mId: null == mId
          ? _value.mId
          : mId // ignore: cast_nullable_to_non_nullable
              as int,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$SentTaskImageRequestParamsImplCopyWith<$Res>
    implements $SentTaskImageRequestParamsCopyWith<$Res> {
  factory _$$SentTaskImageRequestParamsImplCopyWith(
          _$SentTaskImageRequestParamsImpl value,
          $Res Function(_$SentTaskImageRequestParamsImpl) then) =
      __$$SentTaskImageRequestParamsImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({@JsonKey(name: 'm_id') int mId});
}

/// @nodoc
class __$$SentTaskImageRequestParamsImplCopyWithImpl<$Res>
    extends _$SentTaskImageRequestParamsCopyWithImpl<$Res,
        _$SentTaskImageRequestParamsImpl>
    implements _$$SentTaskImageRequestParamsImplCopyWith<$Res> {
  __$$SentTaskImageRequestParamsImplCopyWithImpl(
      _$SentTaskImageRequestParamsImpl _value,
      $Res Function(_$SentTaskImageRequestParamsImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? mId = null,
  }) {
    return _then(_$SentTaskImageRequestParamsImpl(
      mId: null == mId
          ? _value.mId
          : mId // ignore: cast_nullable_to_non_nullable
              as int,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$SentTaskImageRequestParamsImpl implements _SentTaskImageRequestParams {
  const _$SentTaskImageRequestParamsImpl(
      {@JsonKey(name: 'm_id') required this.mId});

  factory _$SentTaskImageRequestParamsImpl.fromJson(
          Map<String, dynamic> json) =>
      _$$SentTaskImageRequestParamsImplFromJson(json);

  @override
  @JsonKey(name: 'm_id')
  final int mId;

  @override
  String toString() {
    return 'SentTaskImageRequestParams(mId: $mId)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$SentTaskImageRequestParamsImpl &&
            (identical(other.mId, mId) || other.mId == mId));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, mId);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$SentTaskImageRequestParamsImplCopyWith<_$SentTaskImageRequestParamsImpl>
      get copyWith => __$$SentTaskImageRequestParamsImplCopyWithImpl<
          _$SentTaskImageRequestParamsImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$SentTaskImageRequestParamsImplToJson(
      this,
    );
  }
}

abstract class _SentTaskImageRequestParams
    implements SentTaskImageRequestParams {
  const factory _SentTaskImageRequestParams(
          {@JsonKey(name: 'm_id') required final int mId}) =
      _$SentTaskImageRequestParamsImpl;

  factory _SentTaskImageRequestParams.fromJson(Map<String, dynamic> json) =
      _$SentTaskImageRequestParamsImpl.fromJson;

  @override
  @JsonKey(name: 'm_id')
  int get mId;
  @override
  @JsonKey(ignore: true)
  _$$SentTaskImageRequestParamsImplCopyWith<_$SentTaskImageRequestParamsImpl>
      get copyWith => throw _privateConstructorUsedError;
}
