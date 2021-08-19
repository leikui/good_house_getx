import 'package:flutter/material.dart';
import 'package:good_house_getx/pages/home/tab_index/index_navigator_Item.dart';
import 'package:good_house_getx/widgets/common_image.dart';

class IndexNavigatorPage extends StatelessWidget {
  const IndexNavigatorPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.only(top: 0,bottom: 6),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceAround,
        children: navigatorItems
            .map((item) => InkWell(
                  onTap:item.onTap,
                  child: Column(
                    children: [
                      CommImage(item.imgUrl,height:70,width: 47.5,fit: BoxFit.fitHeight,),
                      Text(item.title,style: TextStyle(fontWeight: FontWeight.w500,fontSize: 14),)
                    ],
                  ),
                ))
            .toList(),
      ),
    );
  }
}
