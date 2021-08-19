import 'package:flutter/material.dart';
import 'package:get/get.dart';

import 'controller.dart';

class LoginPage extends GetView<LoginController> {
  final controller = Get.find<LoginController>();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: Text(
          "登录",
        ),
      ),
      body: SafeArea(
        minimum: EdgeInsets.all(30),
        child: ListView(
          children: [
            TextField(
              decoration: InputDecoration(
                  labelText: "账号",
                  hintText: "请输入账号",
                  prefixIcon: Icon(Icons.person)),
            ),
            Padding(padding: EdgeInsets.all(10)),
            GetBuilder<LoginController>(builder: (controller) {
              return TextField(
                obscureText: controller.showPwd.value,
                decoration: InputDecoration(
                    labelText: "密码",
                    hintText: "请输入密码",
                    suffixIcon: IconButton(
                      icon: Icon(controller.showPwd.value
                          ? Icons.visibility
                          : Icons.visibility_off),
                      onPressed: () => controller.switchShowPwd(),
                    ),
                    prefixIcon: Icon(Icons.password)),
              );
            }),
            Padding(padding: EdgeInsets.all(10)),
            ElevatedButton(onPressed: () => {}, child: Text("登录")),
            Padding(padding: EdgeInsets.all(10)),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text("还没有账号，"),
                TextButton(
                    onPressed: () => {Get.offNamed('/register')},
                    child: Text("去注册")),
              ],
            )
          ],
        ),
      ),
    );
  }
}
