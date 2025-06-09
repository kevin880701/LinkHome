import 'package:freezed_annotation/freezed_annotation.dart';

part 'MaintenanceFormRequestParams.freezed.dart';
part 'MaintenanceFormRequestParams.g.dart';

@freezed
class MaintenanceFormRequestParams with _$MaintenanceFormRequestParams {
  const factory MaintenanceFormRequestParams({
    required int type,
  }) = _MaintenanceFormRequestParams;

  factory MaintenanceFormRequestParams.fromJson(Map<String, dynamic> json) => _$MaintenanceFormRequestParamsFromJson(json);
}
