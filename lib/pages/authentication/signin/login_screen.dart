import 'package:flutter/material.dart';
import 'package:responsive_sizer/responsive_sizer.dart';
import 'package:shayri_app/app/constant/string_constant.dart';
import 'package:shayri_app/app/widgets/app_elevated_button.dart';
import 'package:shayri_app/app/widgets/app_text.dart';
import 'package:shayri_app/app/widgets/app_textfromfeild.dart';
import 'package:shayri_app/app/widgets/common_appbar.dart';
import 'package:shayri_app/pages/authentication/signup/sign_up_screen.dart';
import 'package:shayri_app/services/authentication_services.dart';

class LoginScreen extends StatefulWidget {
  const LoginScreen({Key? key}) : super(key: key);

  @override
  State<LoginScreen> createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
  var emailController = TextEditingController();
  var passwordController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: CommonAppbar(),
      body: Padding(
        padding: const EdgeInsets.all(15.0),
        child: SingleChildScrollView(
          child: Column(
            children: [
              const SizedBox(
                height: 150,
              ),
              AppTextFormField(controller: emailController,
                hintText: StringConstant.enterPassword,
              ),
              AppTextFormField(controller: passwordController,
                hintText: StringConstant.enterPassword,
              ),
              AppButton(
                onPressed: () => _onLogin(),
                buttonName: StringConstant.login,
                fontSize: 15.px,
              ),
              const SizedBox(
                height: 15,
              ),
              const AppText(
                text: StringConstant.notHaveAccount,
              ),
              AppButton(
                onPressed: () {
                  Navigator.push(context, MaterialPageRoute(
                    builder: (context) {
                      return const SignUpScreen();
                    },
                  ));
                },
                buttonName: StringConstant.regester,
                fontSize: 15.px,
              )
            ],
          ),
        ),
      ),
    );
  }

  _onLogin() async {
    final data = await AuthService()
        .signIn(email: emailController.text, password: passwordController.text);
    if (data!.contains('sucess')) {
      // ignore: use_build_context_synchronously
      showDialog(
        context: context,
        builder: (context) {
          Future.delayed(const Duration(seconds: 2), () {
            Navigator.of(context).pop(true);
          });

          return AlertDialog(
            title: const Text("Welcome!!"),
            actions: [Text(emailController.text)],
          );
        },
      );
      emailController.clear();
      passwordController.clear();
    } else {
      ScaffoldMessenger.of(context)
          .showSnackBar(SnackBar(content: Text("$data")));
    }
  }
}
