import 'package:flutter/material.dart';

import '../util/widgets.dart';

class LoginScreen extends StatefulWidget {
  const LoginScreen({super.key});

  @override
  State<LoginScreen> createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: SingleChildScrollView(
          child: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 20),
            child: Column(
              children: [
                const Text(
                  'Login Page',
                  style: TextStyle(fontSize: 25),
                ),
                const SizedBox(
                  height: 40,
                ),
                const InputTextField(),
                const SizedBox(
                  height: 20,
                ),
                const InputTextField(),
                const SizedBox(
                  height: 20,
                ),
                Container(
                  color: Colors.yellow,
                  height: 40,
                  width: 100,
                  child: const Center(
                    child: Text(
                      'Login',
                      style: TextStyle(fontSize: 16),
                    ),
                  ),
                )
              ],
            ),
          ),
        ),
      ),
    );
  }
}
