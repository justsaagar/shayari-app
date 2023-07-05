import 'package:flutter/material.dart';
import 'package:responsive_sizer/responsive_sizer.dart';
import 'package:shayri_app/app/constant/asset_constant.dart';
import 'package:shayri_app/app/constant/color_constant.dart';
import 'package:shayri_app/app/widgets/app_image.dart';
import 'package:shayri_app/app/widgets/app_text.dart';

class CommonAppbar extends PreferredSize {
  final double appBarHeight;
  final bool showSuffix;

  CommonAppbar({
    Key? key,
    this.appBarHeight = 150,
    this.showSuffix = false,
    Widget? child,
    Size? preferredSize,
  }) : super(
          key: key,
          child: Container(),
          preferredSize: Size.fromHeight(appBarHeight),
        );

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: appBarHeight,
      width: Device.width,
      child: Stack(
        alignment: Alignment.center,
        children: [
          AppImage(
            image: AssetConstant.appbar,
            width: Device.width,
            fit: BoxFit.fill,
          ),
          Padding(
            padding:
                EdgeInsets.symmetric(horizontal: 15.px).copyWith(bottom: 10.px),
            child: Row(
              children: [
                InkWell(
                    onTap: () => Scaffold.of(context).openDrawer(),
                    child: const AppImage(
                        image: AssetConstant.drawer, fit: BoxFit.fill)),
                const Spacer(),
                AppText(
                  fontWeight: FontWeight.w600,
                  text: 'LOGO',
                  color: Colors.white,
                  fontFamily: 'Montserrat',
                  fontSize: 18.px,
                ),
                const Spacer(),
                AppImage(
                  image: AssetConstant.drawer,
                  color: showSuffix
                      ? ColorConstant.appWhite
                      : ColorConstant.appThemeColor,
                  fit: BoxFit.fill,
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
