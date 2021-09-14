// @dart=2.9
import 'package:cording/home.dart';
import 'package:cording/start.dart';
import 'package:flutter/material.dart';

Future<void> main() async {
WidgetsFlutterBinding.ensureInitialized();
// init your dependency injection here
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

