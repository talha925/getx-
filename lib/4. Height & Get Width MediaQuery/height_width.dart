import 'package:flutter/material.dart';
import 'package:get/get.dart';

class HeightWidth extends StatelessWidget {
  const HeightWidth({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          Container(
            height: Get.height * .3,
            width: Get.width * .8,
            color: Colors.amber,
          ),
          Container(
            height: Get.height * .2,
            width: Get.width * .6,
            color: Colors.red,
          ),
          Container(
            height: Get.height * .3,
            width: Get.width * .8,
            color: Colors.green,
          ),
        ],
      ),
    );
  }
}
