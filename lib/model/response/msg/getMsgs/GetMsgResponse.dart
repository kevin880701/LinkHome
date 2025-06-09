import 'package:freezed_annotation/freezed_annotation.dart';

part 'GetMsgResponse.freezed.dart';
part 'GetMsgResponse.g.dart';

@freezed
class GetMsgResponse with _$GetMsgResponse {
  const factory GetMsgResponse({
    @JsonKey(name: 'msg_id') required int msgId,
    @JsonKey(name: 'user_id') required int userId,
    @JsonKey(name: 'type') required int type,
    @JsonKey(name: 'subject') required String subject,
    @JsonKey(name: 'body') required String body,
    @JsonKey(name: 'added_time') required String addedTime,
    @JsonKey(name: 'device_id') int? deviceId,
    @JsonKey(name: 'm_id') int? mId,
    @JsonKey(name: 'isread') required int isRead,
  }) = _GetMsgResponse;

  factory GetMsgResponse.fromJson(Map<String, dynamic> json) => _$GetMsgResponseFromJson(json);
}
