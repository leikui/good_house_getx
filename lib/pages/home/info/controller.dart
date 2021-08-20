import 'package:get/get.dart';
import 'package:good_house_getx/pages/home/info/data.dart';

class InfoController extends GetxController {
  var showTitle = false;
  final List<InfoItem> dataList = infoData;

  void switchShowTitle(bool flag){
    showTitle = flag;
  }

}
