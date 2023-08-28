import 'dart:convert';

import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:http/http.dart';

class ApiController extends GetxController {
  final emailController = TextEditingController().obs;
  final passwordController = TextEditingController().obs;
  RxBool loading = false.obs;

  void loginApi() async {
    loading.value = true;
    try {
      final respone =
          await post(Uri.parse("https://reqres.in/api/login"), body: {
        "email": emailController.value.text,
        "password": passwordController.value.text,
      });

      var data = jsonDecode(respone.body);

      if (respone.statusCode == 200) {
        loading.value = false;
        Get.snackbar("Login Succesful", "congratulation");
      } else {
        loading.value = false;
        Get.snackbar("Login Failed", data['error']);
      }
    } catch (e) {
      loading.value = false;
      Get.snackbar("Exception", e.toString());
    }
  }
}
