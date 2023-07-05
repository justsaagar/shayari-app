import 'package:flutter/material.dart';
import 'package:responsive_sizer/responsive_sizer.dart';
import 'package:shayri_app/app/constant/color_constant.dart';
import 'package:shayri_app/app/constant/string_constant.dart';

class AppTextFormField extends StatelessWidget {
  final TextEditingController? controller;
  final String? hintText;
  final TextInputType? keyboardType;
  final Function? validator;
  final FocusNode? focusNode;
  final Function? onFieldSubmitted;
  final String? initialValue;
  final bool? readOnly;
  final bool obscureText;
  final ValueChanged<String>? onChanged;
  final int? maxLines;
  final Padding? contantPadding;
  final Widget? suffixIcon;
  final GestureTapCallback? onTap;

  AppTextFormField({
    Key? key,
    this.maxLines = 1,
    this.onChanged,
    this.initialValue,
    this.controller,
    this.hintText,
    this.keyboardType,
    this.onFieldSubmitted,
    this.focusNode,
    this.readOnly,
    this.onTap,
    this.contantPadding,
    this.suffixIcon,
    this.obscureText = false,
    this.validator,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(10.0),
      child: Container(
        decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(12.px),
            border: Border.all(color: ColorConstant.appGrey)),
        child: Row(
          children: [
            // Expanded(child: const AppImage(image: AssetConstant.search)),
            Expanded(
              child: TextFormField(
                textAlign: TextAlign.start,
                cursorColor: ColorConstant.appGrey,
                decoration: InputDecoration(
                  border: InputBorder.none,
                  focusedBorder: InputBorder.none,
                  hintText: hintText,
                  suffixIcon: suffixIcon,
                  contentPadding: EdgeInsets.all(8.0),
                  hintStyle: const TextStyle(
                      color: ColorConstant.appGrey, fontFamily: StringConstant.montserrat),
                ),
                controller: controller,
                keyboardType: keyboardType,
                focusNode: focusNode,
                maxLines: maxLines,
                onChanged: onChanged,
                obscureText: obscureText,
                onTap: onTap,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
