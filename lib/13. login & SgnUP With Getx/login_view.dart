import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:getx_app_prac/13.%20login%20&%20SgnUP%20With%20Getx/contoller.dart';

class LoginView extends StatefulWidget {
  const LoginView({super.key});

  @override
  State<LoginView> createState() => _LoginViewState();
}

class _LoginViewState extends State<LoginView> {
  final controller = Get.put(ApiController());
  @override
  Widget build(BuildContext context) {
    print("object");
    return Scaffold(
      appBar: AppBar(),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Padding(
              padding: const EdgeInsets.symmetric(horizontal: 20),
              child: // Note: Same code is applied for the TextFormField as well
                  TextField(
                controller: controller.emailController.value,
                decoration: InputDecoration(
                  hintText: "Email",
                  enabledBorder: OutlineInputBorder(
                    borderSide: const BorderSide(
                        width: 0.3, color: Colors.black), //<-- SEE HERE
                    borderRadius: BorderRadius.circular(12.0),
                  ),
                ),
              )),
          const SizedBox(
            height: 10,
          ),
          Padding(
              padding: const EdgeInsets.symmetric(horizontal: 20),
              child: // Note: Same code is applied for the TextFormField as well
                  TextField(
                controller: controller.passwordController.value,
                decoration: InputDecoration(
                  hintText: "Password",
                  enabledBorder: OutlineInputBorder(
                    borderSide: const BorderSide(
                        width: 0.3, color: Colors.black), //<-- SEE HERE
                    borderRadius: BorderRadius.circular(12.0),
                  ),
                ),
              )),
          const SizedBox(
            height: 10,
          ),
          Obx(() => controller.loading.value
              ? CircularProgressIndicator()
              : Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 20),
                  child: ElevatedButton(
                    onPressed: () {
                      controller.loginApi();
                      print("controller.loginApi()");
                    },
                    child: Container(
                      height: 40,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(12),
                      ),
                      child: const Center(child: Text("Login")),
                    ),
                  ),
                ))
        ],
      ),
    );
  }
}
