import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:good_house_getx/pages/home/info/data.dart';
import 'package:good_house_getx/widgets/common_image.dart';

class ItemWidget extends StatelessWidget {
  final InfoItem data;
  const ItemWidget( this.data,{Key? key,}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 100,
      decoration: BoxDecoration(color: Colors.white),
      // padding: EdgeInsets.only(left: 10,right: 10,bottom: 10),
      padding: EdgeInsets.all(10),
      margin: EdgeInsets.only(bottom: 10),
      child: Row(
        children: [
          CommImage(data.imageUrl,width: 100,fit: BoxFit.fill,),
          Padding(padding: EdgeInsets.only(left: 20)),
          Expanded(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(data.title,style: TextStyle(fontWeight: FontWeight.w600,wordSpacing: 1),),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text(data.source,style: TextStyle(color: Colors.black54),),
                    Text(data.time,style: TextStyle(color: Colors.black54))
                  ],
                )
              ],
            ),
          )
        ],
      ),
    );
  }
}
