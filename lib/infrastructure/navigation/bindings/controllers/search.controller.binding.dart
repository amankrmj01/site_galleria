import 'package:get/get.dart';

import '../../../../presentation/search/controllers/searchh.controller.dart';

class SearchhControllerBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut<SearchhController>(
      () => SearchhController(),
    );
  }
}
