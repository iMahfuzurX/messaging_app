import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

import '../../constants/colors.dart';
import '../../constants/dimensions.dart';

class MPrimaryButton extends StatelessWidget {
  final Function() onPressed;
  final String title;
  final Size minimumSize;

  const MPrimaryButton({
    Key? key,
    required this.onPressed,
    required this.title,
    required this.minimumSize,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return FilledButton(
      onPressed: onPressed,
      child: Text(
        title,
        style: GoogleFonts.secularOne(),
      ),
      style: ButtonStyle(
          shape: MaterialStatePropertyAll(RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(mButtonRadius))),
          overlayColor: MaterialStateProperty.resolveWith((states) {
            if (states.contains(MaterialState.pressed))
              return appPrimaryDarkColor.withOpacity(0.05);
          }),
          backgroundColor: MaterialStatePropertyAll<Color>(appPrimaryColor),
          foregroundColor: MaterialStatePropertyAll<Color>(appPrimaryDarkColor),
          minimumSize: MaterialStatePropertyAll<Size>(minimumSize)),
    );
  }
}
