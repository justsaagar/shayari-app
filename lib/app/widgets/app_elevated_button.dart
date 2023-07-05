import 'package:flutter/material.dart';
import 'package:responsive_sizer/responsive_sizer.dart';
import 'package:shayri_app/app/constant/color_constant.dart';
import 'package:shayri_app/app/widgets/app_text.dart';

class AppButton extends StatelessWidget {
  final VoidCallback? onPressed;
  final EdgeInsetsGeometry? padding;
  final String? buttonName;
  final double? fontSize;
  final Color? fontColor;
  final double? buttonRadius;
  final Color? buttonColor;
  final double? buttonHeight;
  final double buttonWidth;


  const AppButton(
      {Key? key,
      this.onPressed,
      this.padding,
      this.buttonName,
      this.fontSize,
      this.fontColor,
      this.buttonRadius,
       this.buttonColor= ColorConstant.appThemeColor,
      this.buttonHeight ,
      this.buttonWidth = double.infinity,
     })
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(10.0),
      child: ElevatedButton(
          onPressed: onPressed,
          style: ButtonStyle( minimumSize: MaterialStateProperty.all(Size(buttonWidth, buttonHeight ?? 45.px)),
            shape:
                 MaterialStateProperty.all<RoundedRectangleBorder>(
              RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(12.px),
              ),
            ),
            backgroundColor: MaterialStateProperty.all(buttonColor),),
          child: AppText(
            text: buttonName,fontSize: fontSize,color: Colors.white,
          )),
    );
  }
}
