import 'package:flutter/material.dart';
import 'package:get/get.dart';

class HomeView extends StatefulWidget {
  const HomeView({super.key});

  @override
  State<HomeView> createState() => _HomeViewState();
}

class _HomeViewState extends State<HomeView> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      floatingActionButton: FloatingActionButton(onPressed: () {}),
      body: Column(
        children: [
          Card(
            child: ListTile(
                title: const Text("Getx Dialog Box"),
                subtitle: const Text("Getx Dialog Alert with getx "),
                onTap: () {
                  Get.defaultDialog(
                      titlePadding: const EdgeInsets.only(top: 20),
                      title: "DELETE CHAT",
                      contentPadding: const EdgeInsets.all(20),
                      middleText: "Are You Sure. You want to delete this chat ",
                      // content: Column(
                      //   children: [
                      //     Text("Hellooo"),
                      //     Text("Hellooo"),
                      //     Text("Hellooo"),
                      //     Text("Hellooo"),
                      //     Text("Hellooo"),
                      //     Text("Hellooo"),
                      //   ],
                      // ),
                      confirm: TextButton(
                          onPressed: () {}, child: const Text("Delete")),
                      textCancel: "Cancel");
                }),
          ),
          Card(
            child: ListTile(
                title: const Text("Getx Dialog Box"),
                subtitle: const Text("Getx Dialog Alert with getx "),
                onTap: () {
                  Get.bottomSheet(Container(
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(30),
                      color: Colors.amber,
                    ),
                    child: Column(
                      children: [
                        ListTile(
                          leading: const Icon(Icons.light_mode),
                          title: const Text("Light Theme"),
                          onTap: () {
                            Get.changeTheme(
                                ThemeData.light()); //change theme light mode
                          },
                        ),
                        ListTile(
                          leading: const Icon(Icons.dark_mode),
                          title: const Text("Dark Theme"),
                          onTap: () {
                            Get.changeTheme(
                                ThemeData.dark()); //change theme dark mode
                          },
                        ),
                      ],
                    ),
                  ));
                }),
          )
        ],
      ),
    );
  }
}
