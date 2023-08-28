import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:getx_app_prac/10.%20GetX-Example-Three/example_three_controller.dart';

class ExampleThreeScreen extends StatefulWidget {
  const ExampleThreeScreen({super.key});

  @override
  State<ExampleThreeScreen> createState() => _ExampleTwoScrhreenState();
}

class _ExampleTwoScrhreenState extends State<ExampleThreeScreen> {
  // bool _button = false;
  final ExampleThreeController exampleThreeController =
      Get.put(ExampleThreeController());
  @override
  Widget build(BuildContext context) {
    print("rebuild");
    return Scaffold(
      body: Column(
        children: [
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Card(
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  const Text("Notifications"),
                  Obx(() => Switch(
                      value: exampleThreeController.notificatioin.value,
                      onChanged: (value) {
                        exampleThreeController.setNotification(value);
                        print(value);
                      }))
                ],
              ),
            ),
          )
        ],
      ),
    );
  }
}
