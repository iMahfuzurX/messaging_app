import 'package:flutter/material.dart';

import '../../constants/colors.dart';
import '../../constants/dimensions.dart';

class MOutlinedButton extends StatelessWidget {
  final Function() onPressed;
  final Size minimumSize;
  final String title;
  final Color overlayColor;

  const MOutlinedButton({
    Key? key,
    required this.onPressed,
    required this.minimumSize,
    required this.title,
    this.overlayColor = appPrimaryDarkColor,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return OutlinedButton(
      onPressed: onPressed,
      child: Text(title),
      style: ButtonStyle(
          shape: MaterialStatePropertyAll(RoundedRectangleBorder(
              side: BorderSide(color: overlayColor, width: 2),
              borderRadius: BorderRadius.circular(mButtonRadius))),
          overlayColor: MaterialStateProperty.resolveWith<Color?>((states) {
            if (states.contains(MaterialState.pressed))
              return overlayColor.withOpacity(0.5);
          }),
          // side: MaterialStatePropertyAll(
          //     BorderSide(color: overlayColor, width: 1)),
          // backgroundColor:
          //     MaterialStatePropertyAll<Color>(appSecondaryColor),
          foregroundColor: MaterialStateProperty.resolveWith((states) {
            if(states.contains(MaterialState.pressed)) return Colors.white;
            else return appPrimaryDarkColor;
          }),
          minimumSize: MaterialStatePropertyAll(minimumSize)),
    );
  }
}
