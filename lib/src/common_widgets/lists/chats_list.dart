import 'package:flutter/material.dart';
import 'package:messaging_app/src/constants/colors.dart';

import 'models/chats_list_model.dart';

class ChatsList extends StatelessWidget {
  final List<ChatsListModel> chatsListModel;

  const ChatsList({Key? key, required this.chatsListModel}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      itemBuilder: (ctx, index) => Padding(
        padding: const EdgeInsets.fromLTRB(8.0, 5.0, 8.0, 5.0),
        child: ListTile(
          onTap: () => null,
          shape: RoundedRectangleBorder(
            side: BorderSide(color: appPrimaryDarkColor.withOpacity(0.1), width: 1),
            borderRadius: BorderRadius.circular(10)
          ),
          leading: CircleAvatar(
            child: FittedBox(
              child: Padding(
                padding: const EdgeInsets.all(8.0),
                child: Text(
                  'No\nImage\nFound',
                  textAlign: TextAlign.center,
                ),
              ),
            ),
          ),
          title: Text(chatsListModel[index].contactName),
          subtitle: Text(chatsListModel[index].lastMsg),
        ),
      ),
      itemCount: chatsListModel.length,
    );
  }
}
