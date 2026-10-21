import 'package:get/get.dart';
import 'package:flutter/material.dart';
import '../menu/home_page.dart';
import '../menu/history_page.dart';
import '../menu/profile.dart';

class MainMenuController extends GetxController {
  final RxInt selectedIndex = 0.obs;

  void changePage(int index) {
    selectedIndex.value = index;
  }

  List<Widget> listPages = [
    HomePage(),
    HistoryPage(),
    ProfilePage(),
  ];
}