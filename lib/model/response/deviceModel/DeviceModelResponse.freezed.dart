// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'DeviceModelResponse.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

DeviceModelResponse _$DeviceModelResponseFromJson(Map<String, dynamic> json) {
  return _DeviceModelResponse.fromJson(json);
}

/// @nodoc
mixin _$DeviceModelResponse {
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
  @JsonKey(name: 'vendor_id')
  int get vendorId => throw _privateConstructorUsedError;
  @JsonKey(name: 'brand')
  String get brand => throw _privateConstructorUsedError;
  @JsonKey(name: 'purchased')
  int? get purchased => throw _privateConstructorUsedError;
  @JsonKey(name: 'price')
  int? get price => throw _privateConstructorUsedError;
  @JsonKey(name: 'installation')
  int get installation => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $DeviceModelResponseCopyWith<DeviceModelResponse> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $DeviceModelResponseCopyWith<$Res> {
  factory $DeviceModelResponseCopyWith(
          DeviceModelResponse value, $Res Function(DeviceModelResponse) then) =
      _$DeviceModelResponseCopyWithImpl<$Res, DeviceModelResponse>;
  @useResult
  $Res call(
      {@JsonKey(name: 'model_id') int modelId,
      @JsonKey(name: 'name') String name,
      @JsonKey(name: 'image_url') String imageUrl,
      @JsonKey(name: 'description') String description,
      @JsonKey(name: 'guide_url') String guideUrl,
      @JsonKey(name: 'vendor_id') int vendorId,
      @JsonKey(name: 'brand') String brand,
      @JsonKey(name: 'purchased') int? purchased,
      @JsonKey(name: 'price') int? price,
      @JsonKey(name: 'installation') int installation});
}

/// @nodoc
class _$DeviceModelResponseCopyWithImpl<$Res, $Val extends DeviceModelResponse>
    implements $DeviceModelResponseCopyWith<$Res> {
  _$DeviceModelResponseCopyWithImpl(this._value, this._then);

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
    Object? vendorId = null,
    Object? brand = null,
    Object? purchased = freezed,
    Object? price = freezed,
    Object? installation = null,
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
      vendorId: null == vendorId
          ? _value.vendorId
          : vendorId // ignore: cast_nullable_to_non_nullable
              as int,
      brand: null == brand
          ? _value.brand
          : brand // ignore: cast_nullable_to_non_nullable
              as String,
      purchased: freezed == purchased
          ? _value.purchased
          : purchased // ignore: cast_nullable_to_non_nullable
              as int?,
      price: freezed == price
          ? _value.price
          : price // ignore: cast_nullable_to_non_nullable
              as int?,
      installation: null == installation
          ? _value.installation
          : installation // ignore: cast_nullable_to_non_nullable
              as int,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$DeviceModelResponseImplCopyWith<$Res>
    implements $DeviceModelResponseCopyWith<$Res> {
  factory _$$DeviceModelResponseImplCopyWith(_$DeviceModelResponseImpl value,
          $Res Function(_$DeviceModelResponseImpl) then) =
      __$$DeviceModelResponseImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {@JsonKey(name: 'model_id') int modelId,
      @JsonKey(name: 'name') String name,
      @JsonKey(name: 'image_url') String imageUrl,
      @JsonKey(name: 'description') String description,
      @JsonKey(name: 'guide_url') String guideUrl,
      @JsonKey(name: 'vendor_id') int vendorId,
      @JsonKey(name: 'brand') String brand,
      @JsonKey(name: 'purchased') int? purchased,
      @JsonKey(name: 'price') int? price,
      @JsonKey(name: 'installation') int installation});
}

/// @nodoc
class __$$DeviceModelResponseImplCopyWithImpl<$Res>
    extends _$DeviceModelResponseCopyWithImpl<$Res, _$DeviceModelResponseImpl>
    implements _$$DeviceModelResponseImplCopyWith<$Res> {
  __$$DeviceModelResponseImplCopyWithImpl(_$DeviceModelResponseImpl _value,
      $Res Function(_$DeviceModelResponseImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? modelId = null,
    Object? name = null,
    Object? imageUrl = null,
    Object? description = null,
    Object? guideUrl = null,
    Object? vendorId = null,
    Object? brand = null,
    Object? purchased = freezed,
    Object? price = freezed,
    Object? installation = null,
  }) {
    return _then(_$DeviceModelResponseImpl(
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
      vendorId: null == vendorId
          ? _value.vendorId
          : vendorId // ignore: cast_nullable_to_non_nullable
              as int,
      brand: null == brand
          ? _value.brand
          : brand // ignore: cast_nullable_to_non_nullable
              as String,
      purchased: freezed == purchased
          ? _value.purchased
          : purchased // ignore: cast_nullable_to_non_nullable
              as int?,
      price: freezed == price
          ? _value.price
          : price // ignore: cast_nullable_to_non_nullable
              as int?,
      installation: null == installation
          ? _value.installation
          : installation // ignore: cast_nullable_to_non_nullable
              as int,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$DeviceModelResponseImpl implements _DeviceModelResponse {
  const _$DeviceModelResponseImpl(
      {@JsonKey(name: 'model_id') required this.modelId,
      @JsonKey(name: 'name') required this.name,
      @JsonKey(name: 'image_url') required this.imageUrl,
      @JsonKey(name: 'description') required this.description,
      @JsonKey(name: 'guide_url') required this.guideUrl,
      @JsonKey(name: 'vendor_id') required this.vendorId,
      @JsonKey(name: 'brand') required this.brand,
      @JsonKey(name: 'purchased') this.purchased,
      @JsonKey(name: 'price') this.price,
      @JsonKey(name: 'installation') required this.installation});

  factory _$DeviceModelResponseImpl.fromJson(Map<String, dynamic> json) =>
      _$$DeviceModelResponseImplFromJson(json);

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
  @JsonKey(name: 'vendor_id')
  final int vendorId;
  @override
  @JsonKey(name: 'brand')
  final String brand;
  @override
  @JsonKey(name: 'purchased')
  final int? purchased;
  @override
  @JsonKey(name: 'price')
  final int? price;
  @override
  @JsonKey(name: 'installation')
  final int installation;

  @override
  String toString() {
    return 'DeviceModelResponse(modelId: $modelId, name: $name, imageUrl: $imageUrl, description: $description, guideUrl: $guideUrl, vendorId: $vendorId, brand: $brand, purchased: $purchased, price: $price, installation: $installation)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$DeviceModelResponseImpl &&
            (identical(other.modelId, modelId) || other.modelId == modelId) &&
            (identical(other.name, name) || other.name == name) &&
            (identical(other.imageUrl, imageUrl) ||
                other.imageUrl == imageUrl) &&
            (identical(other.description, description) ||
                other.description == description) &&
            (identical(other.guideUrl, guideUrl) ||
                other.guideUrl == guideUrl) &&
            (identical(other.vendorId, vendorId) ||
                other.vendorId == vendorId) &&
            (identical(other.brand, brand) || other.brand == brand) &&
            (identical(other.purchased, purchased) ||
                other.purchased == purchased) &&
            (identical(other.price, price) || other.price == price) &&
            (identical(other.installation, installation) ||
                other.installation == installation));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, modelId, name, imageUrl,
      description, guideUrl, vendorId, brand, purchased, price, installation);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$DeviceModelResponseImplCopyWith<_$DeviceModelResponseImpl> get copyWith =>
      __$$DeviceModelResponseImplCopyWithImpl<_$DeviceModelResponseImpl>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$DeviceModelResponseImplToJson(
      this,
    );
  }
}

abstract class _DeviceModelResponse implements DeviceModelResponse {
  const factory _DeviceModelResponse(
          {@JsonKey(name: 'model_id') required final int modelId,
          @JsonKey(name: 'name') required final String name,
          @JsonKey(name: 'image_url') required final String imageUrl,
          @JsonKey(name: 'description') required final String description,
          @JsonKey(name: 'guide_url') required final String guideUrl,
          @JsonKey(name: 'vendor_id') required final int vendorId,
          @JsonKey(name: 'brand') required final String brand,
          @JsonKey(name: 'purchased') final int? purchased,
          @JsonKey(name: 'price') final int? price,
          @JsonKey(name: 'installation') required final int installation}) =
      _$DeviceModelResponseImpl;

  factory _DeviceModelResponse.fromJson(Map<String, dynamic> json) =
      _$DeviceModelResponseImpl.fromJson;

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
  @JsonKey(name: 'vendor_id')
  int get vendorId;
  @override
  @JsonKey(name: 'brand')
  String get brand;
  @override
  @JsonKey(name: 'purchased')
  int? get purchased;
  @override
  @JsonKey(name: 'price')
  int? get price;
  @override
  @JsonKey(name: 'installation')
  int get installation;
  @override
  @JsonKey(ignore: true)
  _$$DeviceModelResponseImplCopyWith<_$DeviceModelResponseImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
