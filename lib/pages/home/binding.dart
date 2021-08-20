import 'package:get/get.dart';
import 'package:good_house_getx/pages/home/info/controller.dart';
import 'package:good_house_getx/pages/home/tab_index/controller.dart';
import 'package:good_house_getx/pages/home/tab_info/controller.dart';
import 'package:good_house_getx/pages/home/tab_search/controller.dart';

import 'controller.dart';

class HomeBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut(() => HomeController());
    Get.lazyPut(() => TabIndexController());
    Get.lazyPut(() => InfoController());
    Get.lazyPut(() => TabSearchController());
    Get.lazyPut(() => TabInfoController());
  }
}
