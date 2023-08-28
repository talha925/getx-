import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get/get_navigation/get_navigation.dart';
import 'package:getx_app_prac/13.%20login%20&%20SgnUP%20With%20Getx/login_view.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      // translations: Language(), // translation 5.foler topic
      // fallbackLocale: const Locale('en', 'Us'),
      // locale: const Locale('en', 'Us'),
      debugShowCheckedModeBanner: false,
      home: const LoginView(),
      // getPages: [
      //   GetPage(name: "/", page: () => NavigateRoute()),
      //   GetPage(name: "/secondScreen", page: () => SecondScreen()),
      //   GetPage(name: "/thirdScreen", page: () => ThirdScreen()),
      // ],
    );
  }
}
