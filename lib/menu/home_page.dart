import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:testflutter/controller/list_produk_controller.dart';
import 'package:testflutter/components/mytextview.dart';
import 'package:testflutter/components/myimageview.dart';
import 'package:testflutter/routes.dart';

class HomePage extends StatelessWidget {
  HomePage({super.key});

  final produkController = Get.put(ListProdukController());

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xFF121212),
      body: SafeArea(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const Padding(
              padding: EdgeInsets.all(16.0),
              child: Text(
                'Halaman Home',
                style: TextStyle(
                  fontSize: 24,
                  fontWeight: FontWeight.bold,
                  color: Colors.white,
                ),
              ),
            ),
            // ignore: sized_box_for_whitespace
            Container(
              height: 240,
              child: Obx(
                () => ListView.builder(
                  scrollDirection: Axis.horizontal,
                  itemCount: produkController.listProduk.length,
                  itemBuilder: (context, index) {
                    final produk = produkController.listProduk[index];
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
                        margin: EdgeInsets.only(
                          left: 16,
                          right: index == produkController.listProduk.length - 1
                              ? 16
                              : 0,
                        ),
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(12),
                          side: const BorderSide(
                            color: Color(0xFFD32F2F),
                            width: 1,
                          ),
                        ),
                        child: Container(
                          width: 160,
                          padding: const EdgeInsets.all(12),
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Center(
                                child: MyImageView(
                                  imageUrl: produk.imageProduk,
                                  width: 100,
                                  height: 100,
                                ),
                              ),
                              const SizedBox(height: 12),
                              MyTextView(
                                text: produk.namaProduk,
                                fontWeight: FontWeight.bold,
                                fontSize: 16,
                                color: Colors.white,
                              ),
                              const SizedBox(height: 4),
                              MyTextView(
                                text: produk.harga,
                                color: Colors.redAccent,
                                fontWeight: FontWeight.w600,
                                fontSize: 14,
                              ),
                              const Spacer(),
                              Row(
                                children: [
                                  const Icon(
                                    Icons.star,
                                    color: Colors.amber,
                                    size: 14,
                                  ),
                                  const SizedBox(width: 4),
                                  Expanded(
                                    child: MyTextView(
                                      text:
                                          "${produk.rating} (${produk.reviews}) - ${produk.namaToko}",
                                      fontSize: 10,
                                      color: Colors.grey,
                                    ),
                                  ),
                                ],
                              ),
                            ],
                          ),
                        ),
                      ),
                    );
                  },
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
