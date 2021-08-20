import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:good_house_getx/pages/home/tab_search/dataList.dart';
import 'package:good_house_getx/widgets/common_image.dart';
import 'package:good_house_getx/widgets/common_tags.dart';

class RoomListItemWidget extends StatelessWidget {
  final RoomListItemData data;

  const RoomListItemWidget(
    this.data, {
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.white,
      padding: EdgeInsets.only(left: 10,right: 10,bottom: 10),
      child: Row(
        children: [
          CommImage(
            data.imageUrl,
            width: 120,
            height: 80,
            fit: BoxFit.fill,
          ),
          Padding(padding: EdgeInsets.only(left: 10)),
          Expanded(
              child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                data.title,
                maxLines: 1,
                overflow: TextOverflow.ellipsis,
                style: TextStyle(fontWeight: FontWeight.w600),
              ),
              Text(data.subTitle),
              Wrap(
                children: data.tags.map((item) => TagWidget(item)).toList(),
              ),
              Text('${data.price} 元/每月',style: TextStyle(fontWeight: FontWeight.w600,color: Colors.orangeAccent,fontSize: 16),),
            ],
          ))
        ],
      ),
    );
  }
}
