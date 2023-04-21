import 'package:get/get.dart';
import 'package:messaging_app/src/constants/enums.dart';

class MBottomNavBarController extends GetxController {
  Rx<BottomNav> selectIndex = BottomNav.home.obs;
  selectItem(BottomNav bottomNav) => selectIndex.value = bottomNav;
}