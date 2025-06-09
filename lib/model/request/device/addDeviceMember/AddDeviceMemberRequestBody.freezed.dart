// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'AddDeviceMemberRequestBody.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

AddDeviceMemberRequestBody _$AddDeviceMemberRequestBodyFromJson(
    Map<String, dynamic> json) {
  return _AddDeviceMemberRequestBody.fromJson(json);
}

/// @nodoc
mixin _$AddDeviceMemberRequestBody {
  @JsonKey(name: 'account')
  String get account => throw _privateConstructorUsedError;
  @JsonKey(name: 'place_id')
  int get placeId => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $AddDeviceMemberRequestBodyCopyWith<AddDeviceMemberRequestBody>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $AddDeviceMemberRequestBodyCopyWith<$Res> {
  factory $AddDeviceMemberRequestBodyCopyWith(AddDeviceMemberRequestBody value,
          $Res Function(AddDeviceMemberRequestBody) then) =
      _$AddDeviceMemberRequestBodyCopyWithImpl<$Res,
          AddDeviceMemberRequestBody>;
  @useResult
  $Res call(
      {@JsonKey(name: 'account') String account,
      @JsonKey(name: 'place_id') int placeId});
}

/// @nodoc
class _$AddDeviceMemberRequestBodyCopyWithImpl<$Res,
        $Val extends AddDeviceMemberRequestBody>
    implements $AddDeviceMemberRequestBodyCopyWith<$Res> {
  _$AddDeviceMemberRequestBodyCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? account = null,
    Object? placeId = null,
  }) {
    return _then(_value.copyWith(
      account: null == account
          ? _value.account
          : account // ignore: cast_nullable_to_non_nullable
              as String,
      placeId: null == placeId
          ? _value.placeId
          : placeId // ignore: cast_nullable_to_non_nullable
              as int,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$AddDeviceMemberRequestBodyImplCopyWith<$Res>
    implements $AddDeviceMemberRequestBodyCopyWith<$Res> {
  factory _$$AddDeviceMemberRequestBodyImplCopyWith(
          _$AddDeviceMemberRequestBodyImpl value,
          $Res Function(_$AddDeviceMemberRequestBodyImpl) then) =
      __$$AddDeviceMemberRequestBodyImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {@JsonKey(name: 'account') String account,
      @JsonKey(name: 'place_id') int placeId});
}

/// @nodoc
class __$$AddDeviceMemberRequestBodyImplCopyWithImpl<$Res>
    extends _$AddDeviceMemberRequestBodyCopyWithImpl<$Res,
        _$AddDeviceMemberRequestBodyImpl>
    implements _$$AddDeviceMemberRequestBodyImplCopyWith<$Res> {
  __$$AddDeviceMemberRequestBodyImplCopyWithImpl(
      _$AddDeviceMemberRequestBodyImpl _value,
      $Res Function(_$AddDeviceMemberRequestBodyImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? account = null,
    Object? placeId = null,
  }) {
    return _then(_$AddDeviceMemberRequestBodyImpl(
      account: null == account
          ? _value.account
          : account // ignore: cast_nullable_to_non_nullable
              as String,
      placeId: null == placeId
          ? _value.placeId
          : placeId // ignore: cast_nullable_to_non_nullable
              as int,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$AddDeviceMemberRequestBodyImpl implements _AddDeviceMemberRequestBody {
  const _$AddDeviceMemberRequestBodyImpl(
      {@JsonKey(name: 'account') required this.account,
      @JsonKey(name: 'place_id') required this.placeId});

  factory _$AddDeviceMemberRequestBodyImpl.fromJson(
          Map<String, dynamic> json) =>
      _$$AddDeviceMemberRequestBodyImplFromJson(json);

  @override
  @JsonKey(name: 'account')
  final String account;
  @override
  @JsonKey(name: 'place_id')
  final int placeId;

  @override
  String toString() {
    return 'AddDeviceMemberRequestBody(account: $account, placeId: $placeId)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$AddDeviceMemberRequestBodyImpl &&
            (identical(other.account, account) || other.account == account) &&
            (identical(other.placeId, placeId) || other.placeId == placeId));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, account, placeId);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$AddDeviceMemberRequestBodyImplCopyWith<_$AddDeviceMemberRequestBodyImpl>
      get copyWith => __$$AddDeviceMemberRequestBodyImplCopyWithImpl<
          _$AddDeviceMemberRequestBodyImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$AddDeviceMemberRequestBodyImplToJson(
      this,
    );
  }
}

abstract class _AddDeviceMemberRequestBody
    implements AddDeviceMemberRequestBody {
  const factory _AddDeviceMemberRequestBody(
          {@JsonKey(name: 'account') required final String account,
          @JsonKey(name: 'place_id') required final int placeId}) =
      _$AddDeviceMemberRequestBodyImpl;

  factory _AddDeviceMemberRequestBody.fromJson(Map<String, dynamic> json) =
      _$AddDeviceMemberRequestBodyImpl.fromJson;

  @override
  @JsonKey(name: 'account')
  String get account;
  @override
  @JsonKey(name: 'place_id')
  int get placeId;
  @override
  @JsonKey(ignore: true)
  _$$AddDeviceMemberRequestBodyImplCopyWith<_$AddDeviceMemberRequestBodyImpl>
      get copyWith => throw _privateConstructorUsedError;
}
