import 'package:flutter/material.dart';
import 'package:messaging_app/src/common_widgets/textfields/text_field.dart';

import '../../../common_widgets/chat_components/chat_item_a.dart';
import '../../../common_widgets/chat_components/chat_item_b.dart';
import '../models/chats_model.dart';

class ChatScreen extends StatelessWidget {
  static const routeName = '/chat-screen';

  ChatScreen({Key? key}) : super(key: key);

  final List<ChatModel> chatsList = [
    ChatModel('id', 'cid1', 'contactId', 'hello there', 'time'),
    ChatModel('id', 'cid', 'contactId', 'hi how are you doing?', 'time'),
    ChatModel('id', 'cid1', 'contactId',
        'I am fine ttell me about you .. how is everything going>', 'time'),
    ChatModel('id', 'cid', 'contactId',
        'Seems fine. althoug not that i care about.', 'time'),
    ChatModel('id', 'cid1', 'contactId', 'Needs alot more tweak okay?', 'time'),
    ChatModel('id', 'cid', 'contactId', 'dont worry ill get it done.', 'time'),
    ChatModel('id', 'cid1', 'contactId', 'message', 'time'),
    ChatModel('id', 'cid', 'contactId', 'message', 'time'),
    ChatModel('id', 'cid1', 'contactId', 'message', 'time'),
    ChatModel('id', 'cid', 'contactId', 'message', 'time'),
    ChatModel('id', 'cid1', 'contactId', 'message', 'time'),
    ChatModel('id', 'cid', 'contactId', 'message', 'time'),
    ChatModel('id', 'cid1', 'contactId', 'message', 'time'),
    ChatModel('id', 'cid', 'contactId', 'message', 'time'),
    ChatModel('id', 'cid1', 'contactId', 'message', 'time'),
    ChatModel('id', 'cid', 'contactId', 'message', 'time'),
    ChatModel('id', 'cid1', 'contactId', 'message', 'time'),
    ChatModel('id', 'cid', 'contactId', 'message', 'time'),
    ChatModel('id', 'cid1', 'contactId', 'message', 'time'),
    ChatModel('id', 'cid', 'contactId', 'message', 'time'),
    ChatModel('id', 'cid1', 'contactId', 'message', 'time'),
    ChatModel('id', 'cid', 'contactId', 'message', 'time'),
    ChatModel('id', 'cid1', 'contactId', 'message', 'time'),
    ChatModel('id', 'cid', 'contactId', 'message', 'time'),
    ChatModel('id', 'cid1', 'contactId', 'message', 'time'),
    ChatModel('id', 'cid', 'contactId', 'message', 'time'),
    ChatModel('id', 'cid1', 'contactId', 'message', 'time'),
    ChatModel('id', 'cid', 'contactId', 'message', 'time'),
    ChatModel('id', 'cid1', 'contactId', 'message', 'time'),
    ChatModel('id', 'cid', 'contactId', 'message', 'time'),
    ChatModel('id', 'cid1', 'contactId', 'message', 'time'),
    ChatModel('id', 'cid', 'contactId', 'message', 'time'),
  ];
  final uid = 'cid1';

  @override
  Widget build(BuildContext context) {
    final deviceSize = MediaQuery.of(context).size;
    return Scaffold(
      appBar: AppBar(),
      body: ListView.builder(
        itemBuilder: (ctx, index) => chatsList[index].uid == uid
            ? ChatItemA(message: chatsList[index].message)
            : ChatItemB(message: chatsList[index].message),
        itemCount: chatsList.length,
      ),
      bottomNavigationBar: ListTile(
        // leading: IconButton(onPressed: () => null, icon: Icon(Icons.attachment)),
        trailing: IconButton(onPressed: () => null, icon: Icon(Icons.send)),
        title: MTextField(hintText: 'Send a message'),
      ),
    );
  }
}
