import 'dart:async';
import 'dart:convert';
import 'package:firebase_core/firebase_core.dart';
import 'package:firebase_messaging/firebase_messaging.dart';
import 'package:flutter_local_notifications/flutter_local_notifications.dart';
import 'package:auto_route/auto_route.dart';
import 'package:haohsing_flutter/main.dart';
import 'package:haohsing_flutter/model/notification/NotificationChannel.dart';
import 'package:haohsing_flutter/model/notification/engineerTask/EngineerTaskResponse.dart';
import 'package:haohsing_flutter/resources/AppResources.dart';
import 'package:haohsing_flutter/route/AppRouter.gr.dart';
import 'package:haohsing_flutter/utils/SharedPreferencesHelper.dart';

enum NotificationType {
  engineer,
  user,
}

StreamSubscription<RemoteMessage>? fcmSubscription;

class NotificationService {
  final FlutterLocalNotificationsPlugin np = FlutterLocalNotificationsPlugin();

  init() async {
    var android = const AndroidInitializationSettings('@drawable/ic_notification');

    var ios = const DarwinInitializationSettings(
      requestAlertPermission: true,
      requestBadgePermission: true,
      requestSoundPermission: true,
    );

    var initSettings = InitializationSettings(android: android, iOS: ios);

    await np.initialize(
      initSettings,
      onDidReceiveNotificationResponse: (NotificationResponse response) async {
        if (response.payload != null) {
          try {
            final taskData = EngineerTaskResponse.fromJson(jsonDecode(response.payload!));
            AutoRouter.of(navigatorKey.currentContext!).pushAndPopUntil(
              TaskInformationRoute(mId: int.parse(taskData.mId)),
              predicate: (route) => route.settings.name == EngineerMainRoute.name,
            );
          } catch (e) {
            print('Error parsing payload: $e');
          }
        }
      },
    );
  }

  Future<void> showNotification({
    int id = 0,
    required String title,
    required String body,
    required String payload,
    required NotificationType type,
  }) async {
    final channel = getNotificationChannel(type);
    int uniqueId = DateTime.now().millisecondsSinceEpoch % 2147483647;
    return np.show(
      uniqueId,
      title,
      body,
      await notificationDetails(channel.channelId, channel.channelName),
      payload: payload,
    );
  }

  Future<NotificationDetails> notificationDetails(String channelId, String channelName) async {
    return NotificationDetails(
      android: AndroidNotificationDetails(
        channelId,
        channelName,
        importance: Importance.max,
        priority: Priority.high,
          color: AppColors.white,
          largeIcon: DrawableResourceAndroidBitmap('@mipmap/ic_launcher')
      ),
      iOS: const DarwinNotificationDetails(),
    );
  }
}

@pragma('vm:entry-point')
Future<void> firebaseMessagingBackgroundHandler(RemoteMessage message) async {
  await Firebase.initializeApp();
  String? recordToken = await SharedPreferencesHelper.instance.getToken();
  EngineerTaskResponse fcmResponse = EngineerTaskResponse.fromJson(message.data);
  print('message.data:${message.data}');
  if(recordToken!=null && recordToken!.isNotEmpty){
    await NotificationService().showNotification(
      title: fcmResponse.title,
      body: fcmResponse.body,
      payload: jsonEncode(message.data),
      type: NotificationType.engineer,
    );
  }
}