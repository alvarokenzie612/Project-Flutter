import '../controller/confirm_registration_controller.dart';

import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../components/mybutton.dart';
import '../components/mytextview.dart';

class ConfirmRegistrationPage extends StatelessWidget {
  const ConfirmRegistrationPage({super.key});

  @override
  Widget build(BuildContext context) {
    final controller = Get.put(ConfirmRegistrationController());

    return Scaffold(
      appBar: AppBar(title: Text("Confirm Registration")),
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          MyTextView(text: "Nama : ${controller.nama}"),

          MyTextView(text: "Alamat : ${controller.alamat}"),

          MyTextView(text: "Jenis Kelamin : ${controller.jenisKelamin}"),

          MyTextView(text: "No WA : ${controller.noWa}"),

          MyTextView(text: "Email : ${controller.email}"),

          Center(
            child: MyButton(
              label: "Oke",
              onPressed: () {
                Get.back();
              },
            ),
          ),
        ],
      ),
    );
  }
}
