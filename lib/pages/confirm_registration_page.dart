import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:testflutter/controller/confirm_registration_controller.dart';
import 'package:testflutter/components/mytextview.dart';
import 'package:testflutter/components/mybutton.dart';

class ConfirmRegistrationPage extends StatelessWidget {
  const ConfirmRegistrationPage({super.key});

  @override
  Widget build(BuildContext context) {
    final controller = Get.put(ConfirmRegistrationController());

    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        title: const MyTextView(
          text: "Konfirmasi Registrasi",
          fontSize: 20,
          fontWeight: FontWeight.w600,
          color: Colors.white,
        ),
        backgroundColor: Colors.blue,
        elevation: 0,
        iconTheme: const IconThemeData(color: Colors.white),
      ),
      body: SingleChildScrollView(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            const SizedBox(height: 10),
            Container(
              padding: const EdgeInsets.all(16),
              decoration: BoxDecoration(
                color: Colors.grey.shade100,
                borderRadius: BorderRadius.circular(8),
                border: Border.all(color: Colors.blue.shade200),
              ),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  const MyTextView(
                    text: "Data Registrasi Berhasil Dikirim",
                    fontSize: 16,
                    fontWeight: FontWeight.bold,
                    color: Colors.blue,
                  ),
                  const Divider(height: 24),
                  MyTextView(
                    text: "Nama: ${controller.nama}",
                    fontSize: 15,
                    color: Colors.black87,
                  ),
                  const SizedBox(height: 10),
                  MyTextView(
                    text: "Alamat: ${controller.alamat}",
                    fontSize: 15,
                    color: Colors.black87,
                  ),
                  const SizedBox(height: 10),
                  MyTextView(
                    text: "Jenis Kelamin: ${controller.jenisKelamin}",
                    fontSize: 15,
                    color: Colors.black87,
                  ),
                  const SizedBox(height: 10),
                  MyTextView(
                    text: "No. WhatsApp: ${controller.noWa}",
                    fontSize: 15,
                    color: Colors.black87,
                  ),
                  const SizedBox(height: 10),
                  MyTextView(
                    text: "Email: ${controller.email}",
                    fontSize: 15,
                    color: Colors.black87,
                  ),
                ],
              ),
            ),
            const SizedBox(height: 30),
            SizedBox(
              width: double.infinity,
              child: MyButton(
                text: "Kembali",
                backgroundColor: Colors.blue,
                textColor: Colors.white,
                onPressed: () {
                  Get.back();
                },
              ),
            ),
          ],
        ),
      ),
    );
  }
}
