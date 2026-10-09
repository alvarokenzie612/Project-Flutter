import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:testflutter/controller/list_produk_controller.dart';
import 'package:testflutter/components/mytextview.dart';
import 'package:testflutter/components/myimageview.dart';
import 'package:testflutter/routes.dart';

class ListProdukPage extends StatelessWidget {
  ListProdukPage({super.key});

  final controller = Get.put(ListProdukController());

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xFF121212),
      appBar: AppBar(
        title: const Text("ROG Store"),
        backgroundColor: const Color(0xFFD32F2F),
        foregroundColor: Colors.white,
      ),
      body: Container(
        margin: const EdgeInsets.all(10),
        child: ListView.builder(
          itemCount: controller.listProduk.length,
          itemBuilder: (context, index) {
            final produk = controller.listProduk[index];
            return GestureDetector(
              onTap: () {
                Get.toNamed(
                  Routes.detailProduk,
                  arguments: {
                    'nama_produk': produk.namaProduk,
                    'harga_produk': produk.harga,
                    'deskripsi_produk': produk.description,
                    'image_url': produk.imageProduk,
                    'review_produk': produk.reviews.toString(),
                    'rating_produk': produk.rating.toString(),
                    'nama_toko': produk.namaToko,
                  },
                );
              },
              child: Card(
                color: const Color(0xFF1E1E1E),
                margin: const EdgeInsets.only(bottom: 12),
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(12),
                  side: const BorderSide(color: Color(0xFFD32F2F), width: 1),
                ),
                child: Padding(
                  padding: const EdgeInsets.symmetric(vertical: 8.0),
                  child: ListTile(
                    leading: MyImageView(
                      imageUrl: produk.imageProduk,
                      width: 60,
                      height: 60,
                    ),
                    title: Padding(
                      padding: const EdgeInsets.only(bottom: 4.0),
                      child: MyTextView(
                        text: produk.namaProduk,
                        fontWeight: FontWeight.bold,
                        fontSize: 16,
                        color: Colors.white,
                      ),
                    ),
                    subtitle: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        MyTextView(
                          text: produk.harga,
                          color: Colors.redAccent,
                          fontWeight: FontWeight.w600,
                        ),
                        const SizedBox(height: 6),
                        Row(
                          children: [
                            MyTextView(
                              text: produk.namaToko,
                              fontSize: 12,
                              color: Colors.grey,
                            ),
                            const SizedBox(width: 4),
                            const Icon(
                              Icons.star,
                              color: Colors.amber,
                              size: 14,
                            ),
                            const SizedBox(width: 4),
                            MyTextView(
                              text:
                                  "${produk.rating} (${produk.reviews} ulasan)",
                              fontSize: 12,
                              color: Colors.grey,
                            ),
                          ],
                        ),
                      ],
                    ),
                    trailing: const Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Icon(
                          Icons.arrow_forward_ios,
                          size: 16,
                          color: Colors.redAccent,
                        ),
                      ],
                    ),
                  ),
                ),
              ),
            );
          },
        ),
      ),
    );
  }
}
