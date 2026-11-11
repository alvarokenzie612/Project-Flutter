import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:http/http.dart' as http;
import 'package:testflutter/routes.dart';
import 'package:testflutter/models/login_model.dart';

class LoginCloneFixController extends GetxController {
  TextEditingController txtUsername = TextEditingController();
  TextEditingController txtPassword = TextEditingController();

  var isLoading = false.obs;

  var loginModel = Rxn<LoginModel>();

  void login() async {
    if (txtUsername.text.toString().isEmpty ||
        txtPassword.text.toString().isEmpty) {
      Get.snackbar("Error", "Username dan Password harus terisi!");
    } else {
      try {
        isLoading.value = true;
        final url = Uri.parse("https://mediadwi.com/api/latihan/login");

        final response = await http.post(
          url,
          body: {
            "username": txtUsername.text.toString(),
            "password": txtPassword.text.toString(),
          },
        );

        isLoading.value = false;

        if (response.statusCode == 200) {
          loginModel.value = loginModelFromJson(response.body);

          if (loginModel.value?.status == true) {
            Get.snackbar("Berhasil", loginModel.value!.message.toString());
            Get.offAllNamed(Routes.menuDrawer);
          } else {
            Get.snackbar("Gagal", loginModel.value!.message.toString());
          }
        } else {
          Get.snackbar("Gagal", "Cek Internet Anda");
        }
      } catch (e) {
        isLoading.value = false;
        Get.snackbar("Gagal", e.toString());
      }
    }
  }
}
