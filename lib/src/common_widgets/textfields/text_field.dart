import 'package:flutter/material.dart';

import '../../constants/colors.dart';

class MTextField extends StatelessWidget {
  final String hintText;
  final bool obscure;

  const MTextField({
    Key? key,
    required this.hintText,
    this.obscure = false,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return TextField(
      keyboardType: TextInputType.text,
      obscureText: obscure,
      decoration: InputDecoration(
        labelStyle: TextStyle(color: appPrimaryDarkColor),
        focusedBorder: OutlineInputBorder(
          borderRadius: BorderRadius.circular(30),
          borderSide: BorderSide(
            color: appPrimaryDarkColor.withOpacity(0.4),
          ),
        ),
        hintText: hintText,
        enabledBorder: OutlineInputBorder(
          borderRadius: BorderRadius.circular(10),
          borderSide: BorderSide(
            color: appPrimaryDarkColor.withOpacity(0.2),
          ),
        ),
      ),
    );
  }
}
