import 'package:flutter/material.dart';
import 'package:intl/intl.dart';
import 'package:responsive_sizer/responsive_sizer.dart';
import 'package:shayri_app/app/widgets/app_elevated_button.dart';
import 'package:shayri_app/app/widgets/app_textfromfeild.dart';
import 'package:shayri_app/app/widgets/common_appbar.dart';
import 'package:shayri_app/services/authentication_services.dart';
import 'package:shayri_app/services/database_service.dart';

class SignUpScreen extends StatefulWidget {
  const SignUpScreen({Key? key}) : super(key: key);

  @override
  State<SignUpScreen> createState() => _SignUpScreenState();
}

class _SignUpScreenState extends State<SignUpScreen> {
  bool _passwordVisible = false;
  var emailController = TextEditingController();
  var passwordController = TextEditingController();
  var confirmPasswordController = TextEditingController();
  var firstnameController = TextEditingController();
  var lastnameController = TextEditingController();
  var dateController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: CommonAppbar(),
      body: SingleChildScrollView(
        child: Form(
          child: Column(
            children: [
              AppTextFormField(
                controller: firstnameController,
                hintText: 'Enter Firstname',
              ),
              AppTextFormField(
                controller: lastnameController,
                hintText: 'Enter Lastname',
              ),
              AppTextFormField(
                controller: emailController,
                hintText: 'Enter Email',
              ),
              AppTextFormField(onTap: () => _showDatePicker(),
                readOnly: true,
                controller: dateController,
                hintText: 'Date of Birth',
              ),
              AppTextFormField(
                controller: passwordController,
                obscureText: _passwordVisible,
                hintText: 'Enter Password',
                suffixIcon: IconButton(
                  icon: Icon(
                    _passwordVisible ? Icons.visibility_off : Icons.visibility,
                    color: Colors.grey,
                  ),
                  onPressed: () {
                    setState(() {
                      _passwordVisible = !_passwordVisible;
                    });
                  },
                ),
              ),
              AppTextFormField(
                controller: confirmPasswordController,
                obscureText: _passwordVisible,
                hintText: 'Enter Confirm Password',
                suffixIcon: IconButton(
                  icon: Icon(
                    _passwordVisible ? Icons.visibility_off : Icons.visibility,
                    color: Colors.grey,
                  ),
                  onPressed: () {
                    setState(() {
                      _passwordVisible = !_passwordVisible;
                    });
                  },
                ),
              ),

              AppButton(
                buttonName: 'Regester',
                onPressed: () => _onSubmit(),
              )
            ],
          ),
        ),
      ),
    );
  }

  _showDatePicker() async {
    DateTime? pickedDate = await showDatePicker(
        context: context,
        initialDate: DateTime.now(),
        firstDate: DateTime(2000),
        lastDate: DateTime(2101));
    if (pickedDate != null) {
      String formattedDate = DateFormat('dd-MM-yyyy').format(pickedDate);
      setState(() {
        dateController.text = formattedDate;
      });
    } else {
      print("Date is not selected");
    }
  }

  _onSubmit() async {
    final result = await AuthService().signUp(
        email: emailController.text,
        password: passwordController.text);
    DatabaseService().addUser(
        email: emailController.text,
        password: passwordController.text,
        date: dateController.text,
        firstname: firstnameController.text,
        lastname: lastnameController.text);
    if (result!.contains('sucess')) {
      print("Successfully add user");
    }
  }
}
