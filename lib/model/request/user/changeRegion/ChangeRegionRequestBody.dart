import 'package:freezed_annotation/freezed_annotation.dart';

part 'ChangeRegionRequestBody.freezed.dart';
part 'ChangeRegionRequestBody.g.dart';

@freezed
class ChangeRegionRequestBody with _$ChangeRegionRequestBody {
  const factory ChangeRegionRequestBody({
    required String city,
    required String region,
  }) = _ChangeRegionRequestBody;

  factory ChangeRegionRequestBody.fromJson(Map<String, dynamic> json) => _$ChangeRegionRequestBodyFromJson(json);
}
