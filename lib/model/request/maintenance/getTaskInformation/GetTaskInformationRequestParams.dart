import 'package:freezed_annotation/freezed_annotation.dart';

part 'GetTaskInformationRequestParams.freezed.dart';
part 'GetTaskInformationRequestParams.g.dart';

@freezed
class GetTaskInformationRequestParams with _$GetTaskInformationRequestParams {
  const factory GetTaskInformationRequestParams({
    @JsonKey(name: 'm_id') required int mId,
  }) = _GetTaskInformationRequestParams;

  factory GetTaskInformationRequestParams.fromJson(Map<String, dynamic> json) => _$GetTaskInformationRequestParamsFromJson(json);
}
