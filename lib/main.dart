// @dart=2.9
import 'package:cording/home.dart';
import 'package:cording/start.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:firebase_messaging/firebase_messaging.dart';
import 'package:flutter/material.dart';
import 'package:flutter_local_notifications/flutter_local_notifications.dart';

const AndroidNotificationChannel channel = AndroidNotificationChannel(
  'High_importance_Chennal', 
  'High Importance notification', 
  'This Channel is used for importan',
  importance: Importance.high,
  playSound: true,
  );
final FlutterLocalNotificationsPlugin flutterLocalNotificationsPlugin = FlutterLocalNotificationsPlugin();

Future<void> _firebaseMessageBackgroundHandler(RemoteMessage message) async{
  await Firebase.initializeApp();
  print('the Background Message is ${message.messageId}');
}


Future<void> main() async {
WidgetsFlutterBinding.ensureInitialized();
// init your dependency injection here
FirebaseMessaging.onBackgroundMessage(_firebaseMessageBackgroundHandler);

await flutterLocalNotificationsPlugin
.resolvePlatformSpecificImplementation<AndroidFlutterLocalNotificationsPlugin>()?.createNotificationChannel(channel);

await Firebase.initializeApp();
runApp(MyApp());}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    
    return MaterialApp(
      
      debugShowCheckedModeBanner: false,
      themeMode: ThemeMode.system,
      
      title: 'cording',
      home: Start(),
      
    );
  }
}

