import 'package:get/get.dart';

class ConfirmRegistrationController extends GetxController {
  late String nama;
  late String alamat;
  late String jenisKelamin;
  late String noWa;
  late String email;

  @override
  void onInit() {
    super.onInit();

    final arguments = Get.arguments;

    nama = arguments['name'];
    alamat = arguments['alamat'];
    jenisKelamin = arguments['jenis_kelamin'];
    noWa = arguments['no_wa'];
    email = arguments['email'];
  }
}
