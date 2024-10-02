import 'package:get/get.dart';

import '../../../../presentation/pages/controllers/pages.controller.dart';

class PagesControllerBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut<PagesController>(
      () => PagesController(),
    );
  }
}
