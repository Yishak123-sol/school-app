import 'package:flutter/material.dart';
import 'package:school_app/Pages/gettingstarted_Page.dart';
import 'package:school_app/Pages/login_page.dart';
import 'package:flutter/services.dart';
import 'package:school_app/Pages/student_home_page.dart';
import 'package:school_app/Pages/teacher_home_page.dart';

void main() {
  SystemChrome.setSystemUIOverlayStyle(const SystemUiOverlayStyle(
    systemNavigationBarColor: Colors.white,
  ));
  runApp(MaterialApp(
    debugShowCheckedModeBanner: false,
    title: 'NN School',
    theme: ThemeData(
      fontFamily: 'Poppins',
    ),
    initialRoute: 'student',
    routes: {
      '/': (context) => const GettingStartedPage(),
      'login': (context) => const LoginScreen(),
      'student': (context) => const StudentHomePage(),
      'teacher': (context) => const TeacherHome(),
    },
  ));
}
