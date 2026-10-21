import 'package:testflutter/models/produk_model.dart';
import 'package:get/get.dart';

class ListProdukController extends GetxController {
  final List<ProdukModel> produkAwal = [];

  final RxList<ProdukModel> listProduk = <ProdukModel>[
    ProdukModel(
      namaProduk: "ROG Phone 9",
      harga: "Rp 15.000.000",
      description: "HP gaming flagship dengan performa maksimal.\n\nSpesifikasi:\nChipset: Snapdragon 8 Gen 3\nRAM: 16GB LPDDR5X\nStorage: 512GB UFS 4.0\nLayar: 6.78 inch AMOLED 165Hz\nBaterai: 6000 mAh (65W Fast Charging)\nFitur: AirTrigger",
      imageProduk: "assets/rog_9_phone.png",
      reviews: 450,
      rating: 4.9,
      namaToko: "ROG Flagship Store",
    ),
    ProdukModel(
      namaProduk: "ROG Zephyrus G14",
      harga: "Rp 32.000.000",
      description: "Laptop gaming ringkas dengan layar AniMe Matrix.\n\nSpesifikasi:\nProsesor: AMD Ryzen 9 8945HS\nGPU: NVIDIA GeForce RTX 4060\nRAM: 32GB LPDDR5X\nStorage: 1TB PCIe 4.0 SSD\nLayar: 14 inch 3K OLED 120Hz\nBaterai: 73WHrs",
      imageProduk: "assets/asuslaptop.png",
      reviews: 120,
      rating: 4.8,
      namaToko: "Asus Official",
    ),  
    ProdukModel(
      namaProduk: "ROG Ally",
      harga: "Rp 11.000.000",
      description: "Konsol gaming handheld Windows untuk game AAA.\n\nSpesifikasi:\nProsesor: AMD Ryzen Z1 Extreme\nGPU: AMD Radeon Graphics\nRAM: 16GB LPDDR5\nStorage: 512GB PCIe 4.0 SSD\nLayar: 7 inch FHD 120Hz",
      imageProduk: "assets/rog_ally.png",
      reviews: 300,
      rating: 4.7,
      namaToko: "ROG Store",
    ),
    ProdukModel(
      namaProduk: "Asus Zenbook 14",
      harga: "Rp 18.000.000",
      description: "Laptop produktivitas elegan dengan layar OLED.\n\nSpesifikasi:\nProsesor: Intel Core Ultra 7 155H\nGPU: Intel Arc Graphics\nRAM: 16GB LPDDR5X\nStorage: 1TB PCIe 4.0 SSD\nLayar: 14 inch OLED 3K 120Hz",
      imageProduk: "assets/asuszenbook.png",
      reviews: 200,
      rating: 4.8,
      namaToko: "Asus Official",
    ),
    ProdukModel(
      namaProduk: "ROG Rapture Router",
      harga: "Rp 6.000.000",
      description: "Router gaming WiFi 6E untuk turnamen e-sports.\n\nSpesifikasi:\nProsesor: 2.0 GHz quad-core\nMemori: 1GB RAM\nKecepatan: Hingga 11000 Mbps\nAntena: 8x external antenna",
      imageProduk: "assets/asusrouter.png",
      reviews: 85,
      rating: 4.9,
      namaToko: "ROG Accessories",
    ),
  ].obs;

  @override
  void onInit() {
    super.onInit();
    produkAwal.addAll(listProduk);
  }

  void reload() {
    listProduk.assignAll(produkAwal);
  }
}
