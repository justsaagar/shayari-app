import 'package:flutter/material.dart';
import 'package:responsive_sizer/responsive_sizer.dart';
import 'package:shayri_app/app/constant/color_constant.dart';
import 'package:shayri_app/app/widgets/app_image.dart';
import 'package:shayri_app/app/widgets/app_text.dart';

class SocialMediaCard extends StatelessWidget {
  final String logo;
  final String label;

  const SocialMediaCard({Key? key, required this.logo, required this.label})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: Column(mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: [
          AppImage(
            image: logo,
            width: 29.px,
            height: 29.px,
          ),
          const SizedBox(height: 10,),
          AppText(text: label,fontSize: 10,color: ColorConstant.appGrey,)
        ],
      ),
    );
  }
}
