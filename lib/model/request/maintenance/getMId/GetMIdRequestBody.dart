import 'package:freezed_annotation/freezed_annotation.dart';

part 'GetMIdRequestBody.freezed.dart';
part 'GetMIdRequestBody.g.dart';

@freezed
class GetMIdRequestBody with _$GetMIdRequestBody {
  const factory GetMIdRequestBody({
    @JsonKey(name: 'device_id') required int deviceId,
  }) = _GetMIdRequestBody;

  factory GetMIdRequestBody.fromJson(Map<String, dynamic> json) => _$GetMIdRequestBodyFromJson(json);
}
