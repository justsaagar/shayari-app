import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class AppImage extends StatelessWidget {
  final String image;
  final double? width;
  final double? height;
  final BoxFit? fit;
  final Color? color;

  const AppImage({
    Key? key,
    required this.image,
    this.width,
    this.height,
    this.fit,
    this.color
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return image.contains('http') || image.contains('https')
        ? Image.network(image, height: height, width: width, fit: fit, color: color)
        : image.split('.').last != 'svg'
            ? Image.asset(image, height: height, width: width, fit: fit, color: color)
            : SvgPicture.asset(image, height: height, width: width);
  }
}
