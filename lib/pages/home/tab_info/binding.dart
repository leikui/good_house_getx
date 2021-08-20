import 'package:get/get.dart';

import 'controller.dart';

class TabInfoBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut(() => TabInfoController());
  }
}
