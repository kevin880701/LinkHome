import 'package:freezed_annotation/freezed_annotation.dart';

part 'UpdateWarrantyRequestBody.freezed.dart';
part 'UpdateWarrantyRequestBody.g.dart';

@freezed
class UpdateWarrantyRequestBody with _$UpdateWarrantyRequestBody {
  const factory UpdateWarrantyRequestBody({
    @JsonKey(name: 'device_id') required int deviceId,
    @JsonKey(name: 'owner') required String owner,
    @JsonKey(name: 'warranty_email') required String warrantyEmail,
    @JsonKey(name: 'warranty_tel') required String warrantyTel,
    @JsonKey(name: 'inv_date') required String invDate,
    @JsonKey(name: 'work_order_number') required String workOrderNumber,
    @JsonKey(name: 'device_images') required String deviceImages,
  }) = _UpdateWarrantyRequestBody;

  factory UpdateWarrantyRequestBody.fromJson(Map<String, dynamic> json) =>
      _$UpdateWarrantyRequestBodyFromJson(json);
}
