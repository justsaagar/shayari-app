import 'package:flutter/material.dart';
import 'package:shayri_app/app/widgets/app_text.dart';

class AppElevatedButton extends StatelessWidget {
  final VoidCallback? onPressed;
  final EdgeInsetsGeometry padding;
  final String? buttonName;
  final double? fontSize;
  final Color? fontColor;
  final double? buttonRadius;
  final Color? buttonColor;
  final double? buttonHeight;
  final double buttonWidth;
  final bool isBorderShape;

  const AppElevatedButton(
      {Key? key,
      this.onPressed,
      this.padding = EdgeInsets.zero,
      this.buttonName,
      this.fontSize,
      this.fontColor,
      this.buttonRadius,
       this.buttonColor,
      this.buttonHeight,
      this.buttonWidth = double.infinity,
      this.isBorderShape = false})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
        onPressed: onPressed,
        child: AppText(
          text: buttonName,
        ));
  }
}
