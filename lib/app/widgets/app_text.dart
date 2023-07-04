import 'package:flutter/cupertino.dart';
import 'package:responsive_sizer/responsive_sizer.dart';
import 'package:shayri_app/app/constant/color_constant.dart';

class AppText extends StatelessWidget {
  final String? text;
  final double? fontSize;
  final Color color;
  final TextOverflow? overflow;
  final FontWeight? fontWeight;
  final String? fontFamily;
  final TextAlign? textAlign;
  final int maxLines;

  const AppText({
    Key? key,
    this.text,
    this.fontSize,
    this.color = ColorConstant.appThemeColor,
    this.overflow,
    this.fontWeight,
    this.fontFamily,
    this.textAlign,
    this.maxLines = 1,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Text(
      text!,
      style: TextStyle(
        fontSize: fontSize ?? 15.px,
        overflow: overflow,
        color: color,
        fontWeight: fontWeight,
        fontFamily: fontFamily ?? 'Montserrat',
      ),
      textAlign: textAlign,
      overflow: overflow,
      maxLines: maxLines,
    );
  }
}
