import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:messaging_app/src/constants/colors.dart';

class ChatItemB extends StatelessWidget {
  final String message;

  const ChatItemB({Key? key, required this.message}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final deviceSize = MediaQuery.of(context).size;
    return Row(
      mainAxisAlignment: MainAxisAlignment.start,
      children: [
        Padding(
          padding: const EdgeInsets.all(8.0),
          child: CircleAvatar(backgroundColor: appSecondaryColor,),
        ),
        Card(
          elevation: 3,
          color: Colors.indigo,
          child: Container(
            width: deviceSize.width * 0.5,
            padding: EdgeInsets.all(14),
            child: Text(
              message,
              style: GoogleFonts.secularOne(color: appColorWhite),
            ),
          ),
        ),
      ],
    );
  }
}
