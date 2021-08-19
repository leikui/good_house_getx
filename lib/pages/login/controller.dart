import 'package:get/get.dart';

class LoginController extends GetxController {
  var showPwd = RxBool(true);

  void switchShowPwd() {
    showPwd.value = !showPwd.value;
    update();
  }
}
