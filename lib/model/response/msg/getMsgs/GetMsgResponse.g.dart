// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'GetMsgResponse.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$GetMsgResponseImpl _$$GetMsgResponseImplFromJson(Map<String, dynamic> json) =>
    _$GetMsgResponseImpl(
      msgId: (json['msg_id'] as num).toInt(),
      userId: (json['user_id'] as num).toInt(),
      type: (json['type'] as num).toInt(),
      subject: json['subject'] as String,
      body: json['body'] as String,
      addedTime: json['added_time'] as String,
      deviceId: (json['device_id'] as num?)?.toInt(),
      mId: (json['m_id'] as num?)?.toInt(),
      isRead: (json['isread'] as num).toInt(),
    );

Map<String, dynamic> _$$GetMsgResponseImplToJson(
        _$GetMsgResponseImpl instance) =>
    <String, dynamic>{
      'msg_id': instance.msgId,
      'user_id': instance.userId,
      'type': instance.type,
      'subject': instance.subject,
      'body': instance.body,
      'added_time': instance.addedTime,
      'device_id': instance.deviceId,
      'm_id': instance.mId,
      'isread': instance.isRead,
    };
