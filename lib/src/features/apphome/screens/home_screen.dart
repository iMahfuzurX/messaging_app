import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:messaging_app/src/common_widgets/appbars/bottom_navbar.dart';
import 'package:messaging_app/src/common_widgets/appbars/bottom_navbar_controller.dart';
import 'package:messaging_app/src/common_widgets/lists/chats_list.dart';
import 'package:messaging_app/src/common_widgets/lists/models/chats_list_model.dart';
import 'package:messaging_app/src/constants/colors.dart';
import 'package:messaging_app/src/constants/dimensions.dart';
import 'package:messaging_app/src/constants/enums.dart';
import 'package:messaging_app/src/features/apphome/models/notifications_model.dart';
import 'package:messaging_app/src/features/apphome/screens/notifications.dart';

class AppHomeScreen extends StatelessWidget {
  static const routeName = '/apphome-screen';
  final controller = Get.put(MBottomNavBarController());
  final _scaffoldKey = GlobalKey<ScaffoldState>();

  AppHomeScreen({Key? key}) : super(key: key);

  final chatsList = [
    ChatsListModel('id1', 'John', 'Hi there,', '1010'),
    ChatsListModel('id1', 'Tom', 'Ok thanks', '1010'),
    ChatsListModel('id1', 'Nick', 'Not yet.', '1010'),
    ChatsListModel('id1', 'Ronald', 'It\'s late already', '1010'),
    ChatsListModel('id1', 'Vick', 'No thanks', '1010'),
    ChatsListModel('id1', 'Kim', 'You there?', '1010'),
    ChatsListModel('id1', 'Joe', 'hi', '1010'),
    ChatsListModel('id1', 'Alley', 'hi', '1010'),
    ChatsListModel('id1', 'Fred', 'hi', '1010'),
    ChatsListModel('id1', 'Otto', 'hi', '1010'),
    ChatsListModel('id1', 'Robert', 'hi', '1010'),
  ];
  final notificationList = [
    NotificationsModel('nid1', 'timeStamp', false, 'userId', 'message1'),
    NotificationsModel('nid2', 'timeStamp', false, 'userId', 'message2'),
    NotificationsModel('nid3', 'timeStamp', false, 'userId', 'messag3'),
    NotificationsModel('nid4', 'timeStamp', false, 'userId', 'message4'),
    NotificationsModel('nid5', 'timeStamp', false, 'userId', 'message5'),
    NotificationsModel('nid6', 'timeStamp', false, 'userId', 'message6')
  ];

  _appBar(width, height) => PreferredSize(
      child: Stack(
        children: [
          Container(
            child: Center(
              child: Obx(() {
                if (controller.selectIndex.value == BottomNav.home)
                  return Text(
                    './ Home',
                    style:
                        GoogleFonts.ubuntu(fontSize: 20, color: appColorWhite),
                  );
                else if (controller.selectIndex.value == BottomNav.contacts)
                  return Text(
                    './ Contacts',
                    style: TextStyle(color: Colors.white, fontSize: 20),
                  );
                else
                  return Text(
                    './ Notifications',
                    style: TextStyle(fontSize: 20, color: Colors.white),
                  );
              }),
            ),
            color: appPrimaryDarkColor.withOpacity(0.9),
            width: width,
            height: height + 75,
          ),
          Container(),
          Positioned(
            left: 20,
            right: 20,
            top: 100,
            child: AppBar(
              backgroundColor: appPrimaryDarkColor,
              leading: IconButton(
                icon: Icon(Icons.menu),
                onPressed: () => _scaffoldKey.currentState?.openDrawer(),
              ),
              primary: false,
              title: TextField(
                style: TextStyle(color: appColorWhite),
                decoration: InputDecoration(
                    hintText: 'Search',
                    border: InputBorder.none,
                    hintStyle: TextStyle(color: Colors.white)),
              ),
              actions: [
                IconButton(onPressed: () => null, icon: Icon(Icons.search)),
                IconButton(
                    onPressed: () => null, icon: Icon(Icons.notifications)),
              ],
            ),
          )
        ],
      ),
      preferredSize: Size(width, height + 80));

  @override
  Widget build(BuildContext context) {
    final deviceSize = MediaQuery.of(context).size;
    return Scaffold(
      key: _scaffoldKey,
      appBar: _appBar(deviceSize.width, AppBar().preferredSize.height),
      drawer: Drawer(),
      body: Obx(
        () {
          if (controller.selectIndex.value == BottomNav.home)
            return ChatsList(chatsListModel: chatsList);
          else if (controller.selectIndex.value == BottomNav.notifications)
            return MNotificationWidget(notificationList: notificationList);
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
