import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:shayri_app/constant/color_constant.dart';

class CustomAppbar extends StatefulWidget {
  const CustomAppbar({Key? key}) : super(key: key);

  @override
  State<CustomAppbar> createState() => _CustomAppbarState();
}

class _CustomAppbarState extends State<CustomAppbar> {
  @override
  Widget build(BuildContext context) {
    return  Container(
      decoration:  BoxDecoration(
        color: ColorConstant.pink,
        borderRadius:  BorderRadius.vertical(
            bottom:  Radius.elliptical(
                MediaQuery.of(context).size.width,100.0)),
      ),
    );
  }
}
