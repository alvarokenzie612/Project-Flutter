import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:get/get.dart';

import '../components/mytextfield.dart';
import '../components/mytextview.dart';
import '../controller/kalkulator_controller.dart';

class KalkulatorPageNew extends StatelessWidget {
  KalkulatorPageNew({super.key});

  final controller = Get.put(KalkulatorController());
  final TextEditingController txtangka1 = TextEditingController();
  final TextEditingController txtangka2 = TextEditingController();

  bool validasiInput() {
    if (txtangka1.text.isEmpty || txtangka2.text.isEmpty) {
      Get.snackbar(
        "Peringatan",
        "Field tidak boleh kosong",
        snackPosition: SnackPosition.BOTTOM,
      );
      return false;
    }
    return true;
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const MyTextView(
          text: "Kalkulator",
          color: Colors.white,
          fontSize: 20,
          fontWeight: FontWeight.bold,
        ),
      ),
      body: Padding(
        padding: const EdgeInsets.all(25.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            MyTextField(
              myHint: "Input angka 1",
              txtController: txtangka1,
              radius: 10,
              keyboardType: TextInputType.number,
              inputFormatters: [FilteringTextInputFormatter.digitsOnly],
            ),
            const SizedBox(height: 15),
            MyTextField(
              myHint: "Input angka 2",
              txtController: txtangka2,
              radius: 10,
              keyboardType: TextInputType.number,
              inputFormatters: [FilteringTextInputFormatter.digitsOnly],
            ),
            const SizedBox(height: 25),
            Wrap(
              spacing: 10,
              runSpacing: 10,
              alignment: WrapAlignment.center,
              children: [
                _tombolKalkulator("Tambah", () {
                  if (validasiInput()) {
                    controller.tambah(
                      double.parse(txtangka1.text),
                      double.parse(txtangka2.text),
                    );
                  }
                }),
                _tombolKalkulator("Kurang", () {
                  if (validasiInput()) {
                    controller.kurang(
                      double.parse(txtangka1.text),
                      double.parse(txtangka2.text),
                    );
                  }
                }),
                _tombolKalkulator("Kali", () {
                  if (validasiInput()) {
                    controller.kali(
                      double.parse(txtangka1.text),
                      double.parse(txtangka2.text),
                    );
                  }
                }),
                _tombolKalkulator("Bagi", () {
                  if (validasiInput()) {
                    controller.bagi(
                      double.parse(txtangka1.text),
                      double.parse(txtangka2.text),
                    );
                  }
                }),
              ],
            ),

            const SizedBox(height: 40),

            const MyTextView(
              text: "Hasil Perhitungan:",
              fontSize: 16,
              color: Colors.grey,
            ),

            Obx(
              () => MyTextView(
                text: controller.hasilHitung.toString(),
                fontSize: 45,
                fontWeight: FontWeight.bold,
                color: Colors.blueAccent,
              ),
            ),
          ],
        ),
      ),
    );
  }

  Widget _tombolKalkulator(String teks, VoidCallback aksi) {
    return ElevatedButton(
      style: ElevatedButton.styleFrom(
        backgroundColor: Colors.blueAccent,
        foregroundColor: Colors.white,
        padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 12),
        shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(10)),
      ),
      onPressed: aksi,
      child: MyTextView(text: teks, fontSize: 16, fontWeight: FontWeight.bold),
    );
  }
}
