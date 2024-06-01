import 'package:flutter/material.dart';
import 'package:get/get.dart';

class SignIn extends StatelessWidget {
  const SignIn({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: const Text('Sign In'),
          backgroundColor: Colors.blue,
          elevation: 1,
        ),
        body: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              const SizedBox(height: 20),
              const Text('Sign In'),
              ElevatedButton(
                onPressed: () {
                  Get.toNamed('/signUp');
                },
                child: const Text('Sign Up'),
              ),
              ElevatedButton(
                onPressed: () {
                  Get.toNamed('/homescreen');
                },
                child: const Text('Home Screen'),
              ),
            ],
          ),
        ),
        
        );
  }
}
