import 'package:flutter/material.dart';
import 'package:get/get.dart';

class SearchBarController extends GetxController {
  final RxBool shwoLocation = false.obs;
  final Function? goBackCallback = null;
  final RxString inputValue = ''.obs;
  final String? defaultInputValue = null;
  final Function? onCancel = null;
  final RxBool? showMap = false.obs;
  final Function? onSearch = null;
  final ValueChanged<String>? onSearchSubmit = null;

}
