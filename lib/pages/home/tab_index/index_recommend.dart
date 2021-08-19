import 'package:flutter/material.dart';
import 'package:good_house_getx/pages/home/tab_index/index_recommend_data.dart';
import 'package:good_house_getx/pages/home/tab_index/index_recommend_item_widget.dart';

class IndexRecommend extends StatelessWidget {
  final List<IndexRecommendItem> list;

  const IndexRecommend({Key? key, this.list = indexRecommendData})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.all(10),
      decoration: BoxDecoration(color: Color(0x08000000)),
      child: Column(
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text(
                "房屋推荐",
                style: TextStyle(fontSize: 16,color: Colors.black, fontWeight: FontWeight.w500),
              ),
              Text(
                "更多...",
                style: TextStyle(fontSize: 16, color:Colors.black26,fontWeight: FontWeight.w500),
              )
            ],
          ),
          Padding(padding: EdgeInsets.only(top: 5, bottom: 5)),
          Wrap(
              runSpacing: 10.0,
              spacing: 10.0,
              children: list.map((item) => IndexRecommendItemWidget(item)).toList()),
        ],
      ),
    );
  }
}
