// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'ChangePasswordRequestBody.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

ChangePasswordRequestBody _$ChangePasswordRequestBodyFromJson(
    Map<String, dynamic> json) {
  return _ChangePasswordRequestBody.fromJson(json);
}

/// @nodoc
mixin _$ChangePasswordRequestBody {
  String get newPassword => throw _privateConstructorUsedError;
  String get password => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $ChangePasswordRequestBodyCopyWith<ChangePasswordRequestBody> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ChangePasswordRequestBodyCopyWith<$Res> {
  factory $ChangePasswordRequestBodyCopyWith(ChangePasswordRequestBody value,
          $Res Function(ChangePasswordRequestBody) then) =
      _$ChangePasswordRequestBodyCopyWithImpl<$Res, ChangePasswordRequestBody>;
  @useResult
  $Res call({String newPassword, String password});
}

/// @nodoc
class _$ChangePasswordRequestBodyCopyWithImpl<$Res,
        $Val extends ChangePasswordRequestBody>
    implements $ChangePasswordRequestBodyCopyWith<$Res> {
  _$ChangePasswordRequestBodyCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? newPassword = null,
    Object? password = null,
  }) {
    return _then(_value.copyWith(
      newPassword: null == newPassword
          ? _value.newPassword
          : newPassword // ignore: cast_nullable_to_non_nullable
              as String,
      password: null == password
          ? _value.password
          : password // ignore: cast_nullable_to_non_nullable
              as String,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$ChangePasswordRequestBodyImplCopyWith<$Res>
    implements $ChangePasswordRequestBodyCopyWith<$Res> {
  factory _$$ChangePasswordRequestBodyImplCopyWith(
          _$ChangePasswordRequestBodyImpl value,
          $Res Function(_$ChangePasswordRequestBodyImpl) then) =
      __$$ChangePasswordRequestBodyImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String newPassword, String password});
}

/// @nodoc
class __$$ChangePasswordRequestBodyImplCopyWithImpl<$Res>
    extends _$ChangePasswordRequestBodyCopyWithImpl<$Res,
        _$ChangePasswordRequestBodyImpl>
    implements _$$ChangePasswordRequestBodyImplCopyWith<$Res> {
  __$$ChangePasswordRequestBodyImplCopyWithImpl(
      _$ChangePasswordRequestBodyImpl _value,
      $Res Function(_$ChangePasswordRequestBodyImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? newPassword = null,
    Object? password = null,
  }) {
    return _then(_$ChangePasswordRequestBodyImpl(
      newPassword: null == newPassword
          ? _value.newPassword
          : newPassword // ignore: cast_nullable_to_non_nullable
              as String,
      password: null == password
          ? _value.password
          : password // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$ChangePasswordRequestBodyImpl implements _ChangePasswordRequestBody {
  const _$ChangePasswordRequestBodyImpl(
      {required this.newPassword, required this.password});

  factory _$ChangePasswordRequestBodyImpl.fromJson(Map<String, dynamic> json) =>
      _$$ChangePasswordRequestBodyImplFromJson(json);

  @override
  final String newPassword;
  @override
  final String password;

  @override
  String toString() {
    return 'ChangePasswordRequestBody(newPassword: $newPassword, password: $password)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ChangePasswordRequestBodyImpl &&
            (identical(other.newPassword, newPassword) ||
                other.newPassword == newPassword) &&
            (identical(other.password, password) ||
                other.password == password));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, newPassword, password);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$ChangePasswordRequestBodyImplCopyWith<_$ChangePasswordRequestBodyImpl>
      get copyWith => __$$ChangePasswordRequestBodyImplCopyWithImpl<
          _$ChangePasswordRequestBodyImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$ChangePasswordRequestBodyImplToJson(
      this,
    );
  }
}

abstract class _ChangePasswordRequestBody implements ChangePasswordRequestBody {
  const factory _ChangePasswordRequestBody(
      {required final String newPassword,
      required final String password}) = _$ChangePasswordRequestBodyImpl;

  factory _ChangePasswordRequestBody.fromJson(Map<String, dynamic> json) =
      _$ChangePasswordRequestBodyImpl.fromJson;

  @override
  String get newPassword;
  @override
  String get password;
  @override
  @JsonKey(ignore: true)
  _$$ChangePasswordRequestBodyImplCopyWith<_$ChangePasswordRequestBodyImpl>
      get copyWith => throw _privateConstructorUsedError;
}
