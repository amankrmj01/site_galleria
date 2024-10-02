import 'package:flutter/material.dart';

import 'package:get/get.dart';

import 'controllers/searchh.controller.dart';

class SearchhScreen extends GetView<SearchhController> {
  const SearchhScreen({super.key});
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('SearchScreen'),
        centerTitle: true,
      ),
      body: const Center(
        child: Text(
          'SearchScreen is working',
          style: TextStyle(fontSize: 20),
        ),
      ),
    );
  }
}
