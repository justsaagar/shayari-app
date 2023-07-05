import 'package:flutter/material.dart';
import 'package:responsive_sizer/responsive_sizer.dart';
import 'package:shayri_app/app/constant/asset_constant.dart';
import 'package:shayri_app/app/constant/color_constant.dart';
import 'package:shayri_app/app/widgets/app_image.dart';
import 'package:shayri_app/app/widgets/app_text.dart';
import 'package:shayri_app/app/widgets/common_appbar.dart';

class LoginPage extends StatefulWidget {
  const LoginPage({super.key});

  @override
  State<LoginPage> createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: CommonAppbar(
        appBarHeight: 0.px,
      ),
      drawer: Drawer(
        shape:  RoundedRectangleBorder(
          borderRadius: BorderRadius.only(
              topRight: Radius.circular(28.px), bottomRight: Radius.circular(28.px)),
        ),
        child: Stack(
          children: [
            const AppImage(
              image: AssetConstant.drawerBackImage,
              fit: BoxFit.fill,
            ),
            Column(
              children: [
                Padding(
                  padding: EdgeInsets.symmetric(horizontal: 25.px)
                      .copyWith(top: 50.px),
                  child:  Row(
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: [
                      AppText(
                        text: 'LOGO',
                        color: ColorConstant.appWhite,
                        fontSize: 15.px,
                        fontWeight: FontWeight.w600,
                        fontFamily: 'Montserrat',
                      ),
                      Spacer(),
                      AppImage(image: AssetConstant.close, fit: BoxFit.fill),
                    ],
                  ),
                ),
                Padding(
                  padding: EdgeInsets.only(top: 80.px),
                  child: Container(
                    decoration: BoxDecoration(
                        color: Colors.green,
                        borderRadius: BorderRadius.circular(50.px)),
                    height: 100.px,
                    width: 100.px,
                  ),
                ),
                SizedBox(height: 12.px),
                AppText(
                  text: 'Naimish Tanti',
                  fontWeight: FontWeight.w700,
                  fontSize: 14.px,
                ),
                SizedBox(
                  height: 5.px,
                ),
                AppText(
                  text: 'Hello I am a Flutter Developer',
                  fontWeight: FontWeight.w500,
                  fontSize: 11.px,
                ),
              ],
            ),
            ListView(
              children: [
                ListTile(
                  leading: Icon(Icons.home),
                  title: Text("Home"),
                ),
                ListTile(
                  leading: Icon(Icons.category),
                  title: Text("Home"),
                ),
              ],
            )

          ],
        ),
      ),
    );
  }
}
