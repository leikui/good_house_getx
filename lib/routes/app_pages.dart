import 'package:get/get.dart';
import 'package:good_house_getx/pages/home/binding.dart';
import 'package:good_house_getx/pages/home/room_detail/index.dart';
import 'package:good_house_getx/pages/home/tab_index/binding.dart';
import 'package:good_house_getx/pages/home/tab_index/view.dart';
import 'package:good_house_getx/pages/home/tab_search/binding.dart';
import 'package:good_house_getx/pages/home/tab_search/view.dart';
import 'package:good_house_getx/pages/home/view.dart';
import 'package:good_house_getx/pages/login/binding.dart';
import 'package:good_house_getx/pages/login/view.dart';
import 'package:good_house_getx/pages/register/binding.dart';
import 'package:good_house_getx/pages/register/view.dart';
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
    GetPage(
      name: AppRoutes.REGISTER,
      page: () => RegisterPage(),
      binding: RegisterBinding(),
    ),
    GetPage(
      name: AppRoutes.ROOM_DETAIL + ":roomId",
      page: () => RoomDetailPage(roomId: Get.parameters['roomId']!),
      transition: Transition.downToUp,
      // binding: InfoBinding(),
    ),
    GetPage(
      name: AppRoutes.SEARCH,
      page: () => TabSearchPage(),
      binding: TabSearchBinding(),
      transition: Transition.downToUp,
    )
  ];
}
