import 'package:flutter/material.dart';

class MyTextField extends StatelessWidget {
 final String hintText;
 final bool obscureText;
 final TextEditingController textEditingController;

  const MyTextField({
    super.key,
    required this.hintText,
    required this.textEditingController,
    required this.obscureText

  });

  @override
  Widget build(BuildContext context) {
    return TextField(

      controller: textEditingController,
      decoration: InputDecoration(
        border: OutlineInputBorder(
          borderRadius: BorderRadius.circular(40)
        ),
        hintText: hintText,

      ),
      obscureText: obscureText,
    );
  }
}
