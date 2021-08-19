import 'package:card_swiper/card_swiper.dart';
import 'package:flutter/material.dart';

 List<Widget> defaultBtn = [
    Row(
      children: [
        Column(
          children: [
            Image.asset("static/images/home_index_navigator_rent.png"),
            Text("data")
          ],
        ),
        Column(
          children: [
            Image.asset(""),
            Text("data")
          ],
        ),
        Column(
          children: [
            Image.asset(""),
            Text("data")
          ],
        ),
        Column(
          children: [
            Image.asset(""),
            Text("data")
          ],
        ),
      ],
    )
];

class CommonBtnSwiperWidgets extends StatelessWidget {
  final List<Widget> list ;
  const CommonBtnSwiperWidgets(this.list,{Key? key,})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
        height: MediaQuery.of(context).size.width / 750 * 424,
        padding: EdgeInsets.only(left:10,top:0,right:10,bottom: 0),
        child: Swiper(
          itemWidth: 10,
          itemBuilder: (BuildContext context, int index) {
            return Container(
              child:Row(
                children: list,
              )
            );
          },
          itemCount: list.length,
          // viewportFraction: 0.8,
          scale: 0.9,
          pagination: SwiperPagination(),
        ));
  }


}
