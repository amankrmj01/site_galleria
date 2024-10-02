import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:site_galleria/infrastructure/navigation/routes.dart';
import 'package:site_galleria/presentation/widgets/ellipse_painter.dart';
import 'controllers/home.controller.dart';

class HomeScreen extends GetView<HomeController> {
  const HomeScreen({super.key});
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Stack(
          alignment: Alignment.center,
          children: [
            ListView.builder(
              itemCount: controller.items.length,
              itemBuilder: (context, index) {
                return ListTile(
                  style: ListTileStyle.list,
                  textColor: Colors.white,
                  title: Text(controller.items[index][0]),
                  onTap: () {
                    Get.toNamed(Routes.PAGES,
                        arguments: controller.items[index][1]);
                  },
                );
              },
            ),
            EllipseBorderWidget(
                color: Colors.blue, filled: false, a: -700, b: 900)
          ],
        ),
      ),
    );
  }
}
