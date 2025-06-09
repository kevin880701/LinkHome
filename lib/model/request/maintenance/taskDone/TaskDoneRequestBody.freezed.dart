// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'TaskDoneRequestBody.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

TaskDoneRequestBody _$TaskDoneRequestBodyFromJson(Map<String, dynamic> json) {
  return _TaskDoneRequestBody.fromJson(json);
}

/// @nodoc
mixin _$TaskDoneRequestBody {
  @JsonKey(name: 'error_reason')
  String get errorReason => throw _privateConstructorUsedError;
  @JsonKey(name: 'fee')
  String get fee => throw _privateConstructorUsedError;
  @JsonKey(name: 'continuance')
  int get continuance => throw _privateConstructorUsedError;
  @JsonKey(name: 'm_id')
  int get mId => throw _privateConstructorUsedError;
  @JsonKey(name: 'status')
  int get status => throw _privateConstructorUsedError;
  @JsonKey(name: 'values')
  List<TaskValue> get values => throw _privateConstructorUsedError;
  @JsonKey(name: 'sn')
  String? get sn => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $TaskDoneRequestBodyCopyWith<TaskDoneRequestBody> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $TaskDoneRequestBodyCopyWith<$Res> {
  factory $TaskDoneRequestBodyCopyWith(
          TaskDoneRequestBody value, $Res Function(TaskDoneRequestBody) then) =
      _$TaskDoneRequestBodyCopyWithImpl<$Res, TaskDoneRequestBody>;
  @useResult
  $Res call(
      {@JsonKey(name: 'error_reason') String errorReason,
      @JsonKey(name: 'fee') String fee,
      @JsonKey(name: 'continuance') int continuance,
      @JsonKey(name: 'm_id') int mId,
      @JsonKey(name: 'status') int status,
      @JsonKey(name: 'values') List<TaskValue> values,
      @JsonKey(name: 'sn') String? sn});
}

/// @nodoc
class _$TaskDoneRequestBodyCopyWithImpl<$Res, $Val extends TaskDoneRequestBody>
    implements $TaskDoneRequestBodyCopyWith<$Res> {
  _$TaskDoneRequestBodyCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? errorReason = null,
    Object? fee = null,
    Object? continuance = null,
    Object? mId = null,
    Object? status = null,
    Object? values = null,
    Object? sn = freezed,
  }) {
    return _then(_value.copyWith(
      errorReason: null == errorReason
          ? _value.errorReason
          : errorReason // ignore: cast_nullable_to_non_nullable
              as String,
      fee: null == fee
          ? _value.fee
          : fee // ignore: cast_nullable_to_non_nullable
              as String,
      continuance: null == continuance
          ? _value.continuance
          : continuance // ignore: cast_nullable_to_non_nullable
              as int,
      mId: null == mId
          ? _value.mId
          : mId // ignore: cast_nullable_to_non_nullable
              as int,
      status: null == status
          ? _value.status
          : status // ignore: cast_nullable_to_non_nullable
              as int,
      values: null == values
          ? _value.values
          : values // ignore: cast_nullable_to_non_nullable
              as List<TaskValue>,
      sn: freezed == sn
          ? _value.sn
          : sn // ignore: cast_nullable_to_non_nullable
              as String?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$TaskDoneRequestBodyImplCopyWith<$Res>
    implements $TaskDoneRequestBodyCopyWith<$Res> {
  factory _$$TaskDoneRequestBodyImplCopyWith(_$TaskDoneRequestBodyImpl value,
          $Res Function(_$TaskDoneRequestBodyImpl) then) =
      __$$TaskDoneRequestBodyImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {@JsonKey(name: 'error_reason') String errorReason,
      @JsonKey(name: 'fee') String fee,
      @JsonKey(name: 'continuance') int continuance,
      @JsonKey(name: 'm_id') int mId,
      @JsonKey(name: 'status') int status,
      @JsonKey(name: 'values') List<TaskValue> values,
      @JsonKey(name: 'sn') String? sn});
}

/// @nodoc
class __$$TaskDoneRequestBodyImplCopyWithImpl<$Res>
    extends _$TaskDoneRequestBodyCopyWithImpl<$Res, _$TaskDoneRequestBodyImpl>
    implements _$$TaskDoneRequestBodyImplCopyWith<$Res> {
  __$$TaskDoneRequestBodyImplCopyWithImpl(_$TaskDoneRequestBodyImpl _value,
      $Res Function(_$TaskDoneRequestBodyImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? errorReason = null,
    Object? fee = null,
    Object? continuance = null,
    Object? mId = null,
    Object? status = null,
    Object? values = null,
    Object? sn = freezed,
  }) {
    return _then(_$TaskDoneRequestBodyImpl(
      errorReason: null == errorReason
          ? _value.errorReason
          : errorReason // ignore: cast_nullable_to_non_nullable
              as String,
      fee: null == fee
          ? _value.fee
          : fee // ignore: cast_nullable_to_non_nullable
              as String,
      continuance: null == continuance
          ? _value.continuance
          : continuance // ignore: cast_nullable_to_non_nullable
              as int,
      mId: null == mId
          ? _value.mId
          : mId // ignore: cast_nullable_to_non_nullable
              as int,
      status: null == status
          ? _value.status
          : status // ignore: cast_nullable_to_non_nullable
              as int,
      values: null == values
          ? _value._values
          : values // ignore: cast_nullable_to_non_nullable
              as List<TaskValue>,
      sn: freezed == sn
          ? _value.sn
          : sn // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$TaskDoneRequestBodyImpl implements _TaskDoneRequestBody {
  const _$TaskDoneRequestBodyImpl(
      {@JsonKey(name: 'error_reason') required this.errorReason,
      @JsonKey(name: 'fee') required this.fee,
      @JsonKey(name: 'continuance') required this.continuance,
      @JsonKey(name: 'm_id') required this.mId,
      @JsonKey(name: 'status') required this.status,
      @JsonKey(name: 'values') required final List<TaskValue> values,
      @JsonKey(name: 'sn') this.sn})
      : _values = values;

  factory _$TaskDoneRequestBodyImpl.fromJson(Map<String, dynamic> json) =>
      _$$TaskDoneRequestBodyImplFromJson(json);

  @override
  @JsonKey(name: 'error_reason')
  final String errorReason;
  @override
  @JsonKey(name: 'fee')
  final String fee;
  @override
  @JsonKey(name: 'continuance')
  final int continuance;
  @override
  @JsonKey(name: 'm_id')
  final int mId;
  @override
  @JsonKey(name: 'status')
  final int status;
  final List<TaskValue> _values;
  @override
  @JsonKey(name: 'values')
  List<TaskValue> get values {
    if (_values is EqualUnmodifiableListView) return _values;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_values);
  }

  @override
  @JsonKey(name: 'sn')
  final String? sn;

  @override
  String toString() {
    return 'TaskDoneRequestBody(errorReason: $errorReason, fee: $fee, continuance: $continuance, mId: $mId, status: $status, values: $values, sn: $sn)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$TaskDoneRequestBodyImpl &&
            (identical(other.errorReason, errorReason) ||
                other.errorReason == errorReason) &&
            (identical(other.fee, fee) || other.fee == fee) &&
            (identical(other.continuance, continuance) ||
                other.continuance == continuance) &&
            (identical(other.mId, mId) || other.mId == mId) &&
            (identical(other.status, status) || other.status == status) &&
            const DeepCollectionEquality().equals(other._values, _values) &&
            (identical(other.sn, sn) || other.sn == sn));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, errorReason, fee, continuance,
      mId, status, const DeepCollectionEquality().hash(_values), sn);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$TaskDoneRequestBodyImplCopyWith<_$TaskDoneRequestBodyImpl> get copyWith =>
      __$$TaskDoneRequestBodyImplCopyWithImpl<_$TaskDoneRequestBodyImpl>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$TaskDoneRequestBodyImplToJson(
      this,
    );
  }
}

abstract class _TaskDoneRequestBody implements TaskDoneRequestBody {
  const factory _TaskDoneRequestBody(
      {@JsonKey(name: 'error_reason') required final String errorReason,
      @JsonKey(name: 'fee') required final String fee,
      @JsonKey(name: 'continuance') required final int continuance,
      @JsonKey(name: 'm_id') required final int mId,
      @JsonKey(name: 'status') required final int status,
      @JsonKey(name: 'values') required final List<TaskValue> values,
      @JsonKey(name: 'sn') final String? sn}) = _$TaskDoneRequestBodyImpl;

  factory _TaskDoneRequestBody.fromJson(Map<String, dynamic> json) =
      _$TaskDoneRequestBodyImpl.fromJson;

  @override
  @JsonKey(name: 'error_reason')
  String get errorReason;
  @override
  @JsonKey(name: 'fee')
  String get fee;
  @override
  @JsonKey(name: 'continuance')
  int get continuance;
  @override
  @JsonKey(name: 'm_id')
  int get mId;
  @override
  @JsonKey(name: 'status')
  int get status;
  @override
  @JsonKey(name: 'values')
  List<TaskValue> get values;
  @override
  @JsonKey(name: 'sn')
  String? get sn;
  @override
  @JsonKey(ignore: true)
  _$$TaskDoneRequestBodyImplCopyWith<_$TaskDoneRequestBodyImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

TaskValue _$TaskValueFromJson(Map<String, dynamic> json) {
  return _TaskValue.fromJson(json);
}

/// @nodoc
mixin _$TaskValue {
  @JsonKey(name: 'code')
  String get code => throw _privateConstructorUsedError;
  @JsonKey(name: 'remark')
  String get remark => throw _privateConstructorUsedError;
  @JsonKey(name: 'value')
  String get value => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $TaskValueCopyWith<TaskValue> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $TaskValueCopyWith<$Res> {
  factory $TaskValueCopyWith(TaskValue value, $Res Function(TaskValue) then) =
      _$TaskValueCopyWithImpl<$Res, TaskValue>;
  @useResult
  $Res call(
      {@JsonKey(name: 'code') String code,
      @JsonKey(name: 'remark') String remark,
      @JsonKey(name: 'value') String value});
}

/// @nodoc
class _$TaskValueCopyWithImpl<$Res, $Val extends TaskValue>
    implements $TaskValueCopyWith<$Res> {
  _$TaskValueCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? code = null,
    Object? remark = null,
    Object? value = null,
  }) {
    return _then(_value.copyWith(
      code: null == code
          ? _value.code
          : code // ignore: cast_nullable_to_non_nullable
              as String,
      remark: null == remark
          ? _value.remark
          : remark // ignore: cast_nullable_to_non_nullable
              as String,
      value: null == value
          ? _value.value
          : value // ignore: cast_nullable_to_non_nullable
              as String,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$TaskValueImplCopyWith<$Res>
    implements $TaskValueCopyWith<$Res> {
  factory _$$TaskValueImplCopyWith(
          _$TaskValueImpl value, $Res Function(_$TaskValueImpl) then) =
      __$$TaskValueImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {@JsonKey(name: 'code') String code,
      @JsonKey(name: 'remark') String remark,
      @JsonKey(name: 'value') String value});
}

/// @nodoc
class __$$TaskValueImplCopyWithImpl<$Res>
    extends _$TaskValueCopyWithImpl<$Res, _$TaskValueImpl>
    implements _$$TaskValueImplCopyWith<$Res> {
  __$$TaskValueImplCopyWithImpl(
      _$TaskValueImpl _value, $Res Function(_$TaskValueImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? code = null,
    Object? remark = null,
    Object? value = null,
  }) {
    return _then(_$TaskValueImpl(
      code: null == code
          ? _value.code
          : code // ignore: cast_nullable_to_non_nullable
              as String,
      remark: null == remark
          ? _value.remark
          : remark // ignore: cast_nullable_to_non_nullable
              as String,
      value: null == value
          ? _value.value
          : value // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$TaskValueImpl implements _TaskValue {
  const _$TaskValueImpl(
      {@JsonKey(name: 'code') required this.code,
      @JsonKey(name: 'remark') required this.remark,
      @JsonKey(name: 'value') required this.value});

  factory _$TaskValueImpl.fromJson(Map<String, dynamic> json) =>
      _$$TaskValueImplFromJson(json);

  @override
  @JsonKey(name: 'code')
  final String code;
  @override
  @JsonKey(name: 'remark')
  final String remark;
  @override
  @JsonKey(name: 'value')
  final String value;

  @override
  String toString() {
    return 'TaskValue(code: $code, remark: $remark, value: $value)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$TaskValueImpl &&
            (identical(other.code, code) || other.code == code) &&
            (identical(other.remark, remark) || other.remark == remark) &&
            (identical(other.value, value) || other.value == value));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, code, remark, value);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$TaskValueImplCopyWith<_$TaskValueImpl> get copyWith =>
      __$$TaskValueImplCopyWithImpl<_$TaskValueImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$TaskValueImplToJson(
      this,
    );
  }
}

abstract class _TaskValue implements TaskValue {
  const factory _TaskValue(
      {@JsonKey(name: 'code') required final String code,
      @JsonKey(name: 'remark') required final String remark,
      @JsonKey(name: 'value') required final String value}) = _$TaskValueImpl;

  factory _TaskValue.fromJson(Map<String, dynamic> json) =
      _$TaskValueImpl.fromJson;

  @override
  @JsonKey(name: 'code')
  String get code;
  @override
  @JsonKey(name: 'remark')
  String get remark;
  @override
  @JsonKey(name: 'value')
  String get value;
  @override
  @JsonKey(ignore: true)
  _$$TaskValueImplCopyWith<_$TaskValueImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
