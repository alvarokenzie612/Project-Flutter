import 'package:get/get.dart';
import 'package:testflutter/pages/confirm_registration_page.dart';
import 'package:testflutter/pages/registration_page.dart';
import 'package:testflutter/pages/list_produk_page.dart';
import 'package:testflutter/pages/detail_produk_page.dart';

class Routes {
  static const String registration = "/registration";
  static const String confirmRegistration = "/confirmRegistration";
  static const String listProduk = "/ListProduk";
  static const String detailProduk = "/detailProduk";

  static final myPages = [
    GetPage(name: registration, page: () => RegistrationPage()),
    GetPage(name: confirmRegistration, page: () => ConfirmRegistrationPage()),
    GetPage(name: listProduk, page: () => ListProdukPage()),
    GetPage(name: detailProduk, page: () => DetailProdukPage()),
  ];
}