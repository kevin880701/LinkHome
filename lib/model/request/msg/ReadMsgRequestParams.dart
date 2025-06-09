import 'package:freezed_annotation/freezed_annotation.dart';

part 'ReadMsgRequestParams.freezed.dart';
part 'ReadMsgRequestParams.g.dart';

@freezed
class ReadMsgRequestParams with _$ReadMsgRequestParams {
  const factory ReadMsgRequestParams({
    @JsonKey(name: 'msg_id') required int msgId,
  }) = _ReadMsgRequestParams;

  factory ReadMsgRequestParams.fromJson(Map<String, dynamic> json) => _$ReadMsgRequestParamsFromJson(json);
}
