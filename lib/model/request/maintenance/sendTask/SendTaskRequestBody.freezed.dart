// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'SendTaskRequestBody.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

SendTaskRequestBody _$SendTaskRequestBodyFromJson(Map<String, dynamic> json) {
  return _SendTaskRequestBody.fromJson(json);
}

/// @nodoc
mixin _$SendTaskRequestBody {
  @JsonKey(name: 'description')
  String get description => throw _privateConstructorUsedError;
  @JsonKey(name: 'codes')
  List<Code> get codes => throw _privateConstructorUsedError;
  @JsonKey(name: 'expected_days_of_week')
  String get expectedDaysOfWeek => throw _privateConstructorUsedError;
  @JsonKey(name: 'expected_time_of_week')
  String get expectedTimeOfWeek => throw _privateConstructorUsedError;
  @JsonKey(name: 'm_id')
  int get mId => throw _privateConstructorUsedError;
  @JsonKey(name: 'name')
  String get name => throw _privateConstructorUsedError;
  @JsonKey(name: 'tel')
  String get tel => throw _privateConstructorUsedError;
  @JsonKey(name: 'type')
  int get type => throw _privateConstructorUsedError;
  @JsonKey(name: 'sn')
  String get sn => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $SendTaskRequestBodyCopyWith<SendTaskRequestBody> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $SendTaskRequestBodyCopyWith<$Res> {
  factory $SendTaskRequestBodyCopyWith(
          SendTaskRequestBody value, $Res Function(SendTaskRequestBody) then) =
      _$SendTaskRequestBodyCopyWithImpl<$Res, SendTaskRequestBody>;
  @useResult
  $Res call(
      {@JsonKey(name: 'description') String description,
      @JsonKey(name: 'codes') List<Code> codes,
      @JsonKey(name: 'expected_days_of_week') String expectedDaysOfWeek,
      @JsonKey(name: 'expected_time_of_week') String expectedTimeOfWeek,
      @JsonKey(name: 'm_id') int mId,
      @JsonKey(name: 'name') String name,
      @JsonKey(name: 'tel') String tel,
      @JsonKey(name: 'type') int type,
      @JsonKey(name: 'sn') String sn});
}

/// @nodoc
class _$SendTaskRequestBodyCopyWithImpl<$Res, $Val extends SendTaskRequestBody>
    implements $SendTaskRequestBodyCopyWith<$Res> {
  _$SendTaskRequestBodyCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? description = null,
    Object? codes = null,
    Object? expectedDaysOfWeek = null,
    Object? expectedTimeOfWeek = null,
    Object? mId = null,
    Object? name = null,
    Object? tel = null,
    Object? type = null,
    Object? sn = null,
  }) {
    return _then(_value.copyWith(
      description: null == description
          ? _value.description
          : description // ignore: cast_nullable_to_non_nullable
              as String,
      codes: null == codes
          ? _value.codes
          : codes // ignore: cast_nullable_to_non_nullable
              as List<Code>,
      expectedDaysOfWeek: null == expectedDaysOfWeek
          ? _value.expectedDaysOfWeek
          : expectedDaysOfWeek // ignore: cast_nullable_to_non_nullable
              as String,
      expectedTimeOfWeek: null == expectedTimeOfWeek
          ? _value.expectedTimeOfWeek
          : expectedTimeOfWeek // ignore: cast_nullable_to_non_nullable
              as String,
      mId: null == mId
          ? _value.mId
          : mId // ignore: cast_nullable_to_non_nullable
              as int,
      name: null == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
      tel: null == tel
          ? _value.tel
          : tel // ignore: cast_nullable_to_non_nullable
              as String,
      type: null == type
          ? _value.type
          : type // ignore: cast_nullable_to_non_nullable
              as int,
      sn: null == sn
          ? _value.sn
          : sn // ignore: cast_nullable_to_non_nullable
              as String,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$SendTaskRequestBodyImplCopyWith<$Res>
    implements $SendTaskRequestBodyCopyWith<$Res> {
  factory _$$SendTaskRequestBodyImplCopyWith(_$SendTaskRequestBodyImpl value,
          $Res Function(_$SendTaskRequestBodyImpl) then) =
      __$$SendTaskRequestBodyImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {@JsonKey(name: 'description') String description,
      @JsonKey(name: 'codes') List<Code> codes,
      @JsonKey(name: 'expected_days_of_week') String expectedDaysOfWeek,
      @JsonKey(name: 'expected_time_of_week') String expectedTimeOfWeek,
      @JsonKey(name: 'm_id') int mId,
      @JsonKey(name: 'name') String name,
      @JsonKey(name: 'tel') String tel,
      @JsonKey(name: 'type') int type,
      @JsonKey(name: 'sn') String sn});
}

/// @nodoc
class __$$SendTaskRequestBodyImplCopyWithImpl<$Res>
    extends _$SendTaskRequestBodyCopyWithImpl<$Res, _$SendTaskRequestBodyImpl>
    implements _$$SendTaskRequestBodyImplCopyWith<$Res> {
  __$$SendTaskRequestBodyImplCopyWithImpl(_$SendTaskRequestBodyImpl _value,
      $Res Function(_$SendTaskRequestBodyImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? description = null,
    Object? codes = null,
    Object? expectedDaysOfWeek = null,
    Object? expectedTimeOfWeek = null,
    Object? mId = null,
    Object? name = null,
    Object? tel = null,
    Object? type = null,
    Object? sn = null,
  }) {
    return _then(_$SendTaskRequestBodyImpl(
      description: null == description
          ? _value.description
          : description // ignore: cast_nullable_to_non_nullable
              as String,
      codes: null == codes
          ? _value._codes
          : codes // ignore: cast_nullable_to_non_nullable
              as List<Code>,
      expectedDaysOfWeek: null == expectedDaysOfWeek
          ? _value.expectedDaysOfWeek
          : expectedDaysOfWeek // ignore: cast_nullable_to_non_nullable
              as String,
      expectedTimeOfWeek: null == expectedTimeOfWeek
          ? _value.expectedTimeOfWeek
          : expectedTimeOfWeek // ignore: cast_nullable_to_non_nullable
              as String,
      mId: null == mId
          ? _value.mId
          : mId // ignore: cast_nullable_to_non_nullable
              as int,
      name: null == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
      tel: null == tel
          ? _value.tel
          : tel // ignore: cast_nullable_to_non_nullable
              as String,
      type: null == type
          ? _value.type
          : type // ignore: cast_nullable_to_non_nullable
              as int,
      sn: null == sn
          ? _value.sn
          : sn // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$SendTaskRequestBodyImpl implements _SendTaskRequestBody {
  const _$SendTaskRequestBodyImpl(
      {@JsonKey(name: 'description') required this.description,
      @JsonKey(name: 'codes') required final List<Code> codes,
      @JsonKey(name: 'expected_days_of_week') required this.expectedDaysOfWeek,
      @JsonKey(name: 'expected_time_of_week') required this.expectedTimeOfWeek,
      @JsonKey(name: 'm_id') required this.mId,
      @JsonKey(name: 'name') required this.name,
      @JsonKey(name: 'tel') required this.tel,
      @JsonKey(name: 'type') required this.type,
      @JsonKey(name: 'sn') required this.sn})
      : _codes = codes;

  factory _$SendTaskRequestBodyImpl.fromJson(Map<String, dynamic> json) =>
      _$$SendTaskRequestBodyImplFromJson(json);

  @override
  @JsonKey(name: 'description')
  final String description;
  final List<Code> _codes;
  @override
  @JsonKey(name: 'codes')
  List<Code> get codes {
    if (_codes is EqualUnmodifiableListView) return _codes;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_codes);
  }

  @override
  @JsonKey(name: 'expected_days_of_week')
  final String expectedDaysOfWeek;
  @override
  @JsonKey(name: 'expected_time_of_week')
  final String expectedTimeOfWeek;
  @override
  @JsonKey(name: 'm_id')
  final int mId;
  @override
  @JsonKey(name: 'name')
  final String name;
  @override
  @JsonKey(name: 'tel')
  final String tel;
  @override
  @JsonKey(name: 'type')
  final int type;
  @override
  @JsonKey(name: 'sn')
  final String sn;

  @override
  String toString() {
    return 'SendTaskRequestBody(description: $description, codes: $codes, expectedDaysOfWeek: $expectedDaysOfWeek, expectedTimeOfWeek: $expectedTimeOfWeek, mId: $mId, name: $name, tel: $tel, type: $type, sn: $sn)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$SendTaskRequestBodyImpl &&
            (identical(other.description, description) ||
                other.description == description) &&
            const DeepCollectionEquality().equals(other._codes, _codes) &&
            (identical(other.expectedDaysOfWeek, expectedDaysOfWeek) ||
                other.expectedDaysOfWeek == expectedDaysOfWeek) &&
            (identical(other.expectedTimeOfWeek, expectedTimeOfWeek) ||
                other.expectedTimeOfWeek == expectedTimeOfWeek) &&
            (identical(other.mId, mId) || other.mId == mId) &&
            (identical(other.name, name) || other.name == name) &&
            (identical(other.tel, tel) || other.tel == tel) &&
            (identical(other.type, type) || other.type == type) &&
            (identical(other.sn, sn) || other.sn == sn));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      description,
      const DeepCollectionEquality().hash(_codes),
      expectedDaysOfWeek,
      expectedTimeOfWeek,
      mId,
      name,
      tel,
      type,
      sn);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$SendTaskRequestBodyImplCopyWith<_$SendTaskRequestBodyImpl> get copyWith =>
      __$$SendTaskRequestBodyImplCopyWithImpl<_$SendTaskRequestBodyImpl>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$SendTaskRequestBodyImplToJson(
      this,
    );
  }
}

abstract class _SendTaskRequestBody implements SendTaskRequestBody {
  const factory _SendTaskRequestBody(
          {@JsonKey(name: 'description') required final String description,
          @JsonKey(name: 'codes') required final List<Code> codes,
          @JsonKey(name: 'expected_days_of_week')
          required final String expectedDaysOfWeek,
          @JsonKey(name: 'expected_time_of_week')
          required final String expectedTimeOfWeek,
          @JsonKey(name: 'm_id') required final int mId,
          @JsonKey(name: 'name') required final String name,
          @JsonKey(name: 'tel') required final String tel,
          @JsonKey(name: 'type') required final int type,
          @JsonKey(name: 'sn') required final String sn}) =
      _$SendTaskRequestBodyImpl;

  factory _SendTaskRequestBody.fromJson(Map<String, dynamic> json) =
      _$SendTaskRequestBodyImpl.fromJson;

  @override
  @JsonKey(name: 'description')
  String get description;
  @override
  @JsonKey(name: 'codes')
  List<Code> get codes;
  @override
  @JsonKey(name: 'expected_days_of_week')
  String get expectedDaysOfWeek;
  @override
  @JsonKey(name: 'expected_time_of_week')
  String get expectedTimeOfWeek;
  @override
  @JsonKey(name: 'm_id')
  int get mId;
  @override
  @JsonKey(name: 'name')
  String get name;
  @override
  @JsonKey(name: 'tel')
  String get tel;
  @override
  @JsonKey(name: 'type')
  int get type;
  @override
  @JsonKey(name: 'sn')
  String get sn;
  @override
  @JsonKey(ignore: true)
  _$$SendTaskRequestBodyImplCopyWith<_$SendTaskRequestBodyImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

Code _$CodeFromJson(Map<String, dynamic> json) {
  return _Code.fromJson(json);
}

/// @nodoc
mixin _$Code {
  @JsonKey(name: 'code')
  String get code => throw _privateConstructorUsedError;
  @JsonKey(name: 'remark')
  String get remark => throw _privateConstructorUsedError;
  @JsonKey(name: 'value')
  String get value => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $CodeCopyWith<Code> get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $CodeCopyWith<$Res> {
  factory $CodeCopyWith(Code value, $Res Function(Code) then) =
      _$CodeCopyWithImpl<$Res, Code>;
  @useResult
  $Res call(
      {@JsonKey(name: 'code') String code,
      @JsonKey(name: 'remark') String remark,
      @JsonKey(name: 'value') String value});
}

/// @nodoc
class _$CodeCopyWithImpl<$Res, $Val extends Code>
    implements $CodeCopyWith<$Res> {
  _$CodeCopyWithImpl(this._value, this._then);

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
abstract class _$$CodeImplCopyWith<$Res> implements $CodeCopyWith<$Res> {
  factory _$$CodeImplCopyWith(
          _$CodeImpl value, $Res Function(_$CodeImpl) then) =
      __$$CodeImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {@JsonKey(name: 'code') String code,
      @JsonKey(name: 'remark') String remark,
      @JsonKey(name: 'value') String value});
}

/// @nodoc
class __$$CodeImplCopyWithImpl<$Res>
    extends _$CodeCopyWithImpl<$Res, _$CodeImpl>
    implements _$$CodeImplCopyWith<$Res> {
  __$$CodeImplCopyWithImpl(_$CodeImpl _value, $Res Function(_$CodeImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? code = null,
    Object? remark = null,
    Object? value = null,
  }) {
    return _then(_$CodeImpl(
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
class _$CodeImpl implements _Code {
  const _$CodeImpl(
      {@JsonKey(name: 'code') required this.code,
      @JsonKey(name: 'remark') required this.remark,
      @JsonKey(name: 'value') required this.value});

  factory _$CodeImpl.fromJson(Map<String, dynamic> json) =>
      _$$CodeImplFromJson(json);

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
    return 'Code(code: $code, remark: $remark, value: $value)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$CodeImpl &&
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
  _$$CodeImplCopyWith<_$CodeImpl> get copyWith =>
      __$$CodeImplCopyWithImpl<_$CodeImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$CodeImplToJson(
      this,
    );
  }
}

abstract class _Code implements Code {
  const factory _Code(
      {@JsonKey(name: 'code') required final String code,
      @JsonKey(name: 'remark') required final String remark,
      @JsonKey(name: 'value') required final String value}) = _$CodeImpl;

  factory _Code.fromJson(Map<String, dynamic> json) = _$CodeImpl.fromJson;

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
  _$$CodeImplCopyWith<_$CodeImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
