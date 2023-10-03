import 'package:flutter/material.dart';
import 'package:school_app/Pages/loginPage.dart';
import 'package:flutter/services.dart';

void main() {
  SystemChrome.setSystemUIOverlayStyle(const SystemUiOverlayStyle(
    systemNavigationBarColor: Colors.white,
  ));
  runApp(MaterialApp(
    title: 'N School',
    theme: ThemeData(
      fontFamily: 'Poppins',
    ),
    initialRoute: 'login',
    routes: {
      'login': (context) => const LoginScreen(),
    },
  ));
}
