import 'package:get/get.dart';
import 'package:site_galleria/infrastructure/navigation/routes.dart';

class SplashController extends GetxController {
  @override
  void onInit() {
    Future.delayed(
      const Duration(seconds: 3),
      () => (Get.offNamed(Routes.HOME),),
    );
    super.onInit();
  }
}
