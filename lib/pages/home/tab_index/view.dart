import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:good_house_getx/pages/home/info/view.dart';
import 'package:good_house_getx/pages/home/tab_index/index_navigator.dart';
import 'package:good_house_getx/pages/home/tab_index/index_recommend.dart';
import 'package:good_house_getx/widgets/common_img_swiper.dart';

import 'controller.dart';

class TabIndexPage extends StatelessWidget {
  final controller = Get.find<TabIndexController>();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("tabINdex"),
      ),
      body: ListView(
        children: [
          CommonImgSwiperWidgets(),
          IndexNavigatorPage(),
          IndexRecommend(),
          InfoPage()
        ],
      ),
    );
  }
}
