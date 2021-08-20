import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:good_house_getx/pages/home/info/controller.dart';
import 'package:good_house_getx/pages/home/tab_index/view.dart';
import 'package:good_house_getx/pages/home/tab_info/view.dart';
import 'package:good_house_getx/pages/home/tab_search/view.dart';
import 'package:good_house_getx/widgets/page_content.dart';

import 'controller.dart';
import 'state.dart';

List<Widget> tabviewList = [
  TabIndexPage(),
  TabSearchPage(),
  TabInfoPage(),
  PageContent(
    name: "我的",
  ),
];
List<BottomNavigationBarItem> bottomBarList = [
  BottomNavigationBarItem(icon: Icon(Icons.home), label: "首页"),
  BottomNavigationBarItem(icon: Icon(Icons.search), label: "搜索"),
  BottomNavigationBarItem(icon: Icon(Icons.info), label: "资讯"),
  BottomNavigationBarItem(icon: Icon(Icons.account_circle), label: "我的"),
];

class HomePage extends GetView<HomeController> {
  final controller = Get.find<HomeController>();
  final HomeState state = Get.find<HomeController>().state;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: GetBuilder<HomeController>(
        builder: (controller) {
          return tabviewList[state.selectedIndex];
        },
      ),
      bottomNavigationBar: GetBuilder<HomeController>(
        builder: (controller) {
          return BottomNavigationBar(
            type: BottomNavigationBarType.fixed,
            items: bottomBarList,
            currentIndex: state.selectedIndex,
            selectedItemColor: Colors.green,
            onTap: (index) => controller.switchTap(index),
          );
        },
      ),
    );
  }
}
