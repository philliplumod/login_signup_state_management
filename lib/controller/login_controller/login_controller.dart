import 'dart:convert';

import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:http/http.dart';

class LoginController extends GetxController {
  final emailLoginController = TextEditingController().obs;
  final passwordLoginController = TextEditingController().obs;
  RxBool loading = false.obs;
  void loginApi() async {
    loading.value = true;
    try {
      final response = await post(
        Uri.parse('https://reqres.in/api/login'),
        body: {
          'email': emailLoginController.value.text,
          'password': passwordLoginController.value.text,
        },
      );
      var data = jsonDecode(response.body);
      debugPrint(response.statusCode.toString());

      if (response.statusCode == 200) {
        loading.value = false;
        Get.snackbar('Success', data['  ']);
      } else {
        loading.value = false;

        Get.snackbar('Error', data['error']);
      }
    } catch (e) {
      loading.value = false;

      Get.snackbar('Error', e.toString());
      debugPrint(e.toString());
    }
  }
}
