import 'package:flutter/material.dart';
import 'package:responsive_sizer/responsive_sizer.dart';
import 'package:shayri_app/app/constant/assets_constant.dart';
import 'package:shayri_app/app/constant/color_constant.dart';
import 'package:shayri_app/app/widgets/app_image.dart';

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

  const AppTextFormField(
      {Key? key,
      this.maxLines,
      this.onChanged,
      this.initialValue,
      this.controller,
      this.hintText,
      this.keyboardType,
      this.onFieldSubmitted,
      this.focusNode,
      this.readOnly,
      this.obscureText = false,
      this.validator})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        boxShadow: const [
          BoxShadow(color: ColorConstant.appGrey, blurRadius: 2.0)
        ],
        borderRadius: BorderRadius.circular(12.px),
      ),
      child: Row(
        children: [
          const AppImage(image: AssetConstant.search),
          TextFormField(
            textAlign: TextAlign.start,
            cursorColor: ColorConstant.appGrey,
            decoration: InputDecoration(
              border: InputBorder.none,
              focusedBorder: InputBorder.none,
              hintText: hintText,
              hintStyle:
                  const TextStyle(color: ColorConstant.appWhite, fontFamily: 'Montserrat'),
            ),
            controller: controller,
            keyboardType: keyboardType,
            focusNode: focusNode,
            maxLines: maxLines,
            onChanged: onChanged,
            obscureText: obscureText,
          ),
        ],
      ),
    );
  }
}
