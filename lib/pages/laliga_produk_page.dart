import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:testflutter/controller/laliga_controller.dart';
import 'package:testflutter/components/mytextview.dart';
import 'package:testflutter/components/myimageview.dart';
import 'package:flutter/services.dart';

class LaligaProdukPage extends StatelessWidget {
  LaligaProdukPage({super.key});

  final controller = Get.put(LaligaController());

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xFF121212),
      appBar: AppBar(
        title: const Text("LaLiga Teams Directory"),
        backgroundColor: const Color(0xFFD32F2F),
        foregroundColor: Colors.white,
      ),
      body: Container(
        margin: const EdgeInsets.all(10),
        child: RefreshIndicator(
          color: const Color(0xFFD32F2F),
          onRefresh: () async {
            controller.reload();
          },
          child: Obx(
            () => controller.isLoading.value
                ? const Center(
                    child: CircularProgressIndicator(color: Colors.red),
                  )
                : ListView.builder(
                    physics: const AlwaysScrollableScrollPhysics(),
                    itemCount: controller.listTeam.length,
                    itemBuilder: (context, index) {
                      final team = controller.listTeam[index];

                      return Dismissible(
                        key: ValueKey(team.idTeam),
                        direction: DismissDirection.startToEnd,
                        background: Container(
                          margin: const EdgeInsets.only(bottom: 12),
                          padding: const EdgeInsets.only(left: 20),
                          alignment: Alignment.centerLeft,
                          decoration: BoxDecoration(
                            color: Colors.red,
                            borderRadius: BorderRadius.circular(12),
                          ),
                          child: const Icon(
                            Icons.delete,
                            color: Colors.white,
                            size: 30,
                          ),
                        ),
                        onDismissed: (direction) {
                          controller.listTeam.removeAt(index);
                        },
                        child: GestureDetector(
                          onLongPress: () {
                            showModalBottomSheet(
                              context: context,
                              backgroundColor: const Color(0xFF1E1E1E),
                              builder: (context) {
                                return Column(
                                  mainAxisSize: MainAxisSize.min,
                                  children: [
                                    ListTile(
                                      leading: const Icon(
                                        Icons.copy,
                                        color: Colors.white,
                                      ),
                                      title: const Text(
                                        "Salin Nama Klub",
                                        style: TextStyle(color: Colors.white),
                                      ),
                                      onTap: () {
                                        Clipboard.setData(
                                          ClipboardData(
                                            text: team.strTeam ?? '',
                                          ),
                                        );
                                        Navigator.pop(context);
                                        Get.snackbar(
                                          "Berhasil",
                                          "Nama klub berhasil disalin",
                                        );
                                      },
                                    ),
                                    ListTile(
                                      leading: const Icon(
                                        Icons.delete,
                                        color: Colors.redAccent,
                                      ),
                                      title: const Text(
                                        "Hapus Klub",
                                        style: TextStyle(color: Colors.white),
                                      ),
                                      onTap: () {
                                        controller.listTeam.removeAt(
                                          controller.listTeam.indexOf(team),
                                        );
                                        Navigator.pop(context);
                                      },
                                    ),
                                  ],
                                );
                              },
                            );
                          },
                          child: Card(
                            color: const Color(0xFF1E1E1E),
                            margin: const EdgeInsets.only(bottom: 12),
                            shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(12),
                              side: const BorderSide(
                                color: Color(0xFFD32F2F),
                                width: 1,
                              ),
                            ),
                            child: ListTile(
                              contentPadding: const EdgeInsets.all(10),
                              leading: MyImageView(
                                imageUrl: team.strBadge ?? '',
                                width: 60,
                                height: 60,
                              ),
                              title: Padding(
                                padding: const EdgeInsets.only(bottom: 4.0),
                                child: MyTextView(
                                  text: team.strTeam ?? '',
                                  fontWeight: FontWeight.bold,
                                  fontSize: 16,
                                  color: Colors.white,
                                ),
                              ),
                              subtitle: Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  MyTextView(
                                    text: team.strStadium ?? '',
                                    color: Colors.redAccent,
                                    fontWeight: FontWeight.w600,
                                  ),
                                  const SizedBox(height: 6),
                                  Row(
                                    children: [
                                      Expanded(
                                        child: MyTextView(
                                          text: "ID: ${team.idTeam ?? ''}",
                                          fontSize: 12,
                                          color: Colors.grey,
                                        ),
                                      ),
                                      const Icon(
                                        Icons.star,
                                        color: Colors.amber,
                                        size: 14,
                                      ),
                                      const SizedBox(width: 4),
                                      MyTextView(
                                        text: "LaLiga",
                                        fontSize: 12,
                                        color: Colors.grey,
                                      ),
                                    ],
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
        ),
      ),
    );
  }
}
