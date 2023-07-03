import 'package:flutter/material.dart';
import 'package:shayri_app/constant/color_constant.dart';
import 'package:shayri_app/widgets/app_button.dart';
import 'package:shayri_app/widgets/app_text.dart';
import 'package:shayri_app/widgets/custum_appbar.dart';

class LoginScreen extends StatefulWidget {
  const LoginScreen({Key? key}) : super(key: key);

  @override
  State<LoginScreen> createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
  @override
  Widget build(BuildContext context) {
    return const SafeArea(
        child: Scaffold(
            appBar: PreferredSize(
              preferredSize: Size.fromHeight(150.0),
              child: CustomAppbar(),
            ),
            body: SingleChildScrollView(
              child: Form(
                child: Column(
                  children: [
                    SizedBox(
                      height: 200,
                    ),
                    AppButton(
                      child: AppText(text: "Login", color: Colors.white),
                    ),
                    AppButton(
                      color: Colors.white,
                      child: AppText(
                        text: "Register",
                      ),
                    ),

                  ],
                ),
              ),
            )));
  }
}
