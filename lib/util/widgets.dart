import 'package:flutter/material.dart';

class InputTextField extends StatelessWidget {
  const InputTextField({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return const TextField(
      decoration: InputDecoration(
          contentPadding: EdgeInsets.all(15),
          border: OutlineInputBorder(
              borderRadius: BorderRadius.all(Radius.circular(8)))),
    );
  }
}
