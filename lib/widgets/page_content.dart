import 'package:flutter/material.dart';
import 'package:get/get.dart';

class PageContent extends StatelessWidget {
  final String name;

  const PageContent({Key? key, required this.name}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: Text("当前页面：$name"),
      ),
      body: ListView(
        children: [
          TextButton(
              onPressed: () {
                Get.toNamed('/home');
              },
              child: Text("首页")),
          TextButton(
              onPressed: () {
                Get.toNamed('/login');
              },
              child: Text("登录页")),
          TextButton(
              onPressed: () {
                Get.toNamed( "/404");
              },
              child: Text("未知页")),
          TextButton(
              onPressed: () {
                Get.toNamed("/room/1312");
              },
              child: Text("详情"))
        ],
      ),
    );
  }
}
