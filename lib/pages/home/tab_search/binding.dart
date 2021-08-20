import 'package:get/get.dart';

import 'controller.dart';

class TabSearchBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut(() => TabSearchController());
  }
}
