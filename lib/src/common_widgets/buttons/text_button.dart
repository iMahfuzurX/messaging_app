import 'package:flutter/material.dart';

import '../../constants/colors.dart';

class MTextButton extends StatelessWidget {
  final Size minimumSize;
  final Function() onPressed;
  final String title;
  final Color overlayColor;

  const MTextButton({
    Key? key,
    required this.minimumSize,
    required this.onPressed,
    required this.title,
    this.overlayColor = appPrimaryColor,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return TextButton(
      onPressed: onPressed,
      child: Text(title),
      style: ButtonStyle(
          overlayColor: MaterialStateProperty.resolveWith<Color?>((states) {
            if (states.contains(MaterialState.pressed)) return overlayColor.withOpacity(0.5);
          }),
          side: MaterialStatePropertyAll(BorderSide(color: overlayColor, width: 1,)),
          // backgroundColor:
          //     MaterialStatePropertyAll<Color>(appSecondaryColor),
          foregroundColor: MaterialStatePropertyAll<Color>(appPrimaryDarkColor),
          minimumSize: MaterialStatePropertyAll<Size>(minimumSize)),
    );
  }
}
