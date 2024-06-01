import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:login_signup_state_management/widgets/button.dart';
import 'package:login_signup_state_management/widgets/text_email_field.dart';
import 'package:login_signup_state_management/widgets/text_heading.dart';
import 'package:login_signup_state_management/widgets/text_password_field.dart';

class SignUp extends StatefulWidget {
  const SignUp({super.key});

  @override
  State<SignUp> createState() => _SignUpState();
}

class _SignUpState extends State<SignUp> {
  @override
  Widget build(BuildContext context) {
    TextEditingController emailRegisterController = TextEditingController();
    TextEditingController nameRegisterController = TextEditingController();
    TextEditingController passwordRegisterController = TextEditingController();
    return Scaffold(
      appBar: AppBar(
        title: const Text('Sign In'),
        backgroundColor: Colors.blue,
        elevation: 1,
        automaticallyImplyLeading: false,
      ),
      body: Container(
        margin: const EdgeInsets.only(top: 50),
        child: Center(
          child: Column(
            children: [
              Container(
                  margin: const EdgeInsets.only(bottom: 100),
                  child: const TitleText(title: 'Sign In')),
              CustomTextEmailField(
                label: 'Email',
                hint: 'Enter your email',
                controller: emailRegisterController,
              ),
              CustomTextEmailField(
                label: 'Name',
                hint: 'Enter your name',
                controller: nameRegisterController,
              ),
              CustomTextPasswordField(
                controller: passwordRegisterController,
              ),
              CustomElevatedButton(
                  label: 'Create an Account', onPressed: () {}),
              CustomElevatedButton(
                  label: 'Sign In',
                  onPressed: () {
                    Get.back();
                  })
            ],
          ),
        ),
      ),
    );
  }
}
