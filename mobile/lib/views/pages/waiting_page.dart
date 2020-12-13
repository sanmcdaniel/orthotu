import 'dart:async';
import 'package:flutter/material.dart';
import 'package:mobile/constants/styles/theme_data.dart';
import 'package:mobile/views/layouts/scaffold_layout.dart';
import 'package:mobile/views/pages/home_page.dart';

class SplashScreen extends StatefulWidget {
  final Color backgroundColor = Colors.white;
  final TextStyle styleTextUnderTheLoader = TextStyle(
      fontSize: 18.0, fontWeight: FontWeight.bold, color: Colors.black);

  @override
  _SplashScreenState createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  final splashDelay = 5;

  @override
  void initState() {
    super.initState();

    _loadWidget();
  }

  _loadWidget() async {
    var _duration = Duration(seconds: splashDelay);
    return Timer(_duration, navigationPage);
  }

  void navigationPage() {
    Navigator.pushReplacement(
        context,
        MaterialPageRoute(
            builder: (BuildContext context) => HomePage(),
            fullscreenDialog: true));
  }

  @override
  Widget build(BuildContext context) {
    return ScaffoldLayout(
      body: DecoratedBox(
        decoration: BoxDecoration(
          image: DecorationImage(
              image: AssetImage("assets/images/back_ground.png"),
              fit: BoxFit.cover),
        ),
        child: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text(
                "ＯＲＴＨＯ ＴＵ",
                style: defaultTextThemeData.headline1,
              ),
              Padding(padding: EdgeInsets.all(10)),
              Image.asset("assets/images/icon_splash.png"),
              CircularProgressIndicator(),
            ],
          ),
        ),
      ),
    );
  }
}
