import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:responsive_sizer/responsive_sizer.dart';
import 'package:shayri_app/app/widgets/app_image_assets.dart';
import 'package:shayri_app/constant/assets_constant.dart';

class AppTextFormField extends StatelessWidget {
  final TextEditingController? controller;
  final String? hintText;
  final TextInputType? keyboardType;
  final Function? validator;
  final FocusNode? focusNode;
  final Function? onFieldSubmitted;
  final Widget? prefixIcon;

  const AppTextFormField(
      {Key? key,
      this.prefixIcon,
      this.controller,
      this.hintText,
      this.keyboardType,
      this.onFieldSubmitted,
      this.focusNode,
      this.validator})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        boxShadow: const [
          BoxShadow(color: Colors.grey, blurRadius: 2.0, spreadRadius: 0.0)
        ],
        borderRadius: BorderRadius.circular(12.px),
        color: Colors.white,
      ),
      child: Row(
        children: [
          // AppImage(image: searchIcon)
          TextFormField(
            textAlign: TextAlign.start,
            cursorColor: Colors.grey,
            decoration: InputDecoration(
              border: InputBorder.none,
              focusedBorder: InputBorder.none,
              // prefixIcon: Padding(
              //   padding: EdgeInsets.all(12.px),
              //   child: SvgPicture.asset(AssetConstant.search),
              // ),
              hintText: "Search Categories..",
              hintStyle: const TextStyle(
                  color: Colors.grey, fontSize: 15, fontFamily: 'f1'),
            ),
            controller: controller,
            keyboardType: keyboardType,
            focusNode: focusNode,
          ),
        ],
      ),
    );
  }
}
