import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:getx_app_prac/8.%20couter%20app%20example%20getx/counter_controller.dart';

class CounterScreen extends StatefulWidget {
  const CounterScreen({super.key});

  @override
  State<CounterScreen> createState() => _CounterScreenState();
}

class _CounterScreenState extends State<CounterScreen> {
  // int x = 0;
  final CounterController controller = Get.put(CounterController());
  @override
  Widget build(BuildContext context) {
    // print("Rebuild");
    return Scaffold(
      appBar: AppBar(),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          // obx function is show the changes of screen in real time
          Center(child: Obx(() {
            return Text(
              controller.x.toString(),
              // ignore: prefer_const_constructors
              style: TextStyle(fontSize: 35),
            );
          }))
        ],
      ),
      floatingActionButton: FloatingActionButton(onPressed: () {
        // x++;
        controller.increment();
      }),
    );
  }
}
