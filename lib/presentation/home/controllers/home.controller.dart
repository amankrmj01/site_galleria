import 'package:get/get.dart';
import 'package:site_galleria/infrastructure/dal/daos/page_list.dart';

class HomeController extends GetxController {
  final items = <List<dynamic>>[].obs;

  @override
  void onInit() {
    super.onInit();
    items.addAll(listPages);
  }
}
