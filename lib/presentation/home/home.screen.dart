import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:site_galleria/infrastructure/navigation/routes.dart';
import 'package:site_galleria/presentation/widgets/ellipse_painter.dart';
import 'package:velocity_x/velocity_x.dart';
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
            AnimatedEllipse(
              controller: controller,
              color: Colors.blue,
              a: 160,
              b: 180,
              borderWidth: 1,
              filled: true,
              startValue: 400,
              endValue: 300,
              widthFactor: 0.7,
            ),
            AnimatedEllipse(
              controller: controller,
              color: Colors.blue,
              a: 240,
              b: 280,
              borderWidth: 1,
              filled: false,
              startValue: 400,
              endValue: 220,
              widthFactor: 0.6,
            ),
            AnimatedEllipse(
              controller: controller,
              color: Colors.blue,
              a: 400,
              b: 500,
              borderWidth: 2,
              filled: false,
              startValue: 380,
              endValue: 200,
              widthFactor: 0.5,
            ),
            AnimatedEllipse(
              controller: controller,
              color: Colors.blue,
              a: 400,
              b: 500,
              borderWidth: 1,
              filled: false,
              startValue: 380,
              endValue: 180,
              widthFactor: 0.6,
            ),
            AnimatedEllipse(
              controller: controller,
              color: Colors.blue,
              a: 420,
              b: 540,
              borderWidth: 1,
              filled: false,
              startValue: 400,
              endValue: 180,
              widthFactor: 0.7,
            ),
            ItemsTile(
              controller: controller,
              index: 0,
              startTop: 400,
              endTop: 80,
              startLeft: 0,
              endLeft: 40,
            ),
            ItemsTile(
              controller: controller,
              index: 1,
              startTop: 400,
              endTop: 240,
              startLeft: 0,
              endLeft: 180,
            ),
            ItemsTile(
              controller: controller,
              index: 2,
              startTop: 400,
              endTop: 400,
              startLeft: 0,
              endLeft: 220,
            ),
            ItemsTile(
              controller: controller,
              index: 3,
              startTop: 400,
              endTop: 590,
              startLeft: 0,
              endLeft: 180,
            ),
            ItemsTile(
              controller: controller,
              index: 4,
              startTop: 400,
              endTop: 740,
              startLeft: 0,
              endLeft: 60,
            ),
          ],
        ),
      ),
    );
  }
}

class ItemsTile extends StatelessWidget {
  final int index;
  final double startTop;
  final double endTop;
  final double startLeft;
  final double endLeft;
  final HomeController controller;

  const ItemsTile({
    super.key,
    required this.controller,
    required this.index,
    required this.startTop,
    required this.endTop,
    required this.startLeft,
    required this.endLeft,
  });

  @override
  Widget build(BuildContext context) {
    return Positioned(
      top: controller.startTopAnimation(startTop, endTop),
      left: controller.startLeftAnimation(startLeft, endLeft),
      child: InkWell(
        splashColor: Colors.transparent,
        onTap: () {
          Get.toNamed(Routes.PAGES, arguments: controller.items[index][1]);
        },
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Container(
              alignment: Alignment.center,
              height: 60,
              width: 60,
              decoration: BoxDecoration(
                color: Colors.blue.withOpacity(0.5),
                borderRadius: BorderRadius.circular(50),
              ),
              child: Image.asset(
                controller.items[index][2],
                height: 50,
                // width: 40,
                fit: BoxFit.fitHeight,
              ),
            ),
            20.widthBox,
            Text(
              controller.items[index][0],
              style: const TextStyle(fontSize: 24, color: Colors.blue),
            ),
          ],
        ),
      ),
    );
  }
}

class AnimatedEllipse extends StatelessWidget {
  final HomeController controller;
  final Color color;
  final double a;
  final double b;
  final double borderWidth;
  final bool filled;
  final double startValue;
  final double endValue;
  final double widthFactor;
  const AnimatedEllipse({
    super.key,
    required this.controller,
    required this.color,
    required this.a,
    required this.b,
    required this.borderWidth,
    required this.filled,
    required this.startValue,
    required this.endValue,
    required this.widthFactor,
  });

  @override
  Widget build(BuildContext context) {
    return AnimatedBuilder(
      animation: controller.topPosition,
      builder: (context, child) {
        return Positioned(
          top: controller.startTopAnimation(startValue, endValue),
          left: 0,
          child: ScaleTransition(
            scale: Tween<double>(begin: 0.0, end: 1.5).animate(
              CurvedAnimation(
                parent: controller.animationController,
                curve: Curves.easeInOut,
              ),
            ),
            child: ClipRect(
              child: Align(
                alignment: Alignment.centerRight,
                widthFactor: widthFactor,
                child: EllipseBorderWidget(
                  color: color,
                  filled: filled,
                  a: a,
                  b: b,
                  borderWidth: borderWidth,
                ),
              ),
            ),
          ),
        );
      },
    );
  }
}
