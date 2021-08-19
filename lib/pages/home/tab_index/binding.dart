import 'package:get/get.dart';
import 'package:good_house_getx/pages/home/info/controller.dart';

import 'controller.dart';

class TabIndexBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut(() => TabIndexController());
  }
}
