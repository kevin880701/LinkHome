
import 'package:freezed_annotation/freezed_annotation.dart';
part 'DeviceValueRequestBody.freezed.dart';
part 'DeviceValueRequestBody.g.dart';

@freezed
class DeviceValueRequestBody with _$DeviceValueRequestBody {
  const factory DeviceValueRequestBody({
    required String id,
    required String value,

  }) = _DeviceValueRequestBody;

  factory DeviceValueRequestBody.fromJson(Map<String, dynamic> json) => _$DeviceValueRequestBodyFromJson(json);
}
