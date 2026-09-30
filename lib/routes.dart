import 'package:get/get_navigation/src/routes/get_route.dart';
import 'package:testflutter/pages/confirm_registration_page.dart';
import 'package:testflutter/pages/registration_page.dart';

class Routes {
  //list pages yang ada di aplikasi
  static const String registration = "/registration";
  static const String confirmRegistration = "/confirmRegistration";
  //dll login, kalkulator

  //tampung ke dalam array yang akan dipasang ke main.dart
  static final myPages = [
    GetPage(name: registration, page: () => RegistrationPage()),
    GetPage(name: confirmRegistration, page: () => ConfirmRegistrationPage()),
    //other pages here dll
  ];
}
