import 'package:flutter/material.dart';
import 'package:game_login_page/LoginScreen/LoginScreen.dart';
import 'package:url_strategy/url_strategy.dart';

void main() {
  setPathUrlStrategy();
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Game Login Page',
      theme: ThemeData(
        fontFamily: 'Tajawal',
      ),
      home: const LoginScreen(),
    );
  }
}
