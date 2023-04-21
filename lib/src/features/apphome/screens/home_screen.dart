import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:messaging_app/src/common_widgets/appbars/bottom_navbar.dart';
import 'package:messaging_app/src/common_widgets/appbars/bottom_navbar_controller.dart';
import 'package:messaging_app/src/common_widgets/lists/chats_list.dart';
import 'package:messaging_app/src/common_widgets/lists/models/chats_list_model.dart';
import 'package:messaging_app/src/constants/colors.dart';
import 'package:messaging_app/src/constants/dimensions.dart';
import 'package:messaging_app/src/constants/enums.dart';

class AppHomeScreen extends StatelessWidget {
  static const routeName = '/apphome-screen';
  final controller = Get.put(MBottomNavBarController());

  AppHomeScreen({Key? key}) : super(key: key);

  final chatsList = [
    ChatsListModel('id1', 'John', 'hi', '1010'),
    ChatsListModel('id1', 'Tom', 'hi', '1010'),
    ChatsListModel('id1', 'Nick', 'hi', '1010'),
    ChatsListModel('id1', 'Ronald', 'hi', '1010'),
    ChatsListModel('id1', 'Vick', 'hi', '1010'),
    ChatsListModel('id1', 'Kim', 'hi', '1010'),
    ChatsListModel('id1', 'Joe', 'hi', '1010'),
    ChatsListModel('id1', 'Alley', 'hi', '1010'),
    ChatsListModel('id1', 'Fred', 'hi', '1010'),
    ChatsListModel('id1', 'Otto', 'hi', '1010'),
    ChatsListModel('id1', 'Robert', 'hi', '1010'),
  ];

  @override
  Widget build(BuildContext context) {
    final deviceSize = MediaQuery.of(context).size;
    return Scaffold(
      appBar: AppBar(
        backgroundColor: appBarColor,
        actions: [IconButton(onPressed: () => null, icon: Icon(Icons.search))],
      ),
      drawer: Drawer(),
      body: Obx(
        () {
          if (controller.selectIndex.value == BottomNav.home)
            return ChatsList(chatsListModel: chatsList);
          else
            return Center(
              child: CircularProgressIndicator(),
            );
        },
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () => null,
        backgroundColor: appPrimaryColor,
        child: Icon(
          Icons.chat,
          color: appPrimaryDarkColor.withOpacity(0.85),
        ),
      ),
      floatingActionButtonLocation: FloatingActionButtonLocation.endDocked,
      bottomNavigationBar: BottomAppBar(
        shape: CircularNotchedRectangle(),
        notchMargin: 5.5,
        child: Obx(
          () => Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Padding(
                padding: EdgeInsets.fromLTRB((deviceSize.width * 0.25) / 3.5,
                    bottomBarPadding, bottomBarPadding, bottomBarPadding),
                child: IconButton(
                  icon: Icon(
                    Icons.home,
                    color: controller.selectIndex.value == BottomNav.home
                        ? bottomBarSelected
                        : appPrimaryDarkColor,
                  ),
                  onPressed: () => controller.selectItem(BottomNav.home),
                ),
              ),
              Padding(
                padding: const EdgeInsets.all(bottomBarPadding),
                child: IconButton(
                  icon: Icon(
                    Icons.people,
                    color: controller.selectIndex.value == BottomNav.contacts
                        ? bottomBarSelected
                        : appPrimaryDarkColor,
                  ),
                  onPressed: () => controller.selectItem(BottomNav.contacts),
                ),
              ),
              Padding(
                padding: EdgeInsets.fromLTRB(bottomBarPadding, bottomBarPadding,
                    deviceSize.width * 0.275, bottomBarPadding),
                child: IconButton(
                  icon: Icon(
                    Icons.notifications,
                    color:
                        controller.selectIndex.value == BottomNav.notifications
                            ? bottomBarSelected
                            : appPrimaryDarkColor,
                  ),
                  onPressed: () =>
                      controller.selectItem(BottomNav.notifications),
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
