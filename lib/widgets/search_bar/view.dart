import 'package:flutter/material.dart';
import 'package:get/get.dart';

import 'controller.dart';

class SearchBarPage extends GetView<SearchBarController> {
  final controller = Get.find<SearchBarController>();

  @override
  Widget build(BuildContext context) {
    return Container(
      child: GetBuilder(builder: (controlle){
        return Column(
          children: [
            if(controller.shwoLocation != null)GestureDetector(

            )
          ],
        );
      }),
    );
  }
}
