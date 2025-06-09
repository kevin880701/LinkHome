// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'DeleteAccountRequestParams.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

DeleteAccountRequestParams _$DeleteAccountRequestParamsFromJson(
    Map<String, dynamic> json) {
  return _DeleteAccountRequestParams.fromJson(json);
}

/// @nodoc
mixin _$DeleteAccountRequestParams {
  @JsonKey(name: 'account')
  String get account => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $DeleteAccountRequestParamsCopyWith<DeleteAccountRequestParams>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $DeleteAccountRequestParamsCopyWith<$Res> {
  factory $DeleteAccountRequestParamsCopyWith(DeleteAccountRequestParams value,
          $Res Function(DeleteAccountRequestParams) then) =
      _$DeleteAccountRequestParamsCopyWithImpl<$Res,
          DeleteAccountRequestParams>;
  @useResult
  $Res call({@JsonKey(name: 'account') String account});
}

/// @nodoc
class _$DeleteAccountRequestParamsCopyWithImpl<$Res,
        $Val extends DeleteAccountRequestParams>
    implements $DeleteAccountRequestParamsCopyWith<$Res> {
  _$DeleteAccountRequestParamsCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? account = null,
  }) {
    return _then(_value.copyWith(
      account: null == account
          ? _value.account
          : account // ignore: cast_nullable_to_non_nullable
              as String,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$DeleteAccountRequestParamsImplCopyWith<$Res>
    implements $DeleteAccountRequestParamsCopyWith<$Res> {
  factory _$$DeleteAccountRequestParamsImplCopyWith(
          _$DeleteAccountRequestParamsImpl value,
          $Res Function(_$DeleteAccountRequestParamsImpl) then) =
      __$$DeleteAccountRequestParamsImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({@JsonKey(name: 'account') String account});
}

/// @nodoc
class __$$DeleteAccountRequestParamsImplCopyWithImpl<$Res>
    extends _$DeleteAccountRequestParamsCopyWithImpl<$Res,
        _$DeleteAccountRequestParamsImpl>
    implements _$$DeleteAccountRequestParamsImplCopyWith<$Res> {
  __$$DeleteAccountRequestParamsImplCopyWithImpl(
      _$DeleteAccountRequestParamsImpl _value,
      $Res Function(_$DeleteAccountRequestParamsImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? account = null,
  }) {
    return _then(_$DeleteAccountRequestParamsImpl(
      account: null == account
          ? _value.account
          : account // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$DeleteAccountRequestParamsImpl implements _DeleteAccountRequestParams {
  const _$DeleteAccountRequestParamsImpl(
      {@JsonKey(name: 'account') required this.account});

  factory _$DeleteAccountRequestParamsImpl.fromJson(
          Map<String, dynamic> json) =>
      _$$DeleteAccountRequestParamsImplFromJson(json);

  @override
  @JsonKey(name: 'account')
  final String account;

  @override
  String toString() {
    return 'DeleteAccountRequestParams(account: $account)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$DeleteAccountRequestParamsImpl &&
            (identical(other.account, account) || other.account == account));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, account);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$DeleteAccountRequestParamsImplCopyWith<_$DeleteAccountRequestParamsImpl>
      get copyWith => __$$DeleteAccountRequestParamsImplCopyWithImpl<
          _$DeleteAccountRequestParamsImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$DeleteAccountRequestParamsImplToJson(
      this,
    );
  }
}

abstract class _DeleteAccountRequestParams
    implements DeleteAccountRequestParams {
  const factory _DeleteAccountRequestParams(
          {@JsonKey(name: 'account') required final String account}) =
      _$DeleteAccountRequestParamsImpl;

  factory _DeleteAccountRequestParams.fromJson(Map<String, dynamic> json) =
      _$DeleteAccountRequestParamsImpl.fromJson;

  @override
  @JsonKey(name: 'account')
  String get account;
  @override
  @JsonKey(ignore: true)
  _$$DeleteAccountRequestParamsImplCopyWith<_$DeleteAccountRequestParamsImpl>
      get copyWith => throw _privateConstructorUsedError;
}
