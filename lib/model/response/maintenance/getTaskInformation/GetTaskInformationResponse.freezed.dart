// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'GetTaskInformationResponse.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

GetTaskInformationResponse _$GetTaskInformationResponseFromJson(
    Map<String, dynamic> json) {
  return _GetTaskInformationResponse.fromJson(json);
}

/// @nodoc
mixin _$GetTaskInformationResponse {
  @JsonKey(name: 'm_id')
  int get mId => throw _privateConstructorUsedError;
  @JsonKey(name: 'vendor_id')
  int get vendorId => throw _privateConstructorUsedError;
  @JsonKey(name: 'customer_id')
  int? get customerId => throw _privateConstructorUsedError;
  @JsonKey(name: 'description')
  String? get description => throw _privateConstructorUsedError;
  @JsonKey(name: 'vendor_description')
  String? get vendorDescription => throw _privateConstructorUsedError;
  @JsonKey(name: 'user_id')
  int get userId => throw _privateConstructorUsedError;
  @JsonKey(name: 'device_id')
  int? get deviceId => throw _privateConstructorUsedError;
  @JsonKey(name: 'status')
  int get status => throw _privateConstructorUsedError;
  @JsonKey(name: 'status_name')
  String get statusName => throw _privateConstructorUsedError;
  @JsonKey(name: 'continuance')
  int get continuance => throw _privateConstructorUsedError;
  @JsonKey(name: 'engineer')
  int get engineer => throw _privateConstructorUsedError;
  @JsonKey(name: 'engineer_name')
  String get engineerName => throw _privateConstructorUsedError;
  @JsonKey(name: 'type')
  int get type => throw _privateConstructorUsedError;
  @JsonKey(name: 'type_name')
  String get typeName => throw _privateConstructorUsedError;
  @JsonKey(name: 'expected_days_of_week')
  String? get expectedDaysOfWeek => throw _privateConstructorUsedError;
  @JsonKey(name: 'sign_image')
  String? get signImage => throw _privateConstructorUsedError;
  @JsonKey(name: 'expected_time_of_week')
  String? get expectedTimeOfWeek => throw _privateConstructorUsedError;
  @JsonKey(name: 'added_time')
  String get addedTime => throw _privateConstructorUsedError;
  @JsonKey(name: 'appointed_datetime')
  String get appointedDatetime => throw _privateConstructorUsedError;
  @JsonKey(name: 'work_start_datetime')
  String? get workStartDatetime => throw _privateConstructorUsedError;
  @JsonKey(name: 'work_end_datetime')
  String? get workEndDatetime => throw _privateConstructorUsedError;
  @JsonKey(name: 'name')
  String get name => throw _privateConstructorUsedError;
  @JsonKey(name: 'tel')
  String get tel => throw _privateConstructorUsedError;
  @JsonKey(name: 'fee')
  int? get fee => throw _privateConstructorUsedError;
  @JsonKey(name: 'work')
  int? get work => throw _privateConstructorUsedError;
  @JsonKey(name: 'error_reason')
  String? get errorReason => throw _privateConstructorUsedError;
  @JsonKey(name: 'attachment_url')
  String? get attachmentUrl => throw _privateConstructorUsedError;
  @JsonKey(name: 'vendor_name')
  String? get vendorName => throw _privateConstructorUsedError;
  @JsonKey(name: 'vendor_tel')
  String? get vendorTel => throw _privateConstructorUsedError;
  @JsonKey(name: 'customer_name')
  String? get customerName => throw _privateConstructorUsedError;
  @JsonKey(name: 'customer_tel')
  String? get customerTel => throw _privateConstructorUsedError;
  @JsonKey(name: 'customer_address')
  String? get customerAddress => throw _privateConstructorUsedError;
  @JsonKey(name: 'values')
  List<Value> get values => throw _privateConstructorUsedError;
  @JsonKey(name: 'device_values')
  List<Value>? get deviceValues => throw _privateConstructorUsedError;
  @JsonKey(name: 'user_images')
  List<UserImage> get userImages => throw _privateConstructorUsedError;
  @JsonKey(name: 'engineer_images')
  List<EngineerImage> get engineerImages => throw _privateConstructorUsedError;
  @JsonKey(name: 'installations')
  List<Installation> get installations => throw _privateConstructorUsedError;
  @JsonKey(name: 'added_type')
  String get addedType => throw _privateConstructorUsedError;
  @JsonKey(name: 'sn')
  String? get sn => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $GetTaskInformationResponseCopyWith<GetTaskInformationResponse>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $GetTaskInformationResponseCopyWith<$Res> {
  factory $GetTaskInformationResponseCopyWith(GetTaskInformationResponse value,
          $Res Function(GetTaskInformationResponse) then) =
      _$GetTaskInformationResponseCopyWithImpl<$Res,
          GetTaskInformationResponse>;
  @useResult
  $Res call(
      {@JsonKey(name: 'm_id') int mId,
      @JsonKey(name: 'vendor_id') int vendorId,
      @JsonKey(name: 'customer_id') int? customerId,
      @JsonKey(name: 'description') String? description,
      @JsonKey(name: 'vendor_description') String? vendorDescription,
      @JsonKey(name: 'user_id') int userId,
      @JsonKey(name: 'device_id') int? deviceId,
      @JsonKey(name: 'status') int status,
      @JsonKey(name: 'status_name') String statusName,
      @JsonKey(name: 'continuance') int continuance,
      @JsonKey(name: 'engineer') int engineer,
      @JsonKey(name: 'engineer_name') String engineerName,
      @JsonKey(name: 'type') int type,
      @JsonKey(name: 'type_name') String typeName,
      @JsonKey(name: 'expected_days_of_week') String? expectedDaysOfWeek,
      @JsonKey(name: 'sign_image') String? signImage,
      @JsonKey(name: 'expected_time_of_week') String? expectedTimeOfWeek,
      @JsonKey(name: 'added_time') String addedTime,
      @JsonKey(name: 'appointed_datetime') String appointedDatetime,
      @JsonKey(name: 'work_start_datetime') String? workStartDatetime,
      @JsonKey(name: 'work_end_datetime') String? workEndDatetime,
      @JsonKey(name: 'name') String name,
      @JsonKey(name: 'tel') String tel,
      @JsonKey(name: 'fee') int? fee,
      @JsonKey(name: 'work') int? work,
      @JsonKey(name: 'error_reason') String? errorReason,
      @JsonKey(name: 'attachment_url') String? attachmentUrl,
      @JsonKey(name: 'vendor_name') String? vendorName,
      @JsonKey(name: 'vendor_tel') String? vendorTel,
      @JsonKey(name: 'customer_name') String? customerName,
      @JsonKey(name: 'customer_tel') String? customerTel,
      @JsonKey(name: 'customer_address') String? customerAddress,
      @JsonKey(name: 'values') List<Value> values,
      @JsonKey(name: 'device_values') List<Value>? deviceValues,
      @JsonKey(name: 'user_images') List<UserImage> userImages,
      @JsonKey(name: 'engineer_images') List<EngineerImage> engineerImages,
      @JsonKey(name: 'installations') List<Installation> installations,
      @JsonKey(name: 'added_type') String addedType,
      @JsonKey(name: 'sn') String? sn});
}

/// @nodoc
class _$GetTaskInformationResponseCopyWithImpl<$Res,
        $Val extends GetTaskInformationResponse>
    implements $GetTaskInformationResponseCopyWith<$Res> {
  _$GetTaskInformationResponseCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? mId = null,
    Object? vendorId = null,
    Object? customerId = freezed,
    Object? description = freezed,
    Object? vendorDescription = freezed,
    Object? userId = null,
    Object? deviceId = freezed,
    Object? status = null,
    Object? statusName = null,
    Object? continuance = null,
    Object? engineer = null,
    Object? engineerName = null,
    Object? type = null,
    Object? typeName = null,
    Object? expectedDaysOfWeek = freezed,
    Object? signImage = freezed,
    Object? expectedTimeOfWeek = freezed,
    Object? addedTime = null,
    Object? appointedDatetime = null,
    Object? workStartDatetime = freezed,
    Object? workEndDatetime = freezed,
    Object? name = null,
    Object? tel = null,
    Object? fee = freezed,
    Object? work = freezed,
    Object? errorReason = freezed,
    Object? attachmentUrl = freezed,
    Object? vendorName = freezed,
    Object? vendorTel = freezed,
    Object? customerName = freezed,
    Object? customerTel = freezed,
    Object? customerAddress = freezed,
    Object? values = null,
    Object? deviceValues = freezed,
    Object? userImages = null,
    Object? engineerImages = null,
    Object? installations = null,
    Object? addedType = null,
    Object? sn = freezed,
  }) {
    return _then(_value.copyWith(
      mId: null == mId
          ? _value.mId
          : mId // ignore: cast_nullable_to_non_nullable
              as int,
      vendorId: null == vendorId
          ? _value.vendorId
          : vendorId // ignore: cast_nullable_to_non_nullable
              as int,
      customerId: freezed == customerId
          ? _value.customerId
          : customerId // ignore: cast_nullable_to_non_nullable
              as int?,
      description: freezed == description
          ? _value.description
          : description // ignore: cast_nullable_to_non_nullable
              as String?,
      vendorDescription: freezed == vendorDescription
          ? _value.vendorDescription
          : vendorDescription // ignore: cast_nullable_to_non_nullable
              as String?,
      userId: null == userId
          ? _value.userId
          : userId // ignore: cast_nullable_to_non_nullable
              as int,
      deviceId: freezed == deviceId
          ? _value.deviceId
          : deviceId // ignore: cast_nullable_to_non_nullable
              as int?,
      status: null == status
          ? _value.status
          : status // ignore: cast_nullable_to_non_nullable
              as int,
      statusName: null == statusName
          ? _value.statusName
          : statusName // ignore: cast_nullable_to_non_nullable
              as String,
      continuance: null == continuance
          ? _value.continuance
          : continuance // ignore: cast_nullable_to_non_nullable
              as int,
      engineer: null == engineer
          ? _value.engineer
          : engineer // ignore: cast_nullable_to_non_nullable
              as int,
      engineerName: null == engineerName
          ? _value.engineerName
          : engineerName // ignore: cast_nullable_to_non_nullable
              as String,
      type: null == type
          ? _value.type
          : type // ignore: cast_nullable_to_non_nullable
              as int,
      typeName: null == typeName
          ? _value.typeName
          : typeName // ignore: cast_nullable_to_non_nullable
              as String,
      expectedDaysOfWeek: freezed == expectedDaysOfWeek
          ? _value.expectedDaysOfWeek
          : expectedDaysOfWeek // ignore: cast_nullable_to_non_nullable
              as String?,
      signImage: freezed == signImage
          ? _value.signImage
          : signImage // ignore: cast_nullable_to_non_nullable
              as String?,
      expectedTimeOfWeek: freezed == expectedTimeOfWeek
          ? _value.expectedTimeOfWeek
          : expectedTimeOfWeek // ignore: cast_nullable_to_non_nullable
              as String?,
      addedTime: null == addedTime
          ? _value.addedTime
          : addedTime // ignore: cast_nullable_to_non_nullable
              as String,
      appointedDatetime: null == appointedDatetime
          ? _value.appointedDatetime
          : appointedDatetime // ignore: cast_nullable_to_non_nullable
              as String,
      workStartDatetime: freezed == workStartDatetime
          ? _value.workStartDatetime
          : workStartDatetime // ignore: cast_nullable_to_non_nullable
              as String?,
      workEndDatetime: freezed == workEndDatetime
          ? _value.workEndDatetime
          : workEndDatetime // ignore: cast_nullable_to_non_nullable
              as String?,
      name: null == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
      tel: null == tel
          ? _value.tel
          : tel // ignore: cast_nullable_to_non_nullable
              as String,
      fee: freezed == fee
          ? _value.fee
          : fee // ignore: cast_nullable_to_non_nullable
              as int?,
      work: freezed == work
          ? _value.work
          : work // ignore: cast_nullable_to_non_nullable
              as int?,
      errorReason: freezed == errorReason
          ? _value.errorReason
          : errorReason // ignore: cast_nullable_to_non_nullable
              as String?,
      attachmentUrl: freezed == attachmentUrl
          ? _value.attachmentUrl
          : attachmentUrl // ignore: cast_nullable_to_non_nullable
              as String?,
      vendorName: freezed == vendorName
          ? _value.vendorName
          : vendorName // ignore: cast_nullable_to_non_nullable
              as String?,
      vendorTel: freezed == vendorTel
          ? _value.vendorTel
          : vendorTel // ignore: cast_nullable_to_non_nullable
              as String?,
      customerName: freezed == customerName
          ? _value.customerName
          : customerName // ignore: cast_nullable_to_non_nullable
              as String?,
      customerTel: freezed == customerTel
          ? _value.customerTel
          : customerTel // ignore: cast_nullable_to_non_nullable
              as String?,
      customerAddress: freezed == customerAddress
          ? _value.customerAddress
          : customerAddress // ignore: cast_nullable_to_non_nullable
              as String?,
      values: null == values
          ? _value.values
          : values // ignore: cast_nullable_to_non_nullable
              as List<Value>,
      deviceValues: freezed == deviceValues
          ? _value.deviceValues
          : deviceValues // ignore: cast_nullable_to_non_nullable
              as List<Value>?,
      userImages: null == userImages
          ? _value.userImages
          : userImages // ignore: cast_nullable_to_non_nullable
              as List<UserImage>,
      engineerImages: null == engineerImages
          ? _value.engineerImages
          : engineerImages // ignore: cast_nullable_to_non_nullable
              as List<EngineerImage>,
      installations: null == installations
          ? _value.installations
          : installations // ignore: cast_nullable_to_non_nullable
              as List<Installation>,
      addedType: null == addedType
          ? _value.addedType
          : addedType // ignore: cast_nullable_to_non_nullable
              as String,
      sn: freezed == sn
          ? _value.sn
          : sn // ignore: cast_nullable_to_non_nullable
              as String?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$GetTaskInformationResponseImplCopyWith<$Res>
    implements $GetTaskInformationResponseCopyWith<$Res> {
  factory _$$GetTaskInformationResponseImplCopyWith(
          _$GetTaskInformationResponseImpl value,
          $Res Function(_$GetTaskInformationResponseImpl) then) =
      __$$GetTaskInformationResponseImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {@JsonKey(name: 'm_id') int mId,
      @JsonKey(name: 'vendor_id') int vendorId,
      @JsonKey(name: 'customer_id') int? customerId,
      @JsonKey(name: 'description') String? description,
      @JsonKey(name: 'vendor_description') String? vendorDescription,
      @JsonKey(name: 'user_id') int userId,
      @JsonKey(name: 'device_id') int? deviceId,
      @JsonKey(name: 'status') int status,
      @JsonKey(name: 'status_name') String statusName,
      @JsonKey(name: 'continuance') int continuance,
      @JsonKey(name: 'engineer') int engineer,
      @JsonKey(name: 'engineer_name') String engineerName,
      @JsonKey(name: 'type') int type,
      @JsonKey(name: 'type_name') String typeName,
      @JsonKey(name: 'expected_days_of_week') String? expectedDaysOfWeek,
      @JsonKey(name: 'sign_image') String? signImage,
      @JsonKey(name: 'expected_time_of_week') String? expectedTimeOfWeek,
      @JsonKey(name: 'added_time') String addedTime,
      @JsonKey(name: 'appointed_datetime') String appointedDatetime,
      @JsonKey(name: 'work_start_datetime') String? workStartDatetime,
      @JsonKey(name: 'work_end_datetime') String? workEndDatetime,
      @JsonKey(name: 'name') String name,
      @JsonKey(name: 'tel') String tel,
      @JsonKey(name: 'fee') int? fee,
      @JsonKey(name: 'work') int? work,
      @JsonKey(name: 'error_reason') String? errorReason,
      @JsonKey(name: 'attachment_url') String? attachmentUrl,
      @JsonKey(name: 'vendor_name') String? vendorName,
      @JsonKey(name: 'vendor_tel') String? vendorTel,
      @JsonKey(name: 'customer_name') String? customerName,
      @JsonKey(name: 'customer_tel') String? customerTel,
      @JsonKey(name: 'customer_address') String? customerAddress,
      @JsonKey(name: 'values') List<Value> values,
      @JsonKey(name: 'device_values') List<Value>? deviceValues,
      @JsonKey(name: 'user_images') List<UserImage> userImages,
      @JsonKey(name: 'engineer_images') List<EngineerImage> engineerImages,
      @JsonKey(name: 'installations') List<Installation> installations,
      @JsonKey(name: 'added_type') String addedType,
      @JsonKey(name: 'sn') String? sn});
}

/// @nodoc
class __$$GetTaskInformationResponseImplCopyWithImpl<$Res>
    extends _$GetTaskInformationResponseCopyWithImpl<$Res,
        _$GetTaskInformationResponseImpl>
    implements _$$GetTaskInformationResponseImplCopyWith<$Res> {
  __$$GetTaskInformationResponseImplCopyWithImpl(
      _$GetTaskInformationResponseImpl _value,
      $Res Function(_$GetTaskInformationResponseImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? mId = null,
    Object? vendorId = null,
    Object? customerId = freezed,
    Object? description = freezed,
    Object? vendorDescription = freezed,
    Object? userId = null,
    Object? deviceId = freezed,
    Object? status = null,
    Object? statusName = null,
    Object? continuance = null,
    Object? engineer = null,
    Object? engineerName = null,
    Object? type = null,
    Object? typeName = null,
    Object? expectedDaysOfWeek = freezed,
    Object? signImage = freezed,
    Object? expectedTimeOfWeek = freezed,
    Object? addedTime = null,
    Object? appointedDatetime = null,
    Object? workStartDatetime = freezed,
    Object? workEndDatetime = freezed,
    Object? name = null,
    Object? tel = null,
    Object? fee = freezed,
    Object? work = freezed,
    Object? errorReason = freezed,
    Object? attachmentUrl = freezed,
    Object? vendorName = freezed,
    Object? vendorTel = freezed,
    Object? customerName = freezed,
    Object? customerTel = freezed,
    Object? customerAddress = freezed,
    Object? values = null,
    Object? deviceValues = freezed,
    Object? userImages = null,
    Object? engineerImages = null,
    Object? installations = null,
    Object? addedType = null,
    Object? sn = freezed,
  }) {
    return _then(_$GetTaskInformationResponseImpl(
      mId: null == mId
          ? _value.mId
          : mId // ignore: cast_nullable_to_non_nullable
              as int,
      vendorId: null == vendorId
          ? _value.vendorId
          : vendorId // ignore: cast_nullable_to_non_nullable
              as int,
      customerId: freezed == customerId
          ? _value.customerId
          : customerId // ignore: cast_nullable_to_non_nullable
              as int?,
      description: freezed == description
          ? _value.description
          : description // ignore: cast_nullable_to_non_nullable
              as String?,
      vendorDescription: freezed == vendorDescription
          ? _value.vendorDescription
          : vendorDescription // ignore: cast_nullable_to_non_nullable
              as String?,
      userId: null == userId
          ? _value.userId
          : userId // ignore: cast_nullable_to_non_nullable
              as int,
      deviceId: freezed == deviceId
          ? _value.deviceId
          : deviceId // ignore: cast_nullable_to_non_nullable
              as int?,
      status: null == status
          ? _value.status
          : status // ignore: cast_nullable_to_non_nullable
              as int,
      statusName: null == statusName
          ? _value.statusName
          : statusName // ignore: cast_nullable_to_non_nullable
              as String,
      continuance: null == continuance
          ? _value.continuance
          : continuance // ignore: cast_nullable_to_non_nullable
              as int,
      engineer: null == engineer
          ? _value.engineer
          : engineer // ignore: cast_nullable_to_non_nullable
              as int,
      engineerName: null == engineerName
          ? _value.engineerName
          : engineerName // ignore: cast_nullable_to_non_nullable
              as String,
      type: null == type
          ? _value.type
          : type // ignore: cast_nullable_to_non_nullable
              as int,
      typeName: null == typeName
          ? _value.typeName
          : typeName // ignore: cast_nullable_to_non_nullable
              as String,
      expectedDaysOfWeek: freezed == expectedDaysOfWeek
          ? _value.expectedDaysOfWeek
          : expectedDaysOfWeek // ignore: cast_nullable_to_non_nullable
              as String?,
      signImage: freezed == signImage
          ? _value.signImage
          : signImage // ignore: cast_nullable_to_non_nullable
              as String?,
      expectedTimeOfWeek: freezed == expectedTimeOfWeek
          ? _value.expectedTimeOfWeek
          : expectedTimeOfWeek // ignore: cast_nullable_to_non_nullable
              as String?,
      addedTime: null == addedTime
          ? _value.addedTime
          : addedTime // ignore: cast_nullable_to_non_nullable
              as String,
      appointedDatetime: null == appointedDatetime
          ? _value.appointedDatetime
          : appointedDatetime // ignore: cast_nullable_to_non_nullable
              as String,
      workStartDatetime: freezed == workStartDatetime
          ? _value.workStartDatetime
          : workStartDatetime // ignore: cast_nullable_to_non_nullable
              as String?,
      workEndDatetime: freezed == workEndDatetime
          ? _value.workEndDatetime
          : workEndDatetime // ignore: cast_nullable_to_non_nullable
              as String?,
      name: null == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
      tel: null == tel
          ? _value.tel
          : tel // ignore: cast_nullable_to_non_nullable
              as String,
      fee: freezed == fee
          ? _value.fee
          : fee // ignore: cast_nullable_to_non_nullable
              as int?,
      work: freezed == work
          ? _value.work
          : work // ignore: cast_nullable_to_non_nullable
              as int?,
      errorReason: freezed == errorReason
          ? _value.errorReason
          : errorReason // ignore: cast_nullable_to_non_nullable
              as String?,
      attachmentUrl: freezed == attachmentUrl
          ? _value.attachmentUrl
          : attachmentUrl // ignore: cast_nullable_to_non_nullable
              as String?,
      vendorName: freezed == vendorName
          ? _value.vendorName
          : vendorName // ignore: cast_nullable_to_non_nullable
              as String?,
      vendorTel: freezed == vendorTel
          ? _value.vendorTel
          : vendorTel // ignore: cast_nullable_to_non_nullable
              as String?,
      customerName: freezed == customerName
          ? _value.customerName
          : customerName // ignore: cast_nullable_to_non_nullable
              as String?,
      customerTel: freezed == customerTel
          ? _value.customerTel
          : customerTel // ignore: cast_nullable_to_non_nullable
              as String?,
      customerAddress: freezed == customerAddress
          ? _value.customerAddress
          : customerAddress // ignore: cast_nullable_to_non_nullable
              as String?,
      values: null == values
          ? _value._values
          : values // ignore: cast_nullable_to_non_nullable
              as List<Value>,
      deviceValues: freezed == deviceValues
          ? _value._deviceValues
          : deviceValues // ignore: cast_nullable_to_non_nullable
              as List<Value>?,
      userImages: null == userImages
          ? _value._userImages
          : userImages // ignore: cast_nullable_to_non_nullable
              as List<UserImage>,
      engineerImages: null == engineerImages
          ? _value._engineerImages
          : engineerImages // ignore: cast_nullable_to_non_nullable
              as List<EngineerImage>,
      installations: null == installations
          ? _value._installations
          : installations // ignore: cast_nullable_to_non_nullable
              as List<Installation>,
      addedType: null == addedType
          ? _value.addedType
          : addedType // ignore: cast_nullable_to_non_nullable
              as String,
      sn: freezed == sn
          ? _value.sn
          : sn // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$GetTaskInformationResponseImpl implements _GetTaskInformationResponse {
  const _$GetTaskInformationResponseImpl(
      {@JsonKey(name: 'm_id') required this.mId,
      @JsonKey(name: 'vendor_id') required this.vendorId,
      @JsonKey(name: 'customer_id') this.customerId,
      @JsonKey(name: 'description') this.description,
      @JsonKey(name: 'vendor_description') this.vendorDescription,
      @JsonKey(name: 'user_id') required this.userId,
      @JsonKey(name: 'device_id') this.deviceId,
      @JsonKey(name: 'status') required this.status,
      @JsonKey(name: 'status_name') required this.statusName,
      @JsonKey(name: 'continuance') required this.continuance,
      @JsonKey(name: 'engineer') required this.engineer,
      @JsonKey(name: 'engineer_name') required this.engineerName,
      @JsonKey(name: 'type') required this.type,
      @JsonKey(name: 'type_name') required this.typeName,
      @JsonKey(name: 'expected_days_of_week') this.expectedDaysOfWeek,
      @JsonKey(name: 'sign_image') this.signImage,
      @JsonKey(name: 'expected_time_of_week') this.expectedTimeOfWeek,
      @JsonKey(name: 'added_time') required this.addedTime,
      @JsonKey(name: 'appointed_datetime') required this.appointedDatetime,
      @JsonKey(name: 'work_start_datetime') this.workStartDatetime,
      @JsonKey(name: 'work_end_datetime') this.workEndDatetime,
      @JsonKey(name: 'name') required this.name,
      @JsonKey(name: 'tel') required this.tel,
      @JsonKey(name: 'fee') this.fee,
      @JsonKey(name: 'work') this.work,
      @JsonKey(name: 'error_reason') this.errorReason,
      @JsonKey(name: 'attachment_url') this.attachmentUrl,
      @JsonKey(name: 'vendor_name') this.vendorName,
      @JsonKey(name: 'vendor_tel') this.vendorTel,
      @JsonKey(name: 'customer_name') this.customerName,
      @JsonKey(name: 'customer_tel') this.customerTel,
      @JsonKey(name: 'customer_address') this.customerAddress,
      @JsonKey(name: 'values') required final List<Value> values,
      @JsonKey(name: 'device_values') final List<Value>? deviceValues,
      @JsonKey(name: 'user_images') required final List<UserImage> userImages,
      @JsonKey(name: 'engineer_images')
      required final List<EngineerImage> engineerImages,
      @JsonKey(name: 'installations')
      required final List<Installation> installations,
      @JsonKey(name: 'added_type') required this.addedType,
      @JsonKey(name: 'sn') this.sn})
      : _values = values,
        _deviceValues = deviceValues,
        _userImages = userImages,
        _engineerImages = engineerImages,
        _installations = installations;

  factory _$GetTaskInformationResponseImpl.fromJson(
          Map<String, dynamic> json) =>
      _$$GetTaskInformationResponseImplFromJson(json);

  @override
  @JsonKey(name: 'm_id')
  final int mId;
  @override
  @JsonKey(name: 'vendor_id')
  final int vendorId;
  @override
  @JsonKey(name: 'customer_id')
  final int? customerId;
  @override
  @JsonKey(name: 'description')
  final String? description;
  @override
  @JsonKey(name: 'vendor_description')
  final String? vendorDescription;
  @override
  @JsonKey(name: 'user_id')
  final int userId;
  @override
  @JsonKey(name: 'device_id')
  final int? deviceId;
  @override
  @JsonKey(name: 'status')
  final int status;
  @override
  @JsonKey(name: 'status_name')
  final String statusName;
  @override
  @JsonKey(name: 'continuance')
  final int continuance;
  @override
  @JsonKey(name: 'engineer')
  final int engineer;
  @override
  @JsonKey(name: 'engineer_name')
  final String engineerName;
  @override
  @JsonKey(name: 'type')
  final int type;
  @override
  @JsonKey(name: 'type_name')
  final String typeName;
  @override
  @JsonKey(name: 'expected_days_of_week')
  final String? expectedDaysOfWeek;
  @override
  @JsonKey(name: 'sign_image')
  final String? signImage;
  @override
  @JsonKey(name: 'expected_time_of_week')
  final String? expectedTimeOfWeek;
  @override
  @JsonKey(name: 'added_time')
  final String addedTime;
  @override
  @JsonKey(name: 'appointed_datetime')
  final String appointedDatetime;
  @override
  @JsonKey(name: 'work_start_datetime')
  final String? workStartDatetime;
  @override
  @JsonKey(name: 'work_end_datetime')
  final String? workEndDatetime;
  @override
  @JsonKey(name: 'name')
  final String name;
  @override
  @JsonKey(name: 'tel')
  final String tel;
  @override
  @JsonKey(name: 'fee')
  final int? fee;
  @override
  @JsonKey(name: 'work')
  final int? work;
  @override
  @JsonKey(name: 'error_reason')
  final String? errorReason;
  @override
  @JsonKey(name: 'attachment_url')
  final String? attachmentUrl;
  @override
  @JsonKey(name: 'vendor_name')
  final String? vendorName;
  @override
  @JsonKey(name: 'vendor_tel')
  final String? vendorTel;
  @override
  @JsonKey(name: 'customer_name')
  final String? customerName;
  @override
  @JsonKey(name: 'customer_tel')
  final String? customerTel;
  @override
  @JsonKey(name: 'customer_address')
  final String? customerAddress;
  final List<Value> _values;
  @override
  @JsonKey(name: 'values')
  List<Value> get values {
    if (_values is EqualUnmodifiableListView) return _values;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_values);
  }

  final List<Value>? _deviceValues;
  @override
  @JsonKey(name: 'device_values')
  List<Value>? get deviceValues {
    final value = _deviceValues;
    if (value == null) return null;
    if (_deviceValues is EqualUnmodifiableListView) return _deviceValues;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(value);
  }

  final List<UserImage> _userImages;
  @override
  @JsonKey(name: 'user_images')
  List<UserImage> get userImages {
    if (_userImages is EqualUnmodifiableListView) return _userImages;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_userImages);
  }

  final List<EngineerImage> _engineerImages;
  @override
  @JsonKey(name: 'engineer_images')
  List<EngineerImage> get engineerImages {
    if (_engineerImages is EqualUnmodifiableListView) return _engineerImages;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_engineerImages);
  }

  final List<Installation> _installations;
  @override
  @JsonKey(name: 'installations')
  List<Installation> get installations {
    if (_installations is EqualUnmodifiableListView) return _installations;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_installations);
  }

  @override
  @JsonKey(name: 'added_type')
  final String addedType;
  @override
  @JsonKey(name: 'sn')
  final String? sn;

  @override
  String toString() {
    return 'GetTaskInformationResponse(mId: $mId, vendorId: $vendorId, customerId: $customerId, description: $description, vendorDescription: $vendorDescription, userId: $userId, deviceId: $deviceId, status: $status, statusName: $statusName, continuance: $continuance, engineer: $engineer, engineerName: $engineerName, type: $type, typeName: $typeName, expectedDaysOfWeek: $expectedDaysOfWeek, signImage: $signImage, expectedTimeOfWeek: $expectedTimeOfWeek, addedTime: $addedTime, appointedDatetime: $appointedDatetime, workStartDatetime: $workStartDatetime, workEndDatetime: $workEndDatetime, name: $name, tel: $tel, fee: $fee, work: $work, errorReason: $errorReason, attachmentUrl: $attachmentUrl, vendorName: $vendorName, vendorTel: $vendorTel, customerName: $customerName, customerTel: $customerTel, customerAddress: $customerAddress, values: $values, deviceValues: $deviceValues, userImages: $userImages, engineerImages: $engineerImages, installations: $installations, addedType: $addedType, sn: $sn)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$GetTaskInformationResponseImpl &&
            (identical(other.mId, mId) || other.mId == mId) &&
            (identical(other.vendorId, vendorId) ||
                other.vendorId == vendorId) &&
            (identical(other.customerId, customerId) ||
                other.customerId == customerId) &&
            (identical(other.description, description) ||
                other.description == description) &&
            (identical(other.vendorDescription, vendorDescription) ||
                other.vendorDescription == vendorDescription) &&
            (identical(other.userId, userId) || other.userId == userId) &&
            (identical(other.deviceId, deviceId) ||
                other.deviceId == deviceId) &&
            (identical(other.status, status) || other.status == status) &&
            (identical(other.statusName, statusName) ||
                other.statusName == statusName) &&
            (identical(other.continuance, continuance) ||
                other.continuance == continuance) &&
            (identical(other.engineer, engineer) ||
                other.engineer == engineer) &&
            (identical(other.engineerName, engineerName) ||
                other.engineerName == engineerName) &&
            (identical(other.type, type) || other.type == type) &&
            (identical(other.typeName, typeName) ||
                other.typeName == typeName) &&
            (identical(other.expectedDaysOfWeek, expectedDaysOfWeek) ||
                other.expectedDaysOfWeek == expectedDaysOfWeek) &&
            (identical(other.signImage, signImage) ||
                other.signImage == signImage) &&
            (identical(other.expectedTimeOfWeek, expectedTimeOfWeek) ||
                other.expectedTimeOfWeek == expectedTimeOfWeek) &&
            (identical(other.addedTime, addedTime) ||
                other.addedTime == addedTime) &&
            (identical(other.appointedDatetime, appointedDatetime) ||
                other.appointedDatetime == appointedDatetime) &&
            (identical(other.workStartDatetime, workStartDatetime) ||
                other.workStartDatetime == workStartDatetime) &&
            (identical(other.workEndDatetime, workEndDatetime) ||
                other.workEndDatetime == workEndDatetime) &&
            (identical(other.name, name) || other.name == name) &&
            (identical(other.tel, tel) || other.tel == tel) &&
            (identical(other.fee, fee) || other.fee == fee) &&
            (identical(other.work, work) || other.work == work) &&
            (identical(other.errorReason, errorReason) ||
                other.errorReason == errorReason) &&
            (identical(other.attachmentUrl, attachmentUrl) ||
                other.attachmentUrl == attachmentUrl) &&
            (identical(other.vendorName, vendorName) ||
                other.vendorName == vendorName) &&
            (identical(other.vendorTel, vendorTel) ||
                other.vendorTel == vendorTel) &&
            (identical(other.customerName, customerName) ||
                other.customerName == customerName) &&
            (identical(other.customerTel, customerTel) ||
                other.customerTel == customerTel) &&
            (identical(other.customerAddress, customerAddress) ||
                other.customerAddress == customerAddress) &&
            const DeepCollectionEquality().equals(other._values, _values) &&
            const DeepCollectionEquality()
                .equals(other._deviceValues, _deviceValues) &&
            const DeepCollectionEquality()
                .equals(other._userImages, _userImages) &&
            const DeepCollectionEquality()
                .equals(other._engineerImages, _engineerImages) &&
            const DeepCollectionEquality()
                .equals(other._installations, _installations) &&
            (identical(other.addedType, addedType) ||
                other.addedType == addedType) &&
            (identical(other.sn, sn) || other.sn == sn));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hashAll([
        runtimeType,
        mId,
        vendorId,
        customerId,
        description,
        vendorDescription,
        userId,
        deviceId,
        status,
        statusName,
        continuance,
        engineer,
        engineerName,
        type,
        typeName,
        expectedDaysOfWeek,
        signImage,
        expectedTimeOfWeek,
        addedTime,
        appointedDatetime,
        workStartDatetime,
        workEndDatetime,
        name,
        tel,
        fee,
        work,
        errorReason,
        attachmentUrl,
        vendorName,
        vendorTel,
        customerName,
        customerTel,
        customerAddress,
        const DeepCollectionEquality().hash(_values),
        const DeepCollectionEquality().hash(_deviceValues),
        const DeepCollectionEquality().hash(_userImages),
        const DeepCollectionEquality().hash(_engineerImages),
        const DeepCollectionEquality().hash(_installations),
        addedType,
        sn
      ]);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$GetTaskInformationResponseImplCopyWith<_$GetTaskInformationResponseImpl>
      get copyWith => __$$GetTaskInformationResponseImplCopyWithImpl<
          _$GetTaskInformationResponseImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$GetTaskInformationResponseImplToJson(
      this,
    );
  }
}

