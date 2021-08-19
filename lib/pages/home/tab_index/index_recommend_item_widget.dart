import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:good_house_getx/pages/home/tab_index/index_recommend_data.dart';
import 'package:good_house_getx/widgets/common_image.dart';

final textStyle = TextStyle(fontWeight: FontWeight.w500,fontSize: 14);
class IndexRecommendItemWidget extends StatelessWidget {
  final IndexRecommendItem data ;
  const IndexRecommendItemWidget(this.data,{Key? key, }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: ()=>{
        Get.toNamed(data.navigateUrl)
      },
      child: Container(
        decoration: BoxDecoration(color: Colors.white),
        width:(MediaQuery.of(context).size.width - 10 * 3) / 2,
        padding: EdgeInsets.all(5),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          children: [
            Column(
              children: [
                Text(data.title,style: textStyle,),
                Text(data.subTitle,style: textStyle,)
              ],
            ),
            CommImage(data.imageUrl,width: 65,fit: BoxFit.contain,)

          ],
        ),
      ),
    );
  }
}
