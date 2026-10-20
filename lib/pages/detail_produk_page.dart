import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:testflutter/controller/list_produk_detail_controller.dart';
import 'package:testflutter/components/mytextview.dart';
import 'package:testflutter/components/myimageview.dart';

//import 'package:testflutter/components/mybutton.dart';

class DetailProdukPage extends StatelessWidget {
  DetailProdukPage({super.key});

  final detailController = Get.put(ListProdukDetailController());

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xFF121212),
      appBar: AppBar(
        title: const Text("Detail Produk"),
        backgroundColor: const Color(0xFFD32F2F),
        foregroundColor: Colors.white,
      ),
      body: Padding(
        padding: const EdgeInsets.all(16),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Center(
              child: MyImageView(
                imageUrl: detailController.imageUrl,
                width: double.infinity,
                height: 250,
                borderRadius: 16,
                fit: BoxFit.contain,
              ),
            ),
            const SizedBox(height: 24),
            MyTextView(
              text: detailController.namaProduk,
              fontSize: 26,
              fontWeight: FontWeight.bold,
              color: Colors.white,
            ),
            const SizedBox(height: 8),
            MyTextView(
              text: detailController.hargaProduk,
              fontSize: 22,
              color: Colors.redAccent,
              fontWeight: FontWeight.w600,
            ),
            const SizedBox(height: 20),
            Row(
              children: [
                const Icon(Icons.store, size: 22, color: Colors.grey),
                const SizedBox(width: 10),
                MyTextView(
                  text: detailController.namaToko,
                  fontSize: 16,
                  color: Colors.grey,
                ),
              ],
            ),
            const SizedBox(height: 12),
            Row(
              children: [
                const Icon(Icons.star, size: 22, color: Colors.amber),
                const SizedBox(width: 10),
                MyTextView(
                  text:
                      "${detailController.ratingProduk} (${detailController.reviewProduk} ulasan)",
                  fontSize: 16,
                  color: Colors.grey,
                ),
              ],
            ),
            const SizedBox(height: 20),
            const MyTextView(
              text: "Deskripsi & Spesifikasi",
              fontSize: 18,
              fontWeight: FontWeight.bold,
              color: Colors.white,
            ),
            const SizedBox(height: 12),
            Container(
              width: double.infinity,
              padding: const EdgeInsets.all(16),
              decoration: BoxDecoration(
                color: const Color(0xFF1E1E1E),
                borderRadius: BorderRadius.circular(12),
                border: Border.all(color: const Color(0xFFD32F2F), width: 1),
              ),
              child: MyTextView(
                text: detailController.deskripsiProduk,
                fontSize: 15,
                color: Colors.white70,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
