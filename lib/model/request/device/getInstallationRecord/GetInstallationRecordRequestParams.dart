import 'package:freezed_annotation/freezed_annotation.dart';

part 'GetInstallationRecordRequestParams.freezed.dart';
part 'GetInstallationRecordRequestParams.g.dart';

@freezed
class GetInstallationRecordRequestParams with _$GetInstallationRecordRequestParams {
  const factory GetInstallationRecordRequestParams({
    @JsonKey(name: 'period') required int period,
  }) = _GetInstallationRecordRequestParams;

  factory GetInstallationRecordRequestParams.fromJson(Map<String, dynamic> json) => _$GetInstallationRecordRequestParamsFromJson(json);
}
