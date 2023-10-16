import 'package:flutter/material.dart';

class StudentMark extends StatelessWidget {
  const StudentMark({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 100,
      height: 100,
      child: Center(
        child: Text(
          'Hello, mark!',
          style: TextStyle(
            fontSize: 20,
          ),
        ),
      ),
    );
  }
}
