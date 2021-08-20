import 'package:flutter/material.dart';

class TagWidget extends StatelessWidget {
  final String title;
  final Color fontColor;
  final Color bgColor;

  const TagWidget.origin(
    this.title, {
    Key? key,
    this.fontColor = Colors.black,
    this.bgColor = Colors.grey,
  }) : super(key: key);

  factory TagWidget(String title) {
    switch (title.length) {
      case 2:
        return TagWidget.origin(
          title,
          bgColor: Colors.blue.shade50,
          fontColor: Colors.blue,
        );
      case 3:
        return TagWidget.origin(
          title,
          bgColor: Colors.red.shade50,
          fontColor: Colors.red,
        );
      case 4:
        return TagWidget.origin(
          title,
          bgColor: Colors.green.shade50,
          fontColor: Colors.green,
        );
      case 5:
        return TagWidget.origin(
          title,
          bgColor: Colors.orange.shade50,
          fontColor: Colors.orange,
        );
      default:
        return TagWidget.origin(
          title,
        );
    }
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.only(left: 5),
      padding: EdgeInsets.only(left: 2, right: 2, top: 1, bottom: 1),
      decoration:
          BoxDecoration(color: bgColor, borderRadius: BorderRadius.circular(5)),
      child: Text(
        title,
        style: TextStyle(fontSize: 10, color: fontColor),
      ),
    );
  }
}
