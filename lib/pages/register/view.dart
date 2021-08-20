import 'package:flutter/material.dart';
import 'package:get/get.dart';

import 'controller.dart';

class RegisterPage extends StatelessWidget {
  final controller = Get.find<RegisterController>();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: Text(
          "注册",
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
            TextField(
              decoration: InputDecoration(
                  labelText: "密码",
                  hintText: "请输入密码",
                  prefixIcon: Icon(Icons.password)),
            ),
            Padding(padding: EdgeInsets.all(10)),
            TextField(
              decoration: InputDecoration(
                  labelText: "确认密码",
                  hintText: "确认密码",
                  prefixIcon: Icon(Icons.password)),
            ),
            Padding(padding: EdgeInsets.all(10)),
            ElevatedButton(
                onPressed: () => {},
                child: Text("注册")),
            Padding(padding: EdgeInsets.all(10)),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text("已有账号，"),
                TextButton(
                    onPressed: () => {
                      Get.offNamed('/login')
                    },
                    child: Text("去登录")),
              ],
            )
          ],
        ),
      ),
    );
  }
}
