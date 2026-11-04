import 'dart:convert';

import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:http/http.dart' as http;
import 'package:testflutter/routes.dart';

class LoginCloneFixController extends GetxController {
  TextEditingController txtUsername = TextEditingController();
  TextEditingController txtPassword = TextEditingController();

  var isLoading = false.obs;

  //method hit API
  void login() async {
    if (txtUsername.text.toString().isEmpty ||
        txtPassword.text.toString().isEmpty) {
      Get.snackbar("Error", "Username dan Password harus terisi!");
    } else {
      try {
        isLoading.value =
            true; //sebagai tanda di page nya muncul loading widget
        final url = Uri.parse("https://mediadwi.com/api/latihan/login");

        final response = await http.post(
          url,
          body: {
            "username": txtUsername.text.toString(),
            "password": txtPassword.text.toString(),
          },
        );

        isLoading.value =
            false; //sebagai tanda di page nya hilang loading widget
        if (response.statusCode == 200) {
          final data = jsonDecode(response.body);
          if (data['status'] == true) {
            Get.snackbar("Berhasil", data['message']);
            Get.toNamed(Routes.menuDrawer);
          } else {
            Get.snackbar("Gagal", data['message']);
          }
        } else {
          Get.snackbar("Gagal", "Cek Internet Anda");
        }
      } catch (e) {
        isLoading.value = false;
        Get.snackbar("Gagal", "Terjadi kesalahan saat login!");
      }
    }
  }
}
