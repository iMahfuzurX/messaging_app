import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:messaging_app/src/constants/colors.dart';

class ChatItemA extends StatelessWidget {
  final String message;

  const ChatItemA({Key? key, required this.message}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final deviceSize = MediaQuery.of(context).size;
    return Row(
      mainAxisAlignment: MainAxisAlignment.end,
      children: [
        Padding(
          padding: const EdgeInsets.only(right: 8.0),
          child: Card(
            elevation: 3,
            color: appSecondaryColor,
            child: Container(
              width: deviceSize.width * 0.55,
              padding: EdgeInsets.all(14),
              child: Text(
                message,
                style: GoogleFonts.secularOne(),
              ),
            ),
          ),
        ),
      ],
    );
  }
}
