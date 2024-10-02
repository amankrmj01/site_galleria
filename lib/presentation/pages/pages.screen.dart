import 'package:flutter/material.dart';

import 'package:get/get.dart';
import 'package:site_galleria/infrastructure/dal/daos/page_list.dart';
import 'package:site_galleria/infrastructure/navigation/routes.dart';
import 'package:site_galleria/presentation/widgets/underlined_text.dart';
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
            const SearchBox(),
            10.heightBox,
            SingleChildScrollView(
              controller: controller.scrollController,
              scrollDirection: Axis.horizontal,
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: listPages
                    .map(
                      (element) => Row(
                        children: [
                          SizedBox(
                            height: 60,
                            // padding: const EdgeInsets.symmetric(horizontal: 16),
                            child: UnderlinedText(
                              text: element[0],
                              isSelected: true,
                            ),
                          ),
                          10.widthBox,
                        ],
                      ),
                    )
                    .toList(),
              ),
            ),
            Expanded(
              child: SingleChildScrollView(
                controller: controller.scrollController,
                scrollDirection: Axis.vertical,
                child: Column(
                  children: [
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        ' Business'.text.xl3.bold.make(),
                        5.heightBox,
                        SingleChildScrollView(
                          scrollDirection: Axis.horizontal,
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              for (var i = 0; i < 5; i++)
                                Container(
                                  // height: 400,
                                  margin: const EdgeInsets.only(right: 20),
                                  width: 250,
                                  alignment: Alignment.topCenter,
                                  padding: const EdgeInsets.all(8),
                                  decoration: BoxDecoration(
                                    color: Colors.grey[800],
                                    borderRadius: BorderRadius.circular(10),
                                  ),
                                  child: Column(
                                    mainAxisAlignment: MainAxisAlignment.start,
                                    crossAxisAlignment:
                                        CrossAxisAlignment.start,
                                    children: [
                                      ClipRRect(
                                        borderRadius: BorderRadius.circular(10),
                                        child: Image.asset(
                                          'assets/images/marriageCard.png',
                                          // height: 200,
                                          // width: 200,
                                          fit: BoxFit.fitWidth,
                                        ),
                                      ),
                                      10.heightBox,
                                      Row(
                                        mainAxisAlignment:
                                            MainAxisAlignment.spaceBetween,
                                        children: [
                                          // 'Marriage'.text.xl.make(),
                                          '₹ 100'.text.xl.make(),
                                          '⭐ 4.5/5'.text.xl.make(),
                                        ],
                                      ),
                                      10.heightBox,
                                      'Marriage Timing Prediction'
                                          .text
                                          .lg
                                          .bold
                                          .make(),
                                      'Discover the perfect timing for your marriage through the guidance of Vedic Astrology and an advanced Al-ML model.'
                                          .text
                                          .make(),
                                    ],
                                  ),
                                )
                            ],
                          ),
                        ),
                      ],
                    ),
                    10.heightBox,
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        ' Careers'.text.xl3.bold.make(),
                        5.heightBox,
                        SingleChildScrollView(
                          scrollDirection: Axis.horizontal,
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              for (var i = 0; i < 5; i++)
                                Container(
                                  // height: 400,
                                  margin: const EdgeInsets.only(right: 20),
                                  width: 250,
                                  alignment: Alignment.topCenter,
                                  padding: const EdgeInsets.all(8),
                                  decoration: BoxDecoration(
                                    color: Colors.grey[800],
                                    borderRadius: BorderRadius.circular(10),
                                  ),
                                  child: Column(
                                    mainAxisAlignment: MainAxisAlignment.start,
                                    crossAxisAlignment:
                                        CrossAxisAlignment.start,
                                    children: [
                                      ClipRRect(
                                        borderRadius: BorderRadius.circular(10),
                                        child: Image.asset(
                                          'assets/images/marriageCard.png',
                                          // height: 200,
                                          // width: 200,
                                          fit: BoxFit.fitWidth,
                                        ),
                                      ),
                                      10.heightBox,
                                      Row(
                                        mainAxisAlignment:
                                            MainAxisAlignment.spaceBetween,
                                        children: [
                                          // 'Marriage'.text.xl.make(),
                                          '₹ 100'.text.xl.make(),
                                          '⭐ 4.5/5'.text.xl.make(),
                                        ],
                                      ),
                                      10.heightBox,
                                      'Marriage Timing Prediction'
                                          .text
                                          .lg
                                          .bold
                                          .make(),
                                      'Discover the perfect timing for your marriage through the guidance of Vedic Astrology and an advanced Al-ML model.'
                                          .text
                                          .make(),
                                    ],
                                  ),
                                )
                            ],
                          ),
                        ),
                      ],
                    ),
                    10.heightBox,
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        ' Marriage'.text.xl3.bold.make(),
                        5.heightBox,
                        SingleChildScrollView(
                          scrollDirection: Axis.horizontal,
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              for (var i = 0; i < 5; i++)
                                Container(
                                  // height: 400,
                                  margin: const EdgeInsets.only(right: 20),
                                  width: 250,
                                  alignment: Alignment.topCenter,
                                  padding: const EdgeInsets.all(8),
                                  decoration: BoxDecoration(
                                    color: Colors.grey[800],
                                    borderRadius: BorderRadius.circular(10),
                                  ),
                                  child: Column(
                                    mainAxisAlignment: MainAxisAlignment.start,
                                    crossAxisAlignment:
                                        CrossAxisAlignment.start,
                                    children: [
                                      ClipRRect(
                                        borderRadius: BorderRadius.circular(10),
                                        child: Image.asset(
                                          'assets/images/marriageCard.png',
                                          // height: 200,
                                          // width: 200,
                                          fit: BoxFit.fitWidth,
                                        ),
                                      ),
                                      10.heightBox,
                                      Row(
                                        mainAxisAlignment:
                                            MainAxisAlignment.spaceBetween,
                                        children: [
                                          // 'Marriage'.text.xl.make(),
                                          '₹ 100'.text.xl.make(),
                                          '⭐ 4.5/5'.text.xl.make(),
                                        ],
                                      ),
                                      10.heightBox,
                                      'Marriage Timing Prediction'
                                          .text
                                          .lg
                                          .bold
                                          .make(),
                                      'Discover the perfect timing for your marriage through the guidance of Vedic Astrology and an advanced Al-ML model.'
                                          .text
                                          .make(),
                                    ],
                                  ),
                                )
                            ],
                          ),
                        ),
                      ],
                    ),
                    10.heightBox,
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        ' Family'.text.xl3.bold.make(),
                        5.heightBox,
                        SingleChildScrollView(
                          scrollDirection: Axis.horizontal,
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              for (var i = 0; i < 5; i++)
                                Container(
                                  // height: 400,
                                  margin: const EdgeInsets.only(right: 20),
                                  width: 250,
                                  alignment: Alignment.topCenter,
                                  padding: const EdgeInsets.all(8),
                                  decoration: BoxDecoration(
                                    color: Colors.grey[800],
                                    borderRadius: BorderRadius.circular(10),
                                  ),
                                  child: Column(
                                    mainAxisAlignment: MainAxisAlignment.start,
                                    crossAxisAlignment:
                                        CrossAxisAlignment.start,
                                    children: [
                                      ClipRRect(
                                        borderRadius: BorderRadius.circular(10),
                                        child: Image.asset(
                                          'assets/images/marriageCard.png',
                                          // height: 200,
                                          // width: 200,
                                          fit: BoxFit.fitWidth,
                                        ),
                                      ),
                                      10.heightBox,
                                      Row(
                                        mainAxisAlignment:
                                            MainAxisAlignment.spaceBetween,
                                        children: [
                                          // 'Marriage'.text.xl.make(),
                                          '₹ 100'.text.xl.make(),
                                          '⭐ 4.5/5'.text.xl.make(),
                                        ],
                                      ),
                                      10.heightBox,
                                      'Marriage Timing Prediction'
                                          .text
                                          .lg
                                          .bold
                                          .make(),
                                      'Discover the perfect timing for your marriage through the guidance of Vedic Astrology and an advanced Al-ML model.'
                                          .text
                                          .make(),
                                    ],
                                  ),
                                )
                            ],
                          ),
                        ),
                      ],
                    ),
                    10.heightBox,
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        ' Health'.text.xl3.bold.make(),
                        5.heightBox,
                        SingleChildScrollView(
                          scrollDirection: Axis.horizontal,
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              for (var i = 0; i < 5; i++)
                                Container(
                                  // height: 400,
                                  margin: const EdgeInsets.only(right: 20),
                                  width: 250,
                                  alignment: Alignment.topCenter,
                                  padding: const EdgeInsets.all(8),
                                  decoration: BoxDecoration(
                                    color: Colors.grey[800],
                                    borderRadius: BorderRadius.circular(10),
                                  ),
                                  child: Column(
                                    mainAxisAlignment: MainAxisAlignment.start,
                                    crossAxisAlignment:
                                        CrossAxisAlignment.start,
                                    children: [
                                      ClipRRect(
                                        borderRadius: BorderRadius.circular(10),
                                        child: Image.asset(
                                          'assets/images/marriageCard.png',
                                          // height: 200,
                                          // width: 200,
                                          fit: BoxFit.fitWidth,
                                        ),
                                      ),
                                      10.heightBox,
                                      Row(
                                        mainAxisAlignment:
                                            MainAxisAlignment.spaceBetween,
                                        children: [
                                          // 'Marriage'.text.xl.make(),
                                          '₹ 100'.text.xl.make(),
                                          '⭐ 4.5/5'.text.xl.make(),
                                        ],
                                      ),
                                      10.heightBox,
                                      'Marriage Timing Prediction'
                                          .text
                                          .lg
                                          .bold
                                          .make(),
                                      'Discover the perfect timing for your marriage through the guidance of Vedic Astrology and an advanced Al-ML model.'
                                          .text
                                          .make(),
                                    ],
                                  ),
                                )
                            ],
                          ),
                        ),
                      ],
                    ),
                  ],
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}

class SearchBox extends StatelessWidget {
  const SearchBox({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
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
    );
  }
}
