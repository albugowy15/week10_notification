import 'package:flutter/material.dart';
import 'package:week10_notification/screens/home_screen.dart';
import 'package:week10_notification/services/notification_service.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await NotificationService.initializeNotification();
  runApp(const MainApp());
}

class MainApp extends StatelessWidget {
  const MainApp({super.key});

  static GlobalKey<NavigatorState> navigatorKey = GlobalKey<NavigatorState>();
  @override
  Widget build(BuildContext context) {
    const secondaryColor = Color(0xff6D2BD9);
    return MaterialApp(
      navigatorKey: navigatorKey,
      title: "Awesome Notification Demo",
      theme: ThemeData(
        primarySwatch: Colors.blue,
        shadowColor: secondaryColor,
      ),
      home: const HomeScreen(),
    );
  }
}
