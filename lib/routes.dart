import 'package:get/get.dart';
import 'package:testflutter/pages/confirm_registration_page.dart';
import 'package:testflutter/pages/registration_page.dart';
import 'package:testflutter/pages/list_produk_page.dart';
import 'package:testflutter/pages/detail_produk_page.dart';
import 'package:testflutter/pages/main_menu_page.dart';
import 'package:testflutter/pages/menu_drawer_page.dart';
import 'package:testflutter/menu/home_page.dart';
import 'package:testflutter/menu/profile_page.dart';
import 'package:testflutter/menu/history_page.dart';

class Routes {
  static const String registration = "/registration";
  static const String confirmRegistration = "/confirmRegistration";
  static const String listProduk = "/ListProduk";
  static const String mainmenuPage = "/mainmenupage";
  static const String detailProduk = "/detailProduk";
  static const String menuDrawer = "/menudrawer";
  static const String homePage = "/homepage";

  static final myPages = [
    GetPage(name: registration, page: () => RegistrationPage()),
    GetPage(name: confirmRegistration, page: () => ConfirmRegistrationPage()),
    GetPage(name: listProduk, page: () => ListProdukPage()),
    GetPage(name: mainmenuPage, page: () => MainMenuPage()),
    GetPage(name: detailProduk, page: () => DetailProdukPage()),
    GetPage(name: menuDrawer, page: () => MenuDrawerPage()),
    GetPage(name: menuDrawer, page: () => HomePage()),
    GetPage(name: menuDrawer, page: () => HistoryPage()),
    GetPage(name: menuDrawer, page: () => ProfilePage()),
  ];
}
