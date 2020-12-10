import 'package:flutter/material.dart';
import 'package:mobile/views/main_routes.dart';
import 'package:mobile/views/pages/waiting_page.dart';

class MainApp extends StatelessWidget {
  final RouteName initialRoute;

  const MainApp({
    Key key,
    this.initialRoute,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(
        primarySwatch: Colors.yellow,
        visualDensity: VisualDensity.adaptivePlatformDensity,
      ),
      home: SplashScreen(),
    );
  }
}
