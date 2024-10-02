import 'package:flutter/material.dart';

import 'package:get/get.dart';
import 'package:site_galleria/infrastructure/navigation/routes.dart';
import 'package:velocity_x/velocity_x.dart';

import 'controllers/pages.controller.dart';

class PagesScreen extends GetView<PagesController> {
  const PagesScreen({super.key});
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Premium Reports'),
        // centerTitle: true,
        titleSpacing: 0,
        actions: [
          IconButton(
            icon: const Icon(Icons.wallet_outlined),
            onPressed: () {
              Get.toNamed('/search');
            },
          ),
          IconButton(
            onPressed: () {},
            icon: const Icon(Icons.notifications_none),
          ),
        ],
      ),
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 16),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
            10.heightBox,
            'Browse our premium reports'.text.xl2.make(),
            10.heightBox,
            Container(
              height: 60,
              decoration: BoxDecoration(
                color: Colors.grey[800],
                borderRadius: BorderRadius.circular(10),
              ),
              child: InkWell(
                onTap: () {
                  Get.toNamed(Routes.SEARCHH);
                },
                child: Row(
                  children: [
                    10.widthBox,
                    const Icon(
                      Icons.search,
                      size: 32,
                    ),
                    10.widthBox,
                    'Search Marriage, Career,etc.,'.text.xl2.make(),
                  ],
                ),
              ),
            ),
            10.heightBox,
            Expanded(
              child: PageView.builder(
                itemBuilder: (context, index) => Container(
                  child: Column(
                    children: [
                      'Title'.text.xl2.make(),
                      10.heightBox,
                      'Description'.text.make(),
                      10.heightBox,
                      'Read More'.text.make(),
                    ],
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