abstract class _GetTaskInformationResponse
    implements GetTaskInformationResponse {
  const factory _GetTaskInformationResponse(
      {@JsonKey(name: 'm_id') required final int mId,
      @JsonKey(name: 'vendor_id') required final int vendorId,
      @JsonKey(name: 'customer_id') final int? customerId,
      @JsonKey(name: 'description') final String? description,
      @JsonKey(name: 'vendor_description') final String? vendorDescription,
      @JsonKey(name: 'user_id') required final int userId,
      @JsonKey(name: 'device_id') final int? deviceId,
      @JsonKey(name: 'status') required final int status,
      @JsonKey(name: 'status_name') required final String statusName,
      @JsonKey(name: 'continuance') required final int continuance,
      @JsonKey(name: 'engineer') required final int engineer,
      @JsonKey(name: 'engineer_name') required final String engineerName,
      @JsonKey(name: 'type') required final int type,
      @JsonKey(name: 'type_name') required final String typeName,
      @JsonKey(name: 'expected_days_of_week') final String? expectedDaysOfWeek,
      @JsonKey(name: 'sign_image') final String? signImage,
      @JsonKey(name: 'expected_time_of_week') final String? expectedTimeOfWeek,
      @JsonKey(name: 'added_time') required final String addedTime,
      @JsonKey(name: 'appointed_datetime')
      required final String appointedDatetime,
      @JsonKey(name: 'work_start_datetime') final String? workStartDatetime,
      @JsonKey(name: 'work_end_datetime') final String? workEndDatetime,
      @JsonKey(name: 'name') required final String name,
      @JsonKey(name: 'tel') required final String tel,
      @JsonKey(name: 'fee') final int? fee,
      @JsonKey(name: 'work') final int? work,
      @JsonKey(name: 'error_reason') final String? errorReason,
      @JsonKey(name: 'attachment_url') final String? attachmentUrl,
      @JsonKey(name: 'vendor_name') final String? vendorName,
      @JsonKey(name: 'vendor_tel') final String? vendorTel,
      @JsonKey(name: 'customer_name') final String? customerName,
      @JsonKey(name: 'customer_tel') final String? customerTel,
      @JsonKey(name: 'customer_address') final String? customerAddress,
      @JsonKey(name: 'values') required final List<Value> values,
      @JsonKey(name: 'device_values') final List<Value>? deviceValues,
      @JsonKey(name: 'user_images') required final List<UserImage> userImages,
      @JsonKey(name: 'engineer_images')
      required final List<EngineerImage> engineerImages,
      @JsonKey(name: 'installations')
      required final List<Installation> installations,
      @JsonKey(name: 'added_type') required final String addedType,
      @JsonKey(name: 'sn')
      final String? sn}) = _$GetTaskInformationResponseImpl;

  factory _GetTaskInformationResponse.fromJson(Map<String, dynamic> json) =
      _$GetTaskInformationResponseImpl.fromJson;

  @override
  @JsonKey(name: 'm_id')
  int get mId;
  @override
  @JsonKey(name: 'vendor_id')
  int get vendorId;
  @override
  @JsonKey(name: 'customer_id')
  int? get customerId;
  @override
  @JsonKey(name: 'description')
  String? get description;
  @override
  @JsonKey(name: 'vendor_description')
  String? get vendorDescription;
  @override
  @JsonKey(name: 'user_id')
  int get userId;
  @override
  @JsonKey(name: 'device_id')
  int? get deviceId;
  @override
  @JsonKey(name: 'status')
  int get status;
  @override
  @JsonKey(name: 'status_name')
  String get statusName;
  @override
  @JsonKey(name: 'continuance')
  int get continuance;
  @override
  @JsonKey(name: 'engineer')
  int get engineer;
  @override
  @JsonKey(name: 'engineer_name')
  String get engineerName;
  @override
  @JsonKey(name: 'type')
  int get type;
  @override
  @JsonKey(name: 'type_name')
  String get typeName;
  @override
  @JsonKey(name: 'expected_days_of_week')
  String? get expectedDaysOfWeek;
  @override
  @JsonKey(name: 'sign_image')
  String? get signImage;
  @override
  @JsonKey(name: 'expected_time_of_week')
  String? get expectedTimeOfWeek;
  @override
  @JsonKey(name: 'added_time')
  String get addedTime;
  @override
  @JsonKey(name: 'appointed_datetime')
  String get appointedDatetime;
  @override
  @JsonKey(name: 'work_start_datetime')
  String? get workStartDatetime;
  @override
  @JsonKey(name: 'work_end_datetime')
  String? get workEndDatetime;
  @override
  @JsonKey(name: 'name')
  String get name;
  @override
  @JsonKey(name: 'tel')
  String get tel;
  @override
  @JsonKey(name: 'fee')
  int? get fee;
  @override
  @JsonKey(name: 'work')
  int? get work;
  @override
  @JsonKey(name: 'error_reason')
  String? get errorReason;
  @override
  @JsonKey(name: 'attachment_url')
  String? get attachmentUrl;
  @override
  @JsonKey(name: 'vendor_name')
  String? get vendorName;
  @override
  @JsonKey(name: 'vendor_tel')
  String? get vendorTel;
  @override
  @JsonKey(name: 'customer_name')
  String? get customerName;
  @override
  @JsonKey(name: 'customer_tel')
  String? get customerTel;
  @override
  @JsonKey(name: 'customer_address')
  String? get customerAddress;
  @override
  @JsonKey(name: 'values')
  List<Value> get values;
  @override
  @JsonKey(name: 'device_values')
  List<Value>? get deviceValues;
  @override
  @JsonKey(name: 'user_images')
  List<UserImage> get userImages;
  @override
  @JsonKey(name: 'engineer_images')
  List<EngineerImage> get engineerImages;
  @override
  @JsonKey(name: 'installations')
  List<Installation> get installations;
  @override
  @JsonKey(name: 'added_type')
  String get addedType;
  @override
  @JsonKey(name: 'sn')
  String? get sn;
  @override
  @JsonKey(ignore: true)
  _$$GetTaskInformationResponseImplCopyWith<_$GetTaskInformationResponseImpl>
      get copyWith => throw _privateConstructorUsedError;
}

