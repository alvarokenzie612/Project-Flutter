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
    return SafeArea(
      child: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            // HEADER SAMBUTAN TOKO
            Padding(
              padding: const EdgeInsets.fromLTRB(16, 20, 16, 10),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: const [
                      Text(
                        'ROG Store Exclusive',
                        style: TextStyle(
                          fontSize: 22,
                          fontWeight: FontWeight.bold,
                          color: Colors.white,
                        ),
                      ),
                      SizedBox(height: 4),
                      Text(
                        'Performa Gaming Tanpa Batas',
                        style: TextStyle(fontSize: 13, color: Colors.grey),
                      ),
                    ],
                  ),
                  const CircleAvatar(
                    backgroundColor: Color(0xFF1E1E1E),
                    child: Icon(Icons.sports_esports, color: Color(0xFFD32F2F)),
                  ),
                ],
              ),
            ),
            const SizedBox(height: 10),

            // LIST PRODUK HORIZONTAL
            SizedBox(
              height: 250,
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
                          left: index == 0 ? 16 : 8,
                          right: index == produkController.listProduk.length - 1
                              ? 16
                              : 8,
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
                              const SizedBox(height: 10),
                              MyTextView(
                                text: produk.namaProduk,
                                fontWeight: FontWeight.bold,
                                fontSize: 15,
                                color: Colors.white,
                              ),
                              const SizedBox(height: 2),
                              MyTextView(
                                text: produk.harga,
                                color: Colors.redAccent,
                                fontWeight: FontWeight.w600,
                                fontSize: 13,
                              ),
                              const Spacer(),
                              Row(
                                children: [
                                  const Icon(
                                    Icons.star,
                                    color: Colors.amber,
                                    size: 13,
                                  ),
                                  const SizedBox(width: 4),
                                  Expanded(
                                    child: MyTextView(
                                      text:
                                          "${produk.rating} (${produk.reviews})",
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
