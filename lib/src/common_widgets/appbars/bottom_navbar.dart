import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:messaging_app/src/common_widgets/appbars/bottom_navbar_controller.dart';
import 'package:messaging_app/src/constants/colors.dart';

import '../../constants/dimensions.dart';
import '../../constants/enums.dart';

class MBottomNavBar extends StatelessWidget {
  final controller = Get.put(MBottomNavBarController());

  MBottomNavBar({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final deviceSize = MediaQuery.of(context).size;
    return BottomAppBar(
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
                  color: controller.selectIndex.value == BottomNav.notifications
                      ? bottomBarSelected
                      : appPrimaryDarkColor,
                ),
                onPressed: () => controller.selectItem(BottomNav.notifications),
              ),
            )
          ],
        ),
      ),
    );
  }
}
