import 'package:flutter/material.dart';


class UnknownRoutePage extends StatelessWidget {
  const UnknownRoutePage({ Key? key }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text("404"),
          centerTitle: true,
        ),
        body:Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [

              Text("您访问的页面不存在！")
            ],
          ),
        )
    );
  }
}