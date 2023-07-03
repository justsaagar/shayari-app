import 'package:flutter/cupertino.dart';
import 'package:responsive_sizer/responsive_sizer.dart';
import 'package:shayri_app/constant/color_constant.dart';

class AppButton extends StatelessWidget {
  final Widget? child;
  final Color? color;

  const AppButton({
    Key? key,
    required this.child,
    this.color,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.all(8.0),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(8),
        color: color ?? ColorConstant.pink,
        border: Border.all(color: ColorConstant.pink),
      ),
      height: 45.px,
      width: double.infinity,
      alignment: Alignment.center,
      child: child,
    );
  }
}
