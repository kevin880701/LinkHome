// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'ChangeUserPhoneRequestBody.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

ChangeUserPhoneRequestBody _$ChangeUserPhoneRequestBodyFromJson(
    Map<String, dynamic> json) {
  return _ChangeUserPhoneRequestBody.fromJson(json);
}

/// @nodoc
mixin _$ChangeUserPhoneRequestBody {
  String get tel => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $ChangeUserPhoneRequestBodyCopyWith<ChangeUserPhoneRequestBody>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ChangeUserPhoneRequestBodyCopyWith<$Res> {
  factory $ChangeUserPhoneRequestBodyCopyWith(ChangeUserPhoneRequestBody value,
          $Res Function(ChangeUserPhoneRequestBody) then) =
      _$ChangeUserPhoneRequestBodyCopyWithImpl<$Res,
          ChangeUserPhoneRequestBody>;
  @useResult
  $Res call({String tel});
}

/// @nodoc
class _$ChangeUserPhoneRequestBodyCopyWithImpl<$Res,
        $Val extends ChangeUserPhoneRequestBody>
    implements $ChangeUserPhoneRequestBodyCopyWith<$Res> {
  _$ChangeUserPhoneRequestBodyCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? tel = null,
  }) {
    return _then(_value.copyWith(
      tel: null == tel
          ? _value.tel
          : tel // ignore: cast_nullable_to_non_nullable
              as String,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$ChangeUserPhoneRequestBodyImplCopyWith<$Res>
    implements $ChangeUserPhoneRequestBodyCopyWith<$Res> {
  factory _$$ChangeUserPhoneRequestBodyImplCopyWith(
          _$ChangeUserPhoneRequestBodyImpl value,
          $Res Function(_$ChangeUserPhoneRequestBodyImpl) then) =
      __$$ChangeUserPhoneRequestBodyImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String tel});
}

/// @nodoc
class __$$ChangeUserPhoneRequestBodyImplCopyWithImpl<$Res>
    extends _$ChangeUserPhoneRequestBodyCopyWithImpl<$Res,
        _$ChangeUserPhoneRequestBodyImpl>
    implements _$$ChangeUserPhoneRequestBodyImplCopyWith<$Res> {
  __$$ChangeUserPhoneRequestBodyImplCopyWithImpl(
      _$ChangeUserPhoneRequestBodyImpl _value,
      $Res Function(_$ChangeUserPhoneRequestBodyImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? tel = null,
  }) {
    return _then(_$ChangeUserPhoneRequestBodyImpl(
      tel: null == tel
          ? _value.tel
          : tel // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$ChangeUserPhoneRequestBodyImpl implements _ChangeUserPhoneRequestBody {
  const _$ChangeUserPhoneRequestBodyImpl({required this.tel});

  factory _$ChangeUserPhoneRequestBodyImpl.fromJson(
          Map<String, dynamic> json) =>
      _$$ChangeUserPhoneRequestBodyImplFromJson(json);

  @override
  final String tel;

  @override
  String toString() {
    return 'ChangeUserPhoneRequestBody(tel: $tel)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ChangeUserPhoneRequestBodyImpl &&
            (identical(other.tel, tel) || other.tel == tel));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, tel);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$ChangeUserPhoneRequestBodyImplCopyWith<_$ChangeUserPhoneRequestBodyImpl>
      get copyWith => __$$ChangeUserPhoneRequestBodyImplCopyWithImpl<
          _$ChangeUserPhoneRequestBodyImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$ChangeUserPhoneRequestBodyImplToJson(
      this,
    );
  }
}

abstract class _ChangeUserPhoneRequestBody
    implements ChangeUserPhoneRequestBody {
  const factory _ChangeUserPhoneRequestBody({required final String tel}) =
      _$ChangeUserPhoneRequestBodyImpl;

  factory _ChangeUserPhoneRequestBody.fromJson(Map<String, dynamic> json) =
      _$ChangeUserPhoneRequestBodyImpl.fromJson;

  @override
  String get tel;
  @override
  @JsonKey(ignore: true)
  _$$ChangeUserPhoneRequestBodyImplCopyWith<_$ChangeUserPhoneRequestBodyImpl>
      get copyWith => throw _privateConstructorUsedError;
}
