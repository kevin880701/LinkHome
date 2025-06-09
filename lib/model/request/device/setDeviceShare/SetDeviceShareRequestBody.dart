import 'package:freezed_annotation/freezed_annotation.dart';

part 'SetDeviceShareRequestBody.freezed.dart';
part 'SetDeviceShareRequestBody.g.dart';

@freezed
class SetDeviceShareRequestBody with _$SetDeviceShareRequestBody {
  const factory SetDeviceShareRequestBody({
    @JsonKey(name: 'device_id') required int deviceId,
    @JsonKey(name: 'share') required bool share,
    @JsonKey(name: 'user_id') required int userId,
  }) = _SetDeviceShareRequestBody;

  factory SetDeviceShareRequestBody.fromJson(Map<String, dynamic> json) => _$SetDeviceShareRequestBodyFromJson(json);
}
