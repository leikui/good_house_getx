import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:good_house_getx/pages/home/info/item_weight.dart';

import 'controller.dart';

class InfoPage extends StatelessWidget {
  final controller = Get.find<InfoController>();

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(color: Color(0x08000000)),
      child: Column(
        children: [
          if(!controller.showTitle)Container(
            margin: EdgeInsets.only(bottom: 10),
            decoration: BoxDecoration(color: Colors.white),
            alignment: Alignment.centerLeft,
            padding: EdgeInsets.all(10),
            child: Text('最新资讯',style: TextStyle(fontSize: 14,fontWeight:FontWeight.w500,color: Colors.black),),
          ),
          Column(
            children: controller.dataList.map((item) => ItemWidget(item)).toList(),
          )
        ],
      ),
    );
  }
}
