import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../controller/confirm_registration_controller.dart';
import '../components/mytextview.dart';

class ConfirmRegistrationPage extends StatelessWidget {
  const ConfirmRegistrationPage({super.key});

  @override
  Widget build(BuildContext context) {
    final controller = Get.put(ConfirmRegistrationController());

    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        title: MyTextView(
          text: "Confirm Registration",
          fontSize: 20,
          fontWeight: FontWeight.w600,
          color: Colors.white,
        ),
        backgroundColor: Colors.blue,
        elevation: 0,
        iconTheme: const IconThemeData(color: Colors.white),
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(24.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: [
              const Center(
                child: Icon(Icons.check_circle, size: 80, color: Colors.green),
              ),
              const SizedBox(height: 16),
              Center(
                child: MyTextView(
                  text: "Data Registrasi",
                  fontSize: 22,
                  fontWeight: FontWeight.bold,
                ),
              ),
              const SizedBox(height: 4),
              Center(
                child: MyTextView(
                  text: "Periksa kembali data kamu",
                  fontSize: 14,
                  color: Colors.grey,
                ),
              ),
              const SizedBox(height: 32),

              _buildInfoRow("Nama", controller.nama),
              const Divider(height: 30),
              _buildInfoRow("Alamat", controller.alamat),
              const Divider(height: 30),
              _buildInfoRow("Jenis Kelamin", controller.jenisKelamin),
              const Divider(height: 30),
              _buildInfoRow("No. WhatsApp", controller.noWa),
              const Divider(height: 30),
              _buildInfoRow("Email", controller.email),

              const SizedBox(height: 40),

              SizedBox(
                height: 50,
                child: ElevatedButton(
                  onPressed: () {
                    Get.back();
                  },
                  style: ElevatedButton.styleFrom(
                    backgroundColor: Colors.blue,
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(8),
                    ),
                    elevation: 0,
                  ),
                  child: const Text(
                    "Oke",
                    style: TextStyle(
                      fontSize: 16,
                      fontWeight: FontWeight.bold,
                      color: Colors.white,
                    ),
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }

  // Widget helper agar kode lebih rapi
  Widget _buildInfoRow(String label, String value) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        MyTextView(text: label, fontSize: 13, color: Colors.grey),
        const SizedBox(height: 4),
        MyTextView(text: value, fontSize: 16, fontWeight: FontWeight.w600),
      ],
    );
  }
}
