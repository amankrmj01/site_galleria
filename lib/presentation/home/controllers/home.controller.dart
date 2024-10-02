import 'package:flutter/animation.dart';
import 'package:get/get.dart';
import 'package:site_galleria/infrastructure/dal/daos/page_list.dart';

class HomeController extends GetxController
    with GetSingleTickerProviderStateMixin {
  final items = <List<dynamic>>[].obs;
  late AnimationController animationController;
  late Animation<double> topPosition;

  @override
  void onInit() {
    super.onInit();
    items.addAll(listPages);
    animationController = AnimationController(
      duration: const Duration(seconds: 2),
      vsync: this,
    );

    topPosition =
        Tween<double>(begin: 0, end: 400).animate(animationController);
  }

  startAnimation(double endValue) {
    topPosition =
        Tween<double>(begin: 400, end: endValue).animate(animationController);
    animationController.forward();
    return topPosition.value;
  }

  @override
  void onClose() {
    animationController.dispose();
    super.onClose();
  }
}
