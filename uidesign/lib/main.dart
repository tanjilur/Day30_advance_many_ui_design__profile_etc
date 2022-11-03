import 'package:flutter/material.dart';
import 'package:uidesign/screen/splashscreen.dart';
import 'package:uidesign/screen/stepper.dart';
import 'package:uidesign/tabbar/main_tab_Bar.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      routes: {
        "splashScreen": (BuildContext context) => SplashScrenui(),
      },
      home: MainTabBar(),
    );
  }
}
