import 'package:get/get.dart';

class ListProdukDetailController extends GetxController {
  late String namaProduk;
  late String hargaProduk;
  late String namaToko;
  late String deskripsiProduk;
  late String imageUrl;
  late String reviewProduk;
  late String ratingProduk;

  @override
  void onInit() {
    super.onInit();

    final arguments = Get.arguments;

    namaProduk = arguments['nama_produk'];
    hargaProduk = arguments['harga_produk'];
    deskripsiProduk = arguments['deskripsi_produk'];
    imageUrl = arguments['image_url'];
    reviewProduk = arguments['review_produk'];
    ratingProduk = arguments['rating_produk'];
    namaToko = arguments['nama_toko'];
  }
}
