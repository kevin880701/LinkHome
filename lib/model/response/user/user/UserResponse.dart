import 'package:freezed_annotation/freezed_annotation.dart';

part 'UserResponse.freezed.dart';
part 'UserResponse.g.dart';

@freezed
class UserResponse with _$UserResponse {
  const factory UserResponse({
    @JsonKey(name: 'user_id') required int userId,
    required String account,
    required String? headshot,
    required String? name,
    @JsonKey(name: 'roles_name') required String rolesName,
    @JsonKey(name: 'vendor_id') int? vendorId,
    @JsonKey(name: 'vendor_name') String? vendorName,
    String? tel,
    required String? city,
    required String? region,
    required int vip,
    @JsonKey(name: 'added_time') required String addedTime,
  }) = _UserResponse;

  factory UserResponse.fromJson(Map<String, dynamic> json) => _$UserResponseFromJson(json);
}
