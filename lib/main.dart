import 'package:flutter/material.dart';
import 'package:school_app/Pages/gettingStartedPage.dart';
import 'package:school_app/Pages/loginPage.dart';
import 'package:flutter/services.dart';

void main() {
  SystemChrome.setSystemUIOverlayStyle(const SystemUiOverlayStyle(
    systemNavigationBarColor: Colors.white,
  ));
  runApp(
    MaterialApp(
    debugShowCheckedModeBanner: false,
    title: 'N School',
    theme: ThemeData(
      fontFamily: 'Poppins',
    ),
    initialRoute: '/',
    routes: {
      '/': (context) => const GettingStartedPage(),
      'login': (context) => const LoginScreen(),
    },
  ));
}
