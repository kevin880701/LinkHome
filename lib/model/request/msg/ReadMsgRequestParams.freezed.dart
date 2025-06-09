// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'ReadMsgRequestParams.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

ReadMsgRequestParams _$ReadMsgRequestParamsFromJson(Map<String, dynamic> json) {
  return _ReadMsgRequestParams.fromJson(json);
}

/// @nodoc
mixin _$ReadMsgRequestParams {
  @JsonKey(name: 'msg_id')
  int get msgId => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $ReadMsgRequestParamsCopyWith<ReadMsgRequestParams> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ReadMsgRequestParamsCopyWith<$Res> {
  factory $ReadMsgRequestParamsCopyWith(ReadMsgRequestParams value,
          $Res Function(ReadMsgRequestParams) then) =
      _$ReadMsgRequestParamsCopyWithImpl<$Res, ReadMsgRequestParams>;
  @useResult
  $Res call({@JsonKey(name: 'msg_id') int msgId});
}

/// @nodoc
class _$ReadMsgRequestParamsCopyWithImpl<$Res,
        $Val extends ReadMsgRequestParams>
    implements $ReadMsgRequestParamsCopyWith<$Res> {
  _$ReadMsgRequestParamsCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? msgId = null,
  }) {
    return _then(_value.copyWith(
      msgId: null == msgId
          ? _value.msgId
          : msgId // ignore: cast_nullable_to_non_nullable
              as int,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$ReadMsgRequestParamsImplCopyWith<$Res>
    implements $ReadMsgRequestParamsCopyWith<$Res> {
  factory _$$ReadMsgRequestParamsImplCopyWith(_$ReadMsgRequestParamsImpl value,
          $Res Function(_$ReadMsgRequestParamsImpl) then) =
      __$$ReadMsgRequestParamsImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({@JsonKey(name: 'msg_id') int msgId});
}

/// @nodoc
class __$$ReadMsgRequestParamsImplCopyWithImpl<$Res>
    extends _$ReadMsgRequestParamsCopyWithImpl<$Res, _$ReadMsgRequestParamsImpl>
    implements _$$ReadMsgRequestParamsImplCopyWith<$Res> {
  __$$ReadMsgRequestParamsImplCopyWithImpl(_$ReadMsgRequestParamsImpl _value,
      $Res Function(_$ReadMsgRequestParamsImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? msgId = null,
  }) {
    return _then(_$ReadMsgRequestParamsImpl(
      msgId: null == msgId
          ? _value.msgId
          : msgId // ignore: cast_nullable_to_non_nullable
              as int,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$ReadMsgRequestParamsImpl implements _ReadMsgRequestParams {
  const _$ReadMsgRequestParamsImpl(
      {@JsonKey(name: 'msg_id') required this.msgId});

  factory _$ReadMsgRequestParamsImpl.fromJson(Map<String, dynamic> json) =>
      _$$ReadMsgRequestParamsImplFromJson(json);

  @override
  @JsonKey(name: 'msg_id')
  final int msgId;

  @override
  String toString() {
    return 'ReadMsgRequestParams(msgId: $msgId)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ReadMsgRequestParamsImpl &&
            (identical(other.msgId, msgId) || other.msgId == msgId));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, msgId);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$ReadMsgRequestParamsImplCopyWith<_$ReadMsgRequestParamsImpl>
      get copyWith =>
          __$$ReadMsgRequestParamsImplCopyWithImpl<_$ReadMsgRequestParamsImpl>(
              this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$ReadMsgRequestParamsImplToJson(
      this,
    );
  }
}

abstract class _ReadMsgRequestParams implements ReadMsgRequestParams {
  const factory _ReadMsgRequestParams(
          {@JsonKey(name: 'msg_id') required final int msgId}) =
      _$ReadMsgRequestParamsImpl;

  factory _ReadMsgRequestParams.fromJson(Map<String, dynamic> json) =
      _$ReadMsgRequestParamsImpl.fromJson;

  @override
  @JsonKey(name: 'msg_id')
  int get msgId;
  @override
  @JsonKey(ignore: true)
  _$$ReadMsgRequestParamsImplCopyWith<_$ReadMsgRequestParamsImpl>
      get copyWith => throw _privateConstructorUsedError;
}
