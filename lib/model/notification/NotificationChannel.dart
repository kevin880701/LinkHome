import 'package:haohsing_flutter/utils/NotificationService.dart';

class NotificationChannel {
  final String channelId;
  final String channelName;

  NotificationChannel({
    required this.channelId,
    required this.channelName,
  });
}

NotificationChannel getNotificationChannel(NotificationType type) {
  switch (type) {
    case NotificationType.engineer:
      return NotificationChannel(
        channelId: '101',
        channelName: 'Engineer Notification',
      );
    case NotificationType.user:
      return NotificationChannel(
        channelId: '102',
        channelName: 'User Notification',
      );
  }
}
