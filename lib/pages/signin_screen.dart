import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:login_signup_state_management/controller/login_controller/login_controller.dart';
import 'package:login_signup_state_management/widgets/button.dart';
import 'package:login_signup_state_management/widgets/text_heading.dart';
import 'package:login_signup_state_management/widgets/text_email_field.dart';
import 'package:login_signup_state_management/widgets/text_password_field.dart';

class SignIn extends StatefulWidget {
  const SignIn({super.key});

  @override
  State<SignIn> createState() => _SignInState();
}

class _SignInState extends State<SignIn> {
  @override
  Widget build(BuildContext context) {
    LoginController controller = Get.put(LoginController());

    // TextEditingController emailLoginController = TextEditingController();
    // TextEditingController passwordLoginController = TextEditingController();
    return Scaffold(
      appBar: AppBar(
        title: const Text('Sign In'),
        backgroundColor: Colors.blue,
        elevation: 1,
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
                controller: controller.emailLoginController.value,
              ),
              CustomTextPasswordField(
                controller: controller.passwordLoginController.value,
              ),
              CustomElevatedButton(
                  label: 'Login',
                  onPressed: () {
                    controller.loginApi();
                    debugPrint(controller.toString());
                  }),
              CustomElevatedButton(
                  label: 'Sign Up',
                  onPressed: () {
                    Get.toNamed('/signUp');
                  })
            ],
          ),
        ),
      ),
    );
  }
}
