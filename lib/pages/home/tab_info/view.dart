import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:good_house_getx/pages/home/info/view.dart';

import 'controller.dart';

class TabInfoPage extends StatelessWidget {
  final controller = Get.find<TabInfoController>();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
          title: Text(controller.title.toString())),

      body: ListView(
        children: [
          InfoPage()
        ],
      ),
    );
  }
}
