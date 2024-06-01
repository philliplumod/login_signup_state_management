import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:login_signup_state_management/routes/routes.dart';

void main() {
  runApp(const MainApp());
}

class MainApp extends StatelessWidget {
  const MainApp({super.key});

  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      initialRoute: '/',
      getPages: routes,
    );
  }
}
