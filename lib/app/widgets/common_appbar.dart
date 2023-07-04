import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:responsive_sizer/responsive_sizer.dart';
import 'package:shayri_app/app/constant/assets_constant.dart';
import 'package:shayri_app/app/widgets/app_text.dart';

class CommonAppbar extends PreferredSize {
  final double appBarHeight;

  CommonAppbar({
    Key? key,
    required this.appBarHeight,
    Widget? child,
    Size? preferredSize,
  }) : super(
          key: key,
          child: Container(),
          preferredSize: Size.fromHeight(appBarHeight),
        );

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        Positioned(
          height: 379.px,
          width: 530.px,
          top: -212.px,
          left: -77.px,
          child: SvgPicture.asset(AssetConstant.appbar, fit: BoxFit.cover),
        ),
        Positioned(
            height: 30.px,
            width: 30.px,
            top: 64.px,
            left: 18.px,
            child: SvgPicture.asset(AssetConstant.drawer)),
        Positioned(
            height: 22.px,
            width: 55.px,
            top: 68.px,
            left: 160.px,
            child: const AppText(
              text: "LOGO",
              color: Colors.white,
            )),
      ],
    );
    ;
  }
}
