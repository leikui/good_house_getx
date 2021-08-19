import 'package:card_swiper/card_swiper.dart';
import 'package:flutter/material.dart';
import 'package:good_house_getx/widgets/common_image.dart';

const List<String> defaultImgUrl = [
  "https://pic1.ajkimg.com/display/anjuke/104fbfb5cc4a55ea84ffaa0b1abd3503/600x450c.jpg?t=1&srotate=1",
  "https://pic1.ajkimg.com/display/anjuke/e638419a283735f625c24d391bf838e4/600x450c.jpg?t=1&srotate=1",
  "https://pic1.ajkimg.com/display/anjuke/76f6635ac5b163e9e9a61b159b8c4845/600x450c.jpg?t=1&srotate=1"
];
var imgWidth = 750;
var imgHeight = 424;

class CommonImgSwiperWidgets extends StatelessWidget {
  final List<String> imgUrls;

  const CommonImgSwiperWidgets({Key? key, this.imgUrls = defaultImgUrl})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
        height: MediaQuery.of(context).size.width / imgWidth * imgHeight,
        padding: EdgeInsets.only(left:10,top:10,right:10),
        child: Swiper(
          itemBuilder: (BuildContext context, int index) {
            return CommImage(
              imgUrls[index],
              fit: BoxFit.fill,
            );
          },
          itemCount: imgUrls.length,
          // viewportFraction: 0.8,
          autoplay: true,
          scale: 0.9,
          pagination: SwiperPagination(),
        ));
  }
}
