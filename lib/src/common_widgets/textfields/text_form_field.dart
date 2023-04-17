import 'package:flutter/material.dart';

import '../../constants/colors.dart';

class MTextFormField extends StatelessWidget {
  final String hintText;
  final bool obscure;

  const MTextFormField({
    Key? key,
    required this.hintText,
    this.obscure = false,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return TextFormField(
      keyboardType: TextInputType.emailAddress,
      obscureText: obscure,
      decoration: InputDecoration(
        labelStyle: TextStyle(color: appPrimaryDarkColor),
        focusedBorder: OutlineInputBorder(
          borderRadius: BorderRadius.circular(20),
          borderSide: BorderSide(
            color: appPrimaryDarkColor.withOpacity(0.4),
          ),
        ),
        labelText: hintText,
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
