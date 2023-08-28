import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:getx_app_prac/3.%20Navigate%20&%20rountes/second_screen.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Getxx App"),
      ),
      floatingActionButton: FloatingActionButton(
          child: const Icon(Icons.add),
          onPressed: () {
            Get.snackbar("Talha", "Kiya haal hain?",
                mainButton: TextButton(
                    onPressed: () {
                      Get.to(SecondScreen());
                    },
                    child: const Text("See All")),
                backgroundColor: Colors.grey[200],
                colorText: Colors.black);
          }),
    );
  }
}
