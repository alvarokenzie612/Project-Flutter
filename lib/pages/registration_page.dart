import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:flutter/services.dart';

import '../components/mytextfield.dart';
import '../components/mytextview.dart';
import '../components/mybutton.dart';
import '../controller/registration_controller.dart';

class RegistrationPage extends StatelessWidget {
  const RegistrationPage({super.key});

  @override
  Widget build(BuildContext context) {
    final controller = Get.put(RegistrationController());

    return Scaffold(
      appBar: AppBar(title: MyTextView(text: "Registration")),
      body: Padding(
        padding: const EdgeInsets.all(16),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            MyTextField(
              myHint: "Input nama",
              txtController: controller.txtNama,
              radius: 5,
            ),

            const SizedBox(height: 10),

            MyTextField(
              myHint: "Input alamat",
              txtController: controller.txtAlamat,
              radius: 5,
            ),

            const SizedBox(height: 10),

            Obx(
              () => DropdownButtonFormField<String>(
                initialValue: controller.jenisKelamin.value == ''
                    ? null
                    : controller.jenisKelamin.value,
                decoration: const InputDecoration(
                  hintText: "Pilih jenis kelamin",
                  border: OutlineInputBorder(),
                ),
                alignment: Alignment.centerLeft,
                items: const [
                  DropdownMenuItem(
                    value: "Laki-laki",
                    child: Text("Laki-laki"),
                  ),
                  DropdownMenuItem(
                    value: "Perempuan",
                    child: Text("Perempuan"),
                  ),
                ],
                onChanged: (value) {
                  controller.jenisKelamin.value = value!;
                },
              ),
            ),

            const SizedBox(height: 10),

            MyTextField(
              myHint: "Input No WA",
              txtController: controller.txtNoWa,
              radius: 5,
              keyboardType: TextInputType.phone,
              inputFormatters: [FilteringTextInputFormatter.digitsOnly],
            ),

            const SizedBox(height: 10),

            MyTextField(
              myHint: "Input Email",
              txtController: controller.txtEmail,
              radius: 5,
            ),

            const SizedBox(height: 10),

            Center(
              child: MyButton(
                label: "Send",
                onPressed: () {
                  controller.sendData();
                },
              ),
            ),
          ],
        ),
      ),
    );
  }
}
