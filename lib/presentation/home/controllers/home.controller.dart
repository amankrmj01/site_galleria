import 'package:flutter/animation.dart';
import 'package:get/get.dart';
import 'package:site_galleria/infrastructure/dal/daos/page_list.dart';

class HomeController extends GetxController
    with GetSingleTickerProviderStateMixin {
  final items = <List<dynamic>>[].obs;
  late AnimationController animationController;
  late Animation<double> topPosition;
  late Animation<double> leftPosition;

  @override
  void onInit() {
    super.onInit();
    items.addAll(listPages);
    animationController = AnimationController(
      duration: const Duration(milliseconds: 2000),
      vsync: this,
    );
    topPosition =
        Tween<double>(begin: 0, end: 300).animate(animationController);
    leftPosition =
        Tween<double>(begin: 0, end: 300).animate(animationController);
    animationController.forward();
  }

  startTopAnimation(double startValue, double endValue) {
    topPosition = Tween<double>(begin: startValue, end: endValue)
        .animate(animationController);
    animationController.forward();
    return topPosition.value;
  }

  startLeftAnimation(double startLeft, double endLeft) {
    leftPosition = Tween<double>(begin: startLeft, end: endLeft)
        .animate(animationController);
    animationController.forward();
    return leftPosition.value;
  }

  @override
  void onClose() {
    animationController.dispose();
    super.onClose();
  }
}
