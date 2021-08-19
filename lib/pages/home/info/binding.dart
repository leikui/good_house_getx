import 'package:get/get.dart';

import 'controller.dart';

class InfoBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut(() => InfoController());
  }
}
