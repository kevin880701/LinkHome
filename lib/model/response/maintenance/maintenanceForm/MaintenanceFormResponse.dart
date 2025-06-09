import 'package:freezed_annotation/freezed_annotation.dart';

part 'MaintenanceFormResponse.freezed.dart';
part 'MaintenanceFormResponse.g.dart';

@freezed
class MaintenanceFormResponse with _$MaintenanceFormResponse {
  const factory MaintenanceFormResponse({
    @JsonKey(name: 'code') required String code,
    @JsonKey(name: 'types') required String types,
    @JsonKey(name: 'group1') String? group1,
    @JsonKey(name: 'group2') required String group2,
    @JsonKey(name: 'item') required String item,
  }) = _MaintenanceFormResponse;

  factory MaintenanceFormResponse.fromJson(Map<String, dynamic> json) => _$MaintenanceFormResponseFromJson(json);
}
