import 'package:flutter/material.dart';
import 'package:get/get.dart';

class SignUp extends StatelessWidget {
  const SignUp({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Sign Up'),
        backgroundColor: Colors.blue,
        elevation: 1,
        automaticallyImplyLeading: false,
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          children: [
            const Text('Sign Up'),
            ElevatedButton(
              onPressed: () {
                Get.back();
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
