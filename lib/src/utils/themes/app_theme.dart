import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:messaging_app/src/constants/colors.dart';

class MAppTheme {
  MAppTheme._();

  static ThemeData lightTheme = ThemeData(
    textTheme: TextTheme(
        headlineLarge: GoogleFonts.ubuntu(
          fontWeight: FontWeight.w900,
          color: appPrimaryDarkColor,
        ),
        headlineMedium: GoogleFonts.ubuntu(
          fontWeight: FontWeight.w700,
          color: appPrimaryDarkColor,
        ),
        headlineSmall: GoogleFonts.ubuntu(
          fontWeight: FontWeight.w600,
          color: appPrimaryDarkColor,
        )),
  );
  static ThemeData darkTheme = ThemeData();
}
