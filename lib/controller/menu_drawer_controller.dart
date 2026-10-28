import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:testflutter/menu/home_page.dart';
import 'package:testflutter/menu/history_page.dart';
import 'package:testflutter/menu/profile_page.dart';

class MenuDrawerController extends GetxController {
  final RxInt selectedIndex = 0.obs;

  void changeIndex(int index) {
    selectedIndex.value = index;
  }

  final List<Widget> listPages = [HomePage(), HistoryPage(), ProfilePage()];
}
