import 'package:get/get.dart';

import 'state.dart';

class HomeController extends GetxController {
  final state = HomeState();
  //切换bottom
  void switchTap(int index){
    state.selectedIndex = index;
    update();
  }
}
