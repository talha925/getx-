import 'package:flutter/material.dart';
import 'package:get/get.dart';

class NavigateRoute extends StatefulWidget {
  const NavigateRoute({super.key});

  @override
  State<NavigateRoute> createState() => _NavigateRouteState();
}

class _NavigateRouteState extends State<NavigateRoute> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Center(child: Text("Screen One")),
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          TextButton(
            onPressed: () {
              // Get.to(SecondScreen(name: "Talha"));
              Get.toNamed('/secondScreen', arguments: [
                "Hello!!",
                "TAlha",
              ]);
            },
            child: const Center(
                child: Text(
              "screen one",
            )),
          ),
        ],
      ),
    );
  }
}
