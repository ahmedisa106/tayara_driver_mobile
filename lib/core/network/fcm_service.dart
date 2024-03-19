import 'package:firebase_messaging/firebase_messaging.dart';
import 'package:flutter_local_notifications/flutter_local_notifications.dart';

class FcmService {
  static final FlutterLocalNotificationsPlugin _notificationsPlugin = FlutterLocalNotificationsPlugin();


  Future<void> initialize() async {
    // initializationSettings  for Android
    _notificationsPlugin.resolvePlatformSpecificImplementation<
        AndroidFlutterLocalNotificationsPlugin>()!.requestNotificationsPermission();
    const AndroidInitializationSettings androidInitializationSettings =
    AndroidInitializationSettings(
        "@mipmap/launcher_icon"
    );
    DarwinInitializationSettings iosInitializationSettings =
    DarwinInitializationSettings(
      requestAlertPermission: true,
      requestBadgePermission: true,
      requestSoundPermission: true,
      onDidReceiveLocalNotification: _onDidReceiveLocalNotification,
    );

    final InitializationSettings settings = InitializationSettings(
      android: androidInitializationSettings,
      iOS: iosInitializationSettings,
    );


    await _notificationsPlugin.initialize(
      settings,
      // onSelectNotification: (String? id) async {
      //   print("onSelectNotification");
      //   if (id!.isNotEmpty) {
      //     print("Router Value1234 $id");
      //
      //     // Navigator.of(context).push(
      //     //   MaterialPageRoute(
      //     //     builder: (context) => DemoScreen(
      //     //       id: id,
      //     //     ),
      //     //   ),
      //     // );
      //
      //
      //   }
      // },
    );
  }


  static void createanddisplaynotification(RemoteMessage message) async {
    try {
      final id = DateTime.now().millisecondsSinceEpoch ~/ 1000;
      const NotificationDetails notificationDetails = NotificationDetails(
        android: AndroidNotificationDetails(
          "Refine",
          "Refine",
          importance: Importance.max,
          priority: Priority.high,
          playSound: true,
        ),
        iOS: DarwinNotificationDetails(
            presentAlert: true,  // Present an alert when the notification is displayed and the application is in the foreground (only from iOS 10 onwards)
            presentBadge:true,   // Present the badge number when the notification is displayed and the application is in the foreground (only from iOS 10 onwards)
            presentSound: true,   // Play a sound when the notification is displayed and the application is in the foreground (only from iOS 10 onwards)

        ),

      );

      await _notificationsPlugin.show(
        id,
        message.notification!.title,
        message.notification!.body,
        notificationDetails,
        payload: message.data['_id'],
      );
    } on Exception catch (e) {
      print(e);
    }
  }

  void _onDidReceiveLocalNotification(int id, String? title, String? body, String? payload) {
    print("id :: $id");
  }
}