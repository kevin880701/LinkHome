import 'package:freezed_annotation/freezed_annotation.dart';

part 'GetInstallationRecordResponse.freezed.dart';
part 'GetInstallationRecordResponse.g.dart';

@freezed
class GetInstallationRecordResponse with _$GetInstallationRecordResponse {
  const factory GetInstallationRecordResponse({
    @JsonKey(name: 'mac') String? mac,
    @JsonKey(name: 'model_name') required String modelName,
    @JsonKey(name: 'customer_name') String? customerName,
    @JsonKey(name: 'customer_area') String? customerArea,
    @JsonKey(name: 'installation_date') required DateTime installationDate,
  }) = _GetInstallationRecordResponse;

  factory GetInstallationRecordResponse.fromJson(Map<String, dynamic> json) => _$GetInstallationRecordResponseFromJson(json);
}
