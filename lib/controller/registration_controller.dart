import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:testflutter/routes.dart';

class RegistrationController extends GetxController {
  TextEditingController txtNama = TextEditingController();
  TextEditingController txtAlamat = TextEditingController();
  TextEditingController txtNoWa = TextEditingController();
  TextEditingController txtEmail = TextEditingController();

  RxString jenisKelamin = ''.obs;

  void sendData() {
    Get.toNamed(
      Routes.confirmRegistration,
      arguments: {
        'name': txtNama.text,
        'alamat': txtAlamat.text,
        'jenis_kelamin': jenisKelamin.value,
        'no_wa': txtNoWa.text,
        'email': txtEmail.text,
      },
    );
  }
}
