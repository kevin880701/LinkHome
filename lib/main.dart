import 'dart:convert';

import 'package:auto_route/auto_route.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:firebase_crashlytics/firebase_crashlytics.dart';
import 'package:firebase_messaging/firebase_messaging.dart';
import 'package:flutter/material.dart';
import 'package:flutter_local_notifications/flutter_local_notifications.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:haohsing_flutter/model/notification/engineerTask/EngineerTaskResponse.dart';
import 'package:haohsing_flutter/resources/AppColors.dart';
import 'package:haohsing_flutter/route/AppRouter.dart';
import 'package:haohsing_flutter/route/AppRouter.gr.dart';
import 'package:haohsing_flutter/utils/NotificationService.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';

import 'define.dart';


final navigatorKey = GlobalKey<NavigatorState>();

BuildContext? get appContext => navigatorKey.currentContext;

void main() async {
  WidgetsFlutterBinding.ensureInitialized();

  await Firebase.initializeApp();
  FlutterError.onError = FirebaseCrashlytics.instance.recordFlutterFatalError;

  NotificationSettings settings = await FirebaseMessaging.instance.requestPermission(
    alert: true,
    announcement: false,
    badge: true,
    carPlay: false,
    criticalAlert: false,
    provisional: false,
    sound: true,
  );

  if (settings.authorizationStatus == AuthorizationStatus.authorized) {
    print('用戶已允許通知');
    FirebaseMessaging.onBackgroundMessage(firebaseMessagingBackgroundHandler);
  } else if (settings.authorizationStatus == AuthorizationStatus.provisional) {
    print('用戶允許臨時通知');
    FirebaseMessaging.onBackgroundMessage(firebaseMessagingBackgroundHandler);
  } else {
    print('用戶拒絕通知');
  }

  FirebaseMessaging.onMessageOpenedApp.listen((RemoteMessage message) {
    try {
      final taskData = EngineerTaskResponse.fromJson(message.data);
      AutoRouter.of(navigatorKey.currentContext!).pushAndPopUntil(
        TaskInformationRoute(mId: int.parse(taskData.mId)),
        predicate: (route) => route.settings.name == EngineerMainRoute.name,
      );
    } catch (e) {
      print('Error parsing message data: $e');
    }
    });

  runApp(
    ProviderScope(
      child: MyApp(),
    ),
  );
}

class MyApp extends StatelessWidget {
  final _appRouter = AppRouter(navigatorKey: navigatorKey);

  @override
  Widget build(BuildContext context) {
    return ScreenUtilInit(
      designSize: Size(360, 690),
      minTextAdapt: true,
      splitScreenMode: true,
      builder: (BuildContext context, Widget? child) {
        return MediaQuery(
            data: MediaQuery.of(context).copyWith(textScaler: const TextScaler.linear(1.0)),
        child: MaterialApp.router(
          title: 'Flutter Demo',
          theme: ThemeData(
            primarySwatch: Colors.blue,
            scaffoldBackgroundColor: AppColors.bgColor,
          ),
          routerDelegate: _appRouter.delegate(),
          routeInformationParser: _appRouter.defaultRouteParser(),
        ),);
      },
    );
  }
}