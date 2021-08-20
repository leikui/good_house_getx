import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:good_house_getx/pages/home/tab_search/dataList.dart';
import 'package:good_house_getx/widgets/room_list_item_widget.dart';

import 'controller.dart';

class TabSearchPage extends GetView<TabSearchController> {
  final controller = Get.find<TabSearchController>();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("搜索页面isBlank"),
      ),
      body: Container(
        child: Column(
          children: [
            Container(
              height: 40,
              child: Text("flterbarisBlank"),
            ),
            Expanded(child: ListView(
              children: dataList.map((item) => RoomListItemWidget(item)).toList(),
            ))
          ],
        ),
      ),
    );
  }
}
