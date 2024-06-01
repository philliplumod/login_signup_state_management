  import 'package:get/get.dart';
  import 'package:login_signup_state_management/pages/home_screen.dart';
  import 'package:login_signup_state_management/pages/signin_screen.dart';
  import 'package:login_signup_state_management/pages/signup_screen.dart';

  final routes = [
    GetPage(name: '/', page: () => const SignIn()),
    GetPage(name: '/signUp', page: () => const SignUp()),
    GetPage(name: '/homescreen', page: () => const Homescreen()),
  ];
