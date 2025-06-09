import 'package:freezed_annotation/freezed_annotation.dart';

part 'EngineerWorkOrderResponse.freezed.dart';
part 'EngineerWorkOrderResponse.g.dart';

@freezed
class EngineerWorkOrderResponse with _$EngineerWorkOrderResponse {
  const factory EngineerWorkOrderResponse({
    @JsonKey(name: 'm_id') required int mId,
    @JsonKey(name: 'status') required int status,
    @JsonKey(name: 'type_name') required String typeName,
    @JsonKey(name: 'status_name') required String statusName,
    @JsonKey(name: 'name') required String name,
    @JsonKey(name: 'address') String? address,
    @JsonKey(name: 'continuance') required int continuance,
    @JsonKey(name: 'appointed_datetime') required String appointedDatetime,
    @JsonKey(name: 'added_time') required String addedTime,
  }) = _EngineerWorkOrderResponse;

  factory EngineerWorkOrderResponse.fromJson(Map<String, dynamic> json) => _$EngineerWorkOrderResponseFromJson(json);
}
