import 'package:flutter/material.dart';

import '../../constants/colors.dart';

class MNavigationButton extends StatelessWidget {
  const MNavigationButton({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
      onPressed: () => Navigator.pop(context),
      child: Icon(
        Icons.chevron_left,
        size: 28,
        color: appPrimaryDarkColor,
      ),
      style: ButtonStyle(
        shape: MaterialStatePropertyAll(CircleBorder()),
        backgroundColor: MaterialStatePropertyAll(appColorWhite),
        padding: MaterialStatePropertyAll(EdgeInsets.all(12)),
        overlayColor: MaterialStateProperty.resolveWith<Color?>(
          (states) {
            if (states.contains(MaterialState.pressed))
              return appPrimaryDarkColor.withOpacity(0.2);
          },
        ),
      ),
    );
  }
}
