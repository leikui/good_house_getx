import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';

final networkUriReg = RegExp('^http');
final localUriReg = RegExp('^static');

class CommImage extends StatelessWidget {
  final String src;
  final double height;
  final double width;

  final BoxFit fit;

  const CommImage(this.src,
      {Key? key, this.height = 95, this.width = 424, this.fit = BoxFit.cover})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    if (networkUriReg.hasMatch(src)) {
      return CachedNetworkImage(
            imageUrl: src,
            width: width,
            height: height,
            fit: fit,
            placeholder: (context, url) => CircularProgressIndicator(
                  backgroundColor: Color.fromRGBO(255, 255, 255, 0.3),
                ),
            errorWidget: (context, url, error) => Icon(Icons.error));
    }
    if (localUriReg.hasMatch(src)) {
      return Image.asset(
        src,
        height: height,
        width: width,
        fit: fit,
      );
    }
    // assert(false,'图片地址不合法');
    return Container();
  }
}
