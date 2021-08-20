import 'package:get/get.dart';

import 'controller.dart';

class SearchBarBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut(() => SearchBarController());
  }
}
