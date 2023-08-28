import 'package:flutter/material.dart';
import 'package:get/get.dart';

class SecondScreen extends StatefulWidget {
  var name;
  SecondScreen({super.key, this.name});

  @override
  State<SecondScreen> createState() => _SecondScreenState();
}

class _SecondScreenState extends State<SecondScreen> {
  @override
  Widget build(BuildContext context) {
    final arguments = Get.arguments ?? [];
    final argumentText = arguments.isNotEmpty ? arguments[1] : "No arguments";

    return Scaffold(
      appBar: AppBar(
        title: Text("Second Screen $argumentText"),
      ),
      backgroundColor: Colors.lightGreen,
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          TextButton(
            onPressed: () {
              Get.toNamed('/thirdScreen');
            },
            child: const Center(child: Text("Navigate to Third Screen")),
          ),
        ],
      ),
    );
  }
}
