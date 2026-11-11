import 'package:get/get.dart';
import 'package:http/http.dart' as http;
import 'package:testflutter/models/laliga_model.dart';

class LaligaController extends GetxController {
  var isLoading = true.obs;
  var listTeam = <Team>[].obs;

  @override
  void onInit() {
    fetchLaligaTeams();
    super.onInit();
  }

  void fetchLaligaTeams() async {
    try {
      isLoading.value = true;
      final url = Uri.parse(
        "https://www.thesportsdb.com/api/v1/json/123/search_all_teams.php?l=Spanish%20La%20Liga",
      );

      final response = await http.get(url);

      if (response.statusCode == 200) {
        var laligaModel = laligaModelFromJson(response.body);

        if (laligaModel.teams != null) {
          listTeam.value = laligaModel.teams!;
        }
      } else {
        Get.snackbar("Gagal", "Gagal mengambil data dari server");
      }
    } catch (e) {
      Get.snackbar("Error", e.toString());
    } finally {
      isLoading.value = false;
    }
  }

  void reload() {
    fetchLaligaTeams();
  }
}
