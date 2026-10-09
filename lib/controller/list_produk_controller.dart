import 'package:testflutter/models/produk_model.dart';
import 'package:get/get.dart';

class ListProdukController extends GetxController {
  List<ProdukModel> listProduk = [
    ProdukModel(
      namaProduk: "ROG Phone 9",
      harga: "Rp 15.000.000",
      description: "HP gaming flagship dengan performa maksimal.\n\nSpesifikasi:\n- Chipset: Snapdragon 8 Gen 3\n- RAM: 16GB LPDDR5X\n- Storage: 512GB UFS 4.0\n- Layar: 6.78 inch AMOLED 165Hz\n- Baterai: 6000 mAh (65W Fast Charging)\n- Fitur: AirTrigger",
      imageProduk: "assets/rog_9_phone.png",
      reviews: 450,
      rating: 4.9,
      namaToko: "ROG Flagship Store",
    ),
    ProdukModel(
      namaProduk: "ROG Zephyrus G14",
      harga: "Rp 32.000.000",
      description: "Laptop gaming ringkas dengan layar AniMe Matrix.\n\nSpesifikasi:\n- Prosesor: AMD Ryzen 9 8945HS\n- GPU: NVIDIA GeForce RTX 4060\n- RAM: 32GB LPDDR5X\n- Storage: 1TB PCIe 4.0 SSD\n- Layar: 14 inch 3K OLED 120Hz\n- Baterai: 73WHrs",
      imageProduk: "assets/asuslaptop.png",
      reviews: 120,
      rating: 4.8,
      namaToko: "Asus Official",
    ),
    ProdukModel(
      namaProduk: "ROG Ally",
      harga: "Rp 11.000.000",
      description: "Konsol gaming handheld Windows untuk game AAA.\n\nSpesifikasi:\n- Prosesor: AMD Ryzen Z1 Extreme\n- GPU: AMD Radeon Graphics\n- RAM: 16GB LPDDR5\n- Storage: 512GB PCIe 4.0 SSD\n- Layar: 7 inch FHD 120Hz",
      imageProduk: "assets/rog_ally.png",
      reviews: 300,
      rating: 4.7,
      namaToko: "ROG Store",
    ),
    ProdukModel(
      namaProduk: "Asus Zenbook 14",
      harga: "Rp 18.000.000",
      description: "Laptop produktivitas elegan dengan layar OLED.\n\nSpesifikasi:\n- Prosesor: Intel Core Ultra 7 155H\n- GPU: Intel Arc Graphics\n- RAM: 16GB LPDDR5X\n- Storage: 1TB PCIe 4.0 SSD\n- Layar: 14 inch OLED 3K 120Hz",
      imageProduk: "assets/asuszenbook.png",
      reviews: 200,
      rating: 4.8,
      namaToko: "Asus Official",
    ),
    ProdukModel(
      namaProduk: "ROG Rapture Router",
      harga: "Rp 6.000.000",
      description: "Router gaming WiFi 6E untuk turnamen e-sports.\n\nSpesifikasi:\n- Prosesor: 2.0 GHz quad-core\n- Memori: 1GB RAM\n- Kecepatan: Hingga 11000 Mbps\n- Antena: 8x external antenna",
      imageProduk: "assets/asusrouter.png",
      reviews: 85,
      rating: 4.9,
      namaToko: "ROG Accessories",
    ),
  ];
}
