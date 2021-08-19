import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:good_house_getx/routes/app_pages.dart';
import 'package:good_house_getx/routes/app_routes.dart';
import 'package:good_house_getx/themes/app_themes.dart';

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      title: "Getx App",
      initialRoute: AppRoutes.HOME,
      getPages: AppPages.routes,
      debugShowCheckedModeBanner: false,
      darkTheme: AppThemes.dark,
      theme: AppThemes.light,
      themeMode: ThemeMode.system,
    );
  }
}
