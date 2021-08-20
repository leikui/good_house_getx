import 'package:get/get.dart';
import 'package:good_house_getx/pages/home/info/controller.dart';

import 'state.dart';

class HomeController extends GetxController {
  final state = HomeState();
  final infoController = Get.find<InfoController>();

  //切换bottom
  void switchTap(int index) {
    state.selectedIndex = index;
    //是否展示资讯页 title
    if (index == 2) {
      infoController.switchShowTitle(true);
    }
    if (index == 0) {
      infoController.switchShowTitle(false);
    }
    update();
  }
}