Value _$ValueFromJson(Map<String, dynamic> json) {
  return _Value.fromJson(json);
}

/// @nodoc
mixin _$Value {
  @JsonKey(name: 'code')
  String get code => throw _privateConstructorUsedError;
  @JsonKey(name: 'types')
  String get types => throw _privateConstructorUsedError;
  @JsonKey(name: 'group1')
  String? get group1 => throw _privateConstructorUsedError;
  @JsonKey(name: 'group2')
  String get group2 => throw _privateConstructorUsedError;
  @JsonKey(name: 'item')
  String get item => throw _privateConstructorUsedError;
  @JsonKey(name: 'value')
  String get value => throw _privateConstructorUsedError;
  @JsonKey(name: 'remark')
  String? get remark => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $ValueCopyWith<Value> get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ValueCopyWith<$Res> {
  factory $ValueCopyWith(Value value, $Res Function(Value) then) =
      _$ValueCopyWithImpl<$Res, Value>;
  @useResult
  $Res call(
      {@JsonKey(name: 'code') String code,
      @JsonKey(name: 'types') String types,
      @JsonKey(name: 'group1') String? group1,
      @JsonKey(name: 'group2') String group2,
      @JsonKey(name: 'item') String item,
      @JsonKey(name: 'value') String value,
      @JsonKey(name: 'remark') String? remark});
}

/// @nodoc
class _$ValueCopyWithImpl<$Res, $Val extends Value>
    implements $ValueCopyWith<$Res> {
  _$ValueCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? code = null,
    Object? types = null,
    Object? group1 = freezed,
    Object? group2 = null,
    Object? item = null,
    Object? value = null,
    Object? remark = freezed,
  }) {
    return _then(_value.copyWith(
      code: null == code
          ? _value.code
          : code // ignore: cast_nullable_to_non_nullable
              as String,
      types: null == types
          ? _value.types
          : types // ignore: cast_nullable_to_non_nullable
              as String,
      group1: freezed == group1
          ? _value.group1
          : group1 // ignore: cast_nullable_to_non_nullable
              as String?,
      group2: null == group2
          ? _value.group2
          : group2 // ignore: cast_nullable_to_non_nullable
              as String,
      item: null == item
          ? _value.item
          : item // ignore: cast_nullable_to_non_nullable
              as String,
      value: null == value
          ? _value.value
          : value // ignore: cast_nullable_to_non_nullable
              as String,
      remark: freezed == remark
          ? _value.remark
          : remark // ignore: cast_nullable_to_non_nullable
              as String?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$ValueImplCopyWith<$Res> implements $ValueCopyWith<$Res> {
  factory _$$ValueImplCopyWith(
          _$ValueImpl value, $Res Function(_$ValueImpl) then) =
      __$$ValueImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {@JsonKey(name: 'code') String code,
      @JsonKey(name: 'types') String types,
      @JsonKey(name: 'group1') String? group1,
      @JsonKey(name: 'group2') String group2,
      @JsonKey(name: 'item') String item,
      @JsonKey(name: 'value') String value,
      @JsonKey(name: 'remark') String? remark});
}

/// @nodoc
class __$$ValueImplCopyWithImpl<$Res>
    extends _$ValueCopyWithImpl<$Res, _$ValueImpl>
    implements _$$ValueImplCopyWith<$Res> {
  __$$ValueImplCopyWithImpl(
      _$ValueImpl _value, $Res Function(_$ValueImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? code = null,
    Object? types = null,
    Object? group1 = freezed,
    Object? group2 = null,
    Object? item = null,
    Object? value = null,
    Object? remark = freezed,
  }) {
    return _then(_$ValueImpl(
      code: null == code
          ? _value.code
          : code // ignore: cast_nullable_to_non_nullable
              as String,
      types: null == types
          ? _value.types
          : types // ignore: cast_nullable_to_non_nullable
              as String,
      group1: freezed == group1
          ? _value.group1
          : group1 // ignore: cast_nullable_to_non_nullable
              as String?,
      group2: null == group2
          ? _value.group2
          : group2 // ignore: cast_nullable_to_non_nullable
              as String,
      item: null == item
          ? _value.item
          : item // ignore: cast_nullable_to_non_nullable
              as String,
      value: null == value
          ? _value.value
          : value // ignore: cast_nullable_to_non_nullable
              as String,
      remark: freezed == remark
          ? _value.remark
          : remark // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$ValueImpl implements _Value {
  const _$ValueImpl(
      {@JsonKey(name: 'code') required this.code,
      @JsonKey(name: 'types') required this.types,
      @JsonKey(name: 'group1') this.group1,
      @JsonKey(name: 'group2') required this.group2,
      @JsonKey(name: 'item') required this.item,
      @JsonKey(name: 'value') required this.value,
      @JsonKey(name: 'remark') this.remark});

  factory _$ValueImpl.fromJson(Map<String, dynamic> json) =>
      _$$ValueImplFromJson(json);

  @override
  @JsonKey(name: 'code')
  final String code;
  @override
  @JsonKey(name: 'types')
  final String types;
  @override
  @JsonKey(name: 'group1')
  final String? group1;
  @override
  @JsonKey(name: 'group2')
  final String group2;
  @override
  @JsonKey(name: 'item')
  final String item;
  @override
  @JsonKey(name: 'value')
  final String value;
  @override
  @JsonKey(name: 'remark')
  final String? remark;

  @override
  String toString() {
    return 'Value(code: $code, types: $types, group1: $group1, group2: $group2, item: $item, value: $value, remark: $remark)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ValueImpl &&
            (identical(other.code, code) || other.code == code) &&
            (identical(other.types, types) || other.types == types) &&
            (identical(other.group1, group1) || other.group1 == group1) &&
            (identical(other.group2, group2) || other.group2 == group2) &&
            (identical(other.item, item) || other.item == item) &&
            (identical(other.value, value) || other.value == value) &&
            (identical(other.remark, remark) || other.remark == remark));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(
      runtimeType, code, types, group1, group2, item, value, remark);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$ValueImplCopyWith<_$ValueImpl> get copyWith =>
      __$$ValueImplCopyWithImpl<_$ValueImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$ValueImplToJson(
      this,
    );
  }
}

abstract class _Value implements Value {
  const factory _Value(
      {@JsonKey(name: 'code') required final String code,
      @JsonKey(name: 'types') required final String types,
      @JsonKey(name: 'group1') final String? group1,
      @JsonKey(name: 'group2') required final String group2,
      @JsonKey(name: 'item') required final String item,
      @JsonKey(name: 'value') required final String value,
      @JsonKey(name: 'remark') final String? remark}) = _$ValueImpl;

  factory _Value.fromJson(Map<String, dynamic> json) = _$ValueImpl.fromJson;

  @override
  @JsonKey(name: 'code')
  String get code;
  @override
  @JsonKey(name: 'types')
  String get types;
  @override
  @JsonKey(name: 'group1')
  String? get group1;
  @override
  @JsonKey(name: 'group2')
  String get group2;
  @override
  @JsonKey(name: 'item')
  String get item;
  @override
  @JsonKey(name: 'value')
  String get value;
  @override
  @JsonKey(name: 'remark')
  String? get remark;
  @override
  @JsonKey(ignore: true)
  _$$ValueImplCopyWith<_$ValueImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

UserImage _$UserImageFromJson(Map<String, dynamic> json) {
  return _UserImage.fromJson(json);
}

/// @nodoc
mixin _$UserImage {
  @JsonKey(name: 'm_id')
  int get mId => throw _privateConstructorUsedError;
  @JsonKey(name: 'm_u_image_id')
  int get mUImageId => throw _privateConstructorUsedError;
  @JsonKey(name: 'image_url')
  String get imageUrl => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $UserImageCopyWith<UserImage> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $UserImageCopyWith<$Res> {
  factory $UserImageCopyWith(UserImage value, $Res Function(UserImage) then) =
      _$UserImageCopyWithImpl<$Res, UserImage>;
  @useResult
  $Res call(
      {@JsonKey(name: 'm_id') int mId,
      @JsonKey(name: 'm_u_image_id') int mUImageId,
      @JsonKey(name: 'image_url') String imageUrl});
}

/// @nodoc
class _$UserImageCopyWithImpl<$Res, $Val extends UserImage>
    implements $UserImageCopyWith<$Res> {
  _$UserImageCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? mId = null,
    Object? mUImageId = null,
    Object? imageUrl = null,
  }) {
    return _then(_value.copyWith(
      mId: null == mId
          ? _value.mId
          : mId // ignore: cast_nullable_to_non_nullable
              as int,
      mUImageId: null == mUImageId
          ? _value.mUImageId
          : mUImageId // ignore: cast_nullable_to_non_nullable
              as int,
      imageUrl: null == imageUrl
          ? _value.imageUrl
          : imageUrl // ignore: cast_nullable_to_non_nullable
              as String,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$UserImageImplCopyWith<$Res>
    implements $UserImageCopyWith<$Res> {
  factory _$$UserImageImplCopyWith(
          _$UserImageImpl value, $Res Function(_$UserImageImpl) then) =
      __$$UserImageImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {@JsonKey(name: 'm_id') int mId,
      @JsonKey(name: 'm_u_image_id') int mUImageId,
      @JsonKey(name: 'image_url') String imageUrl});
}

/// @nodoc
class __$$UserImageImplCopyWithImpl<$Res>
    extends _$UserImageCopyWithImpl<$Res, _$UserImageImpl>
    implements _$$UserImageImplCopyWith<$Res> {
  __$$UserImageImplCopyWithImpl(
      _$UserImageImpl _value, $Res Function(_$UserImageImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? mId = null,
    Object? mUImageId = null,
    Object? imageUrl = null,
  }) {
    return _then(_$UserImageImpl(
      mId: null == mId
          ? _value.mId
          : mId // ignore: cast_nullable_to_non_nullable
              as int,
      mUImageId: null == mUImageId
          ? _value.mUImageId
          : mUImageId // ignore: cast_nullable_to_non_nullable
              as int,
      imageUrl: null == imageUrl
          ? _value.imageUrl
          : imageUrl // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$UserImageImpl implements _UserImage {
  const _$UserImageImpl(
      {@JsonKey(name: 'm_id') required this.mId,
      @JsonKey(name: 'm_u_image_id') required this.mUImageId,
      @JsonKey(name: 'image_url') required this.imageUrl});

  factory _$UserImageImpl.fromJson(Map<String, dynamic> json) =>
      _$$UserImageImplFromJson(json);

  @override
  @JsonKey(name: 'm_id')
  final int mId;
  @override
  @JsonKey(name: 'm_u_image_id')
  final int mUImageId;
  @override
  @JsonKey(name: 'image_url')
  final String imageUrl;

  @override
  String toString() {
    return 'UserImage(mId: $mId, mUImageId: $mUImageId, imageUrl: $imageUrl)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$UserImageImpl &&
            (identical(other.mId, mId) || other.mId == mId) &&
            (identical(other.mUImageId, mUImageId) ||
                other.mUImageId == mUImageId) &&
            (identical(other.imageUrl, imageUrl) ||
                other.imageUrl == imageUrl));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, mId, mUImageId, imageUrl);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$UserImageImplCopyWith<_$UserImageImpl> get copyWith =>
      __$$UserImageImplCopyWithImpl<_$UserImageImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$UserImageImplToJson(
      this,
    );
  }
}

abstract class _UserImage implements UserImage {
  const factory _UserImage(
          {@JsonKey(name: 'm_id') required final int mId,
          @JsonKey(name: 'm_u_image_id') required final int mUImageId,
          @JsonKey(name: 'image_url') required final String imageUrl}) =
      _$UserImageImpl;

  factory _UserImage.fromJson(Map<String, dynamic> json) =
      _$UserImageImpl.fromJson;

  @override
  @JsonKey(name: 'm_id')
  int get mId;
  @override
  @JsonKey(name: 'm_u_image_id')
  int get mUImageId;
  @override
  @JsonKey(name: 'image_url')
  String get imageUrl;
  @override
  @JsonKey(ignore: true)
  _$$UserImageImplCopyWith<_$UserImageImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

EngineerImage _$EngineerImageFromJson(Map<String, dynamic> json) {
  return _EngineerImage.fromJson(json);
}

/// @nodoc
mixin _$EngineerImage {
  @JsonKey(name: 'm_id')
  int get mId => throw _privateConstructorUsedError;
  @JsonKey(name: 'm_e_image_id')
  int get mEImageId => throw _privateConstructorUsedError;
  @JsonKey(name: 'kind')
  int get kind => throw _privateConstructorUsedError;
  @JsonKey(name: 'image_url')
  String get imageUrl => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $EngineerImageCopyWith<EngineerImage> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $EngineerImageCopyWith<$Res> {
  factory $EngineerImageCopyWith(
          EngineerImage value, $Res Function(EngineerImage) then) =
      _$EngineerImageCopyWithImpl<$Res, EngineerImage>;
  @useResult
  $Res call(
      {@JsonKey(name: 'm_id') int mId,
      @JsonKey(name: 'm_e_image_id') int mEImageId,
      @JsonKey(name: 'kind') int kind,
      @JsonKey(name: 'image_url') String imageUrl});
}

/// @nodoc
class _$EngineerImageCopyWithImpl<$Res, $Val extends EngineerImage>
    implements $EngineerImageCopyWith<$Res> {
  _$EngineerImageCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? mId = null,
    Object? mEImageId = null,
    Object? kind = null,
    Object? imageUrl = null,
  }) {
    return _then(_value.copyWith(
      mId: null == mId
          ? _value.mId
          : mId // ignore: cast_nullable_to_non_nullable
              as int,
      mEImageId: null == mEImageId
          ? _value.mEImageId
          : mEImageId // ignore: cast_nullable_to_non_nullable
              as int,
      kind: null == kind
          ? _value.kind
          : kind // ignore: cast_nullable_to_non_nullable
              as int,
      imageUrl: null == imageUrl
          ? _value.imageUrl
          : imageUrl // ignore: cast_nullable_to_non_nullable
              as String,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$EngineerImageImplCopyWith<$Res>
    implements $EngineerImageCopyWith<$Res> {
  factory _$$EngineerImageImplCopyWith(
          _$EngineerImageImpl value, $Res Function(_$EngineerImageImpl) then) =
      __$$EngineerImageImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {@JsonKey(name: 'm_id') int mId,
      @JsonKey(name: 'm_e_image_id') int mEImageId,
      @JsonKey(name: 'kind') int kind,
      @JsonKey(name: 'image_url') String imageUrl});
}

/// @nodoc
class __$$EngineerImageImplCopyWithImpl<$Res>
    extends _$EngineerImageCopyWithImpl<$Res, _$EngineerImageImpl>
    implements _$$EngineerImageImplCopyWith<$Res> {
  __$$EngineerImageImplCopyWithImpl(
      _$EngineerImageImpl _value, $Res Function(_$EngineerImageImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? mId = null,
    Object? mEImageId = null,
    Object? kind = null,
    Object? imageUrl = null,
  }) {
    return _then(_$EngineerImageImpl(
      mId: null == mId
          ? _value.mId
          : mId // ignore: cast_nullable_to_non_nullable
              as int,
      mEImageId: null == mEImageId
          ? _value.mEImageId
          : mEImageId // ignore: cast_nullable_to_non_nullable
              as int,
      kind: null == kind
          ? _value.kind
          : kind // ignore: cast_nullable_to_non_nullable
              as int,
      imageUrl: null == imageUrl
          ? _value.imageUrl
          : imageUrl // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$EngineerImageImpl implements _EngineerImage {
  const _$EngineerImageImpl(
      {@JsonKey(name: 'm_id') required this.mId,
      @JsonKey(name: 'm_e_image_id') required this.mEImageId,
      @JsonKey(name: 'kind') required this.kind,
      @JsonKey(name: 'image_url') required this.imageUrl});

  factory _$EngineerImageImpl.fromJson(Map<String, dynamic> json) =>
      _$$EngineerImageImplFromJson(json);

  @override
  @JsonKey(name: 'm_id')
  final int mId;
  @override
  @JsonKey(name: 'm_e_image_id')
  final int mEImageId;
  @override
  @JsonKey(name: 'kind')
  final int kind;
  @override
  @JsonKey(name: 'image_url')
  final String imageUrl;

  @override
  String toString() {
    return 'EngineerImage(mId: $mId, mEImageId: $mEImageId, kind: $kind, imageUrl: $imageUrl)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$EngineerImageImpl &&
            (identical(other.mId, mId) || other.mId == mId) &&
            (identical(other.mEImageId, mEImageId) ||
                other.mEImageId == mEImageId) &&
            (identical(other.kind, kind) || other.kind == kind) &&
            (identical(other.imageUrl, imageUrl) ||
                other.imageUrl == imageUrl));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, mId, mEImageId, kind, imageUrl);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$EngineerImageImplCopyWith<_$EngineerImageImpl> get copyWith =>
      __$$EngineerImageImplCopyWithImpl<_$EngineerImageImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$EngineerImageImplToJson(
      this,
    );
  }
}

abstract class _EngineerImage implements EngineerImage {
  const factory _EngineerImage(
          {@JsonKey(name: 'm_id') required final int mId,
          @JsonKey(name: 'm_e_image_id') required final int mEImageId,
          @JsonKey(name: 'kind') required final int kind,
          @JsonKey(name: 'image_url') required final String imageUrl}) =
      _$EngineerImageImpl;

  factory _EngineerImage.fromJson(Map<String, dynamic> json) =
      _$EngineerImageImpl.fromJson;

  @override
  @JsonKey(name: 'm_id')
  int get mId;
  @override
  @JsonKey(name: 'm_e_image_id')
  int get mEImageId;
  @override
  @JsonKey(name: 'kind')
  int get kind;
  @override
  @JsonKey(name: 'image_url')
  String get imageUrl;
  @override
  @JsonKey(ignore: true)
  _$$EngineerImageImplCopyWith<_$EngineerImageImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

Installation _$InstallationFromJson(Map<String, dynamic> json) {
  return _Installation.fromJson(json);
}

/// @nodoc
mixin _$Installation {
  @JsonKey(name: 'model_id')
  int get modelId => throw _privateConstructorUsedError;
  @JsonKey(name: 'name')
  String get name => throw _privateConstructorUsedError;
  @JsonKey(name: 'image_url')
  String get imageUrl => throw _privateConstructorUsedError;
  @JsonKey(name: 'description')
  String get description => throw _privateConstructorUsedError;
  @JsonKey(name: 'guide_url')
  String get guideUrl => throw _privateConstructorUsedError;
  @JsonKey(name: 'num')
  int get num => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $InstallationCopyWith<Installation> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $InstallationCopyWith<$Res> {
  factory $InstallationCopyWith(
          Installation value, $Res Function(Installation) then) =
      _$InstallationCopyWithImpl<$Res, Installation>;
  @useResult
  $Res call(
      {@JsonKey(name: 'model_id') int modelId,
      @JsonKey(name: 'name') String name,
      @JsonKey(name: 'image_url') String imageUrl,
      @JsonKey(name: 'description') String description,
      @JsonKey(name: 'guide_url') String guideUrl,
      @JsonKey(name: 'num') int num});
}

/// @nodoc
class _$InstallationCopyWithImpl<$Res, $Val extends Installation>
    implements $InstallationCopyWith<$Res> {
  _$InstallationCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? modelId = null,
    Object? name = null,
    Object? imageUrl = null,
    Object? description = null,
    Object? guideUrl = null,
    Object? num = null,
  }) {
    return _then(_value.copyWith(
      modelId: null == modelId
          ? _value.modelId
          : modelId // ignore: cast_nullable_to_non_nullable
              as int,
      name: null == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
      imageUrl: null == imageUrl
          ? _value.imageUrl
          : imageUrl // ignore: cast_nullable_to_non_nullable
              as String,
      description: null == description
          ? _value.description
          : description // ignore: cast_nullable_to_non_nullable
              as String,
      guideUrl: null == guideUrl
          ? _value.guideUrl
          : guideUrl // ignore: cast_nullable_to_non_nullable
              as String,
      num: null == num
          ? _value.num
          : num // ignore: cast_nullable_to_non_nullable
              as int,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$InstallationImplCopyWith<$Res>
    implements $InstallationCopyWith<$Res> {
  factory _$$InstallationImplCopyWith(
          _$InstallationImpl value, $Res Function(_$InstallationImpl) then) =
      __$$InstallationImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {@JsonKey(name: 'model_id') int modelId,
      @JsonKey(name: 'name') String name,
      @JsonKey(name: 'image_url') String imageUrl,
      @JsonKey(name: 'description') String description,
      @JsonKey(name: 'guide_url') String guideUrl,
      @JsonKey(name: 'num') int num});
}

/// @nodoc
class __$$InstallationImplCopyWithImpl<$Res>
    extends _$InstallationCopyWithImpl<$Res, _$InstallationImpl>
    implements _$$InstallationImplCopyWith<$Res> {
  __$$InstallationImplCopyWithImpl(
      _$InstallationImpl _value, $Res Function(_$InstallationImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? modelId = null,
    Object? name = null,
    Object? imageUrl = null,
    Object? description = null,
    Object? guideUrl = null,
    Object? num = null,
  }) {
    return _then(_$InstallationImpl(
      modelId: null == modelId
          ? _value.modelId
          : modelId // ignore: cast_nullable_to_non_nullable
              as int,
      name: null == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
      imageUrl: null == imageUrl
          ? _value.imageUrl
          : imageUrl // ignore: cast_nullable_to_non_nullable
              as String,
      description: null == description
          ? _value.description
          : description // ignore: cast_nullable_to_non_nullable
              as String,
      guideUrl: null == guideUrl
          ? _value.guideUrl
          : guideUrl // ignore: cast_nullable_to_non_nullable
              as String,
      num: null == num
          ? _value.num
          : num // ignore: cast_nullable_to_non_nullable
              as int,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$InstallationImpl implements _Installation {
  const _$InstallationImpl(
      {@JsonKey(name: 'model_id') required this.modelId,
      @JsonKey(name: 'name') required this.name,
      @JsonKey(name: 'image_url') required this.imageUrl,
      @JsonKey(name: 'description') required this.description,
      @JsonKey(name: 'guide_url') required this.guideUrl,
      @JsonKey(name: 'num') required this.num});

  factory _$InstallationImpl.fromJson(Map<String, dynamic> json) =>
      _$$InstallationImplFromJson(json);

  @override
  @JsonKey(name: 'model_id')
  final int modelId;
  @override
  @JsonKey(name: 'name')
  final String name;
  @override
  @JsonKey(name: 'image_url')
  final String imageUrl;
  @override
  @JsonKey(name: 'description')
  final String description;
  @override
  @JsonKey(name: 'guide_url')
  final String guideUrl;
  @override
  @JsonKey(name: 'num')
  final int num;

  @override
  String toString() {
    return 'Installation(modelId: $modelId, name: $name, imageUrl: $imageUrl, description: $description, guideUrl: $guideUrl, num: $num)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$InstallationImpl &&
            (identical(other.modelId, modelId) || other.modelId == modelId) &&
            (identical(other.name, name) || other.name == name) &&
            (identical(other.imageUrl, imageUrl) ||
                other.imageUrl == imageUrl) &&
            (identical(other.description, description) ||
                other.description == description) &&
            (identical(other.guideUrl, guideUrl) ||
                other.guideUrl == guideUrl) &&
            (identical(other.num, num) || other.num == num));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(
      runtimeType, modelId, name, imageUrl, description, guideUrl, num);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$InstallationImplCopyWith<_$InstallationImpl> get copyWith =>
      __$$InstallationImplCopyWithImpl<_$InstallationImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$InstallationImplToJson(
      this,
    );
  }
}

abstract class _Installation implements Installation {
  const factory _Installation(
      {@JsonKey(name: 'model_id') required final int modelId,
      @JsonKey(name: 'name') required final String name,
      @JsonKey(name: 'image_url') required final String imageUrl,
      @JsonKey(name: 'description') required final String description,
      @JsonKey(name: 'guide_url') required final String guideUrl,
      @JsonKey(name: 'num') required final int num}) = _$InstallationImpl;

  factory _Installation.fromJson(Map<String, dynamic> json) =
      _$InstallationImpl.fromJson;

  @override
  @JsonKey(name: 'model_id')
  int get modelId;
  @override
  @JsonKey(name: 'name')
  String get name;
  @override
  @JsonKey(name: 'image_url')
  String get imageUrl;
  @override
  @JsonKey(name: 'description')
  String get description;
  @override
  @JsonKey(name: 'guide_url')
  String get guideUrl;
  @override
  @JsonKey(name: 'num')
  int get num;
  @override
  @JsonKey(ignore: true)
  _$$InstallationImplCopyWith<_$InstallationImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
