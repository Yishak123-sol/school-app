import 'package:flutter/material.dart';

class InputTextField extends StatelessWidget {
  final String hintText;
  final Icon icon;
  final TextInputType textInputType;
  final bool obscureText;
  final TextEditingController textController;
  const InputTextField({
    super.key,
    this.obscureText = false,
    required this.hintText,
    required this.textInputType,
    required this.icon,
    required this.textController,
  });

  @override
  Widget build(BuildContext context) {
    OutlineInputBorder outlineInputBorder = const OutlineInputBorder(
        borderRadius: BorderRadius.all(Radius.circular(8)));
    return TextField(
      controller: textController,
      obscureText: obscureText,
      keyboardType: textInputType,
      decoration: InputDecoration(
        contentPadding: const EdgeInsets.all(15),
        prefixIcon: icon,
        hintText: hintText,
        border: outlineInputBorder,
        enabledBorder: outlineInputBorder,
        focusedBorder: outlineInputBorder,
      ),
    );
  }
}

class WidgetSpace extends StatelessWidget {
  const WidgetSpace({Key? key, this.child, this.space = 0.0}) : super(key: key);
  final dynamic child;
  final double space;
  @override
  Widget build(BuildContext context) => Column(
        children: <Widget>[
          child,
          SizedBox(
            height: space,
          )
        ],
      );
}
