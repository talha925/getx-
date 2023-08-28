import 'package:flutter/material.dart';
import 'package:get/get.dart';

import 'example_two_controller.dart';

class ExampleTwoScreen extends StatefulWidget {
  const ExampleTwoScreen({super.key});

  @override
  State<ExampleTwoScreen> createState() => _ExampleTwoScreenState();
}

class _ExampleTwoScreenState extends State<ExampleTwoScreen> {
  // double opacity = 0.5;
  final ExampleTwoController controller = Get.put(ExampleTwoController());

  @override
  Widget build(BuildContext context) {
    print("build");
    return Scaffold(
      appBar: AppBar(),
      body: Column(
        children: [
          Obx(() {
            return Container(
              color: Colors.red.withOpacity(controller.opacity.value),
              height: 200,
              width: 200,
            );
          }),
          Obx(() {
            return Slider(
                value: controller.opacity.value,
                onChanged: (value) {
                  controller.changeSliderOpacity(value);
                  print(value);
                });
          })
        ],
      ),
    );
  }
}
