
import 'package:get/get.dart';

class IndexNavigatorItem{
  final String title;
  final String imgUrl;
  final Function() onTap;

  IndexNavigatorItem(this.title, this.imgUrl, this.onTap);
}
List<IndexNavigatorItem> navigatorItems = [
  IndexNavigatorItem("整租", "static/images/home_index_navigator_rent.png", () => {Get.toNamed("/login")}),
  IndexNavigatorItem("合租", "static/images/home_index_navigator_rent.png", () => {Get.toNamed("/login")}),
  IndexNavigatorItem("三组", "static/images/home_index_navigator_rent.png", () => {Get.toNamed("/login")}),
  IndexNavigatorItem("4租", "static/images/home_index_navigator_rent.png", () => {Get.toNamed("/login")}),
];