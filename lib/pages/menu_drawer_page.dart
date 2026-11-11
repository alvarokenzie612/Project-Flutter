import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:testflutter/controller/menu_drawer_controller.dart';

class MenuDrawerPage extends StatelessWidget {
  MenuDrawerPage({super.key});

  final menuDrawerController = Get.put(MenuDrawerController());

  final List<String> judulHalaman = [
    'ROG Store',
    'History',
    'Profile',
    'LaLiga',
  ];

  @override
  Widget build(BuildContext context) {
    return Obx(
      () => Scaffold(
        backgroundColor: const Color(0xFF121212),
        appBar: AppBar(
          title: Text(judulHalaman[menuDrawerController.selectedIndex.value]),
          backgroundColor: const Color(0xFF1E1E1E),
          foregroundColor: Colors.white,
        ),
        drawer: Drawer(
          backgroundColor: const Color(0xFF1E1E1E),
          child: ListView(
            padding: EdgeInsets.zero,
            children: [
              const DrawerHeader(
                decoration: BoxDecoration(color: Color(0xFFD32F2F)),
                child: Text(
                  'Menu Utama',
                  style: TextStyle(
                    color: Colors.white,
                    fontSize: 24,
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ),
              ListTile(
                leading: const Icon(Icons.home, color: Colors.white),
                title: const Text(
                  'Home',
                  style: TextStyle(color: Colors.white),
                ),
                onTap: () {
                  Get.back();
                  menuDrawerController.changeIndex(0);
                },
              ),
              ListTile(
                leading: const Icon(Icons.history, color: Colors.white),
                title: const Text(
                  'History',
                  style: TextStyle(color: Colors.white),
                ),
                onTap: () {
                  Get.back();
                  menuDrawerController.changeIndex(1);
                },
              ),
              ListTile(
                leading: const Icon(Icons.person, color: Colors.white),
                title: const Text(
                  'Profile',
                  style: TextStyle(color: Colors.white),
                ),
                onTap: () {
                  Get.back();
                  menuDrawerController.changeIndex(2);
                },
              ),
              ListTile(
                leading: const Icon(Icons.sports_soccer, color: Colors.white),
                title: const Text(
                  'LaLiga',
                  style: TextStyle(color: Colors.white),
                ),
                onTap: () {
                  Get.back();
                  menuDrawerController.changeIndex(3);
                },
              ),
            ],
          ),
        ),
        body: IndexedStack(
          index: menuDrawerController.selectedIndex.value,
          children: menuDrawerController.listPages,
        ),
      ),
    );
  }
}
