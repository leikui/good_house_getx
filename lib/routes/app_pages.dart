import 'package:get/get.dart';
import 'package:good_house_getx/pages/home/binding.dart';
import 'package:good_house_getx/pages/home/tab_index/binding.dart';
import 'package:good_house_getx/pages/home/tab_index/view.dart';
import 'package:good_house_getx/pages/home/view.dart';
import 'package:good_house_getx/pages/login/binding.dart';
import 'package:good_house_getx/pages/login/view.dart';
import 'package:good_house_getx/routes/app_routes.dart';

class AppPages {
  static final  routes = [
    GetPage(
      name: AppRoutes.HOME,
      page: () => HomePage(),
      binding: HomeBinding(),
    ),
    GetPage(
      name: AppRoutes.INDEX,
      page: () => TabIndexPage(),
      binding: TabIndexBinding(),
    ),
    GetPage(
      name: AppRoutes.LOGIN,
      page: () => LoginPage(),
      binding: LoginBinding(),
    ),
  ];
}
