import 'package:flutter/material.dart';
import 'package:school_app/Pages/gettingstarted_Page.dart';
import 'package:school_app/Pages/login_page.dart';
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
