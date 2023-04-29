import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:messaging_app/src/constants/colors.dart';
import 'package:messaging_app/src/features/chats/models/chats_model.dart';
import 'package:messaging_app/src/features/chats/screens/chats_screen.dart';

import 'models/chats_list_model.dart';

class ChatsList extends StatelessWidget {
  final List<ChatsListModel> chatsListModel;

  ChatsList({Key? key, required this.chatsListModel}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      itemBuilder: (ctx, index) => Padding(
        padding: const EdgeInsets.fromLTRB(8.0, 5.0, 8.0, 5.0),
        child: ListTile(
          onTap: () => Get.to(() => ChatScreen()) ,
          shape: RoundedRectangleBorder(
              side: BorderSide(
                  color: appPrimaryDarkColor.withOpacity(0.1), width: 1),
              borderRadius: BorderRadius.circular(10)),
          leading: CircleAvatar(
            backgroundColor: appSecondaryColor,
            child: FittedBox(
              child: Padding(
                padding: const EdgeInsets.all(8.0),
                child: Text(
                  chatsListModel[index].contactName.substring(0, 2),
                  textAlign: TextAlign.center,
                ),
              ),
            ),
          ),
          title: Text(
            chatsListModel[index].contactName,
            style: GoogleFonts.merriweatherSans(),
          ),
          subtitle: Text(
            chatsListModel[index].lastMsg,
            style: GoogleFonts.jost(),
          ),
        ),
      ),
      itemCount: chatsListModel.length,
    );
  }
}
