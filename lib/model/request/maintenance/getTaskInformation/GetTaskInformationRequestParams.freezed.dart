// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'GetTaskInformationRequestParams.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

GetTaskInformationRequestParams _$GetTaskInformationRequestParamsFromJson(
    Map<String, dynamic> json) {
  return _GetTaskInformationRequestParams.fromJson(json);
}

/// @nodoc
mixin _$GetTaskInformationRequestParams {
  @JsonKey(name: 'm_id')
  int get mId => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $GetTaskInformationRequestParamsCopyWith<GetTaskInformationRequestParams>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $GetTaskInformationRequestParamsCopyWith<$Res> {
  factory $GetTaskInformationRequestParamsCopyWith(
          GetTaskInformationRequestParams value,
          $Res Function(GetTaskInformationRequestParams) then) =
      _$GetTaskInformationRequestParamsCopyWithImpl<$Res,
          GetTaskInformationRequestParams>;
  @useResult
  $Res call({@JsonKey(name: 'm_id') int mId});
}

/// @nodoc
class _$GetTaskInformationRequestParamsCopyWithImpl<$Res,
        $Val extends GetTaskInformationRequestParams>
    implements $GetTaskInformationRequestParamsCopyWith<$Res> {
  _$GetTaskInformationRequestParamsCopyWithImpl(this._value, this._then);

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
abstract class _$$GetTaskInformationRequestParamsImplCopyWith<$Res>
    implements $GetTaskInformationRequestParamsCopyWith<$Res> {
  factory _$$GetTaskInformationRequestParamsImplCopyWith(
          _$GetTaskInformationRequestParamsImpl value,
          $Res Function(_$GetTaskInformationRequestParamsImpl) then) =
      __$$GetTaskInformationRequestParamsImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({@JsonKey(name: 'm_id') int mId});
}

/// @nodoc
class __$$GetTaskInformationRequestParamsImplCopyWithImpl<$Res>
    extends _$GetTaskInformationRequestParamsCopyWithImpl<$Res,
        _$GetTaskInformationRequestParamsImpl>
    implements _$$GetTaskInformationRequestParamsImplCopyWith<$Res> {
  __$$GetTaskInformationRequestParamsImplCopyWithImpl(
      _$GetTaskInformationRequestParamsImpl _value,
      $Res Function(_$GetTaskInformationRequestParamsImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? mId = null,
  }) {
    return _then(_$GetTaskInformationRequestParamsImpl(
      mId: null == mId
          ? _value.mId
          : mId // ignore: cast_nullable_to_non_nullable
              as int,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$GetTaskInformationRequestParamsImpl
    implements _GetTaskInformationRequestParams {
  const _$GetTaskInformationRequestParamsImpl(
      {@JsonKey(name: 'm_id') required this.mId});

  factory _$GetTaskInformationRequestParamsImpl.fromJson(
          Map<String, dynamic> json) =>
      _$$GetTaskInformationRequestParamsImplFromJson(json);

  @override
  @JsonKey(name: 'm_id')
  final int mId;

  @override
  String toString() {
    return 'GetTaskInformationRequestParams(mId: $mId)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$GetTaskInformationRequestParamsImpl &&
            (identical(other.mId, mId) || other.mId == mId));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, mId);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$GetTaskInformationRequestParamsImplCopyWith<
          _$GetTaskInformationRequestParamsImpl>
      get copyWith => __$$GetTaskInformationRequestParamsImplCopyWithImpl<
          _$GetTaskInformationRequestParamsImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$GetTaskInformationRequestParamsImplToJson(
      this,
    );
  }
}

abstract class _GetTaskInformationRequestParams
    implements GetTaskInformationRequestParams {
  const factory _GetTaskInformationRequestParams(
          {@JsonKey(name: 'm_id') required final int mId}) =
      _$GetTaskInformationRequestParamsImpl;

  factory _GetTaskInformationRequestParams.fromJson(Map<String, dynamic> json) =
      _$GetTaskInformationRequestParamsImpl.fromJson;

  @override
  @JsonKey(name: 'm_id')
  int get mId;
  @override
  @JsonKey(ignore: true)
  _$$GetTaskInformationRequestParamsImplCopyWith<
          _$GetTaskInformationRequestParamsImpl>
      get copyWith => throw _privateConstructorUsedError;
}
