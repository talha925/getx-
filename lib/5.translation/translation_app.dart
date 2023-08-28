import 'package:flutter/material.dart';
import 'package:get/get.dart';

class TranslationsApp extends StatefulWidget {
  const TranslationsApp({super.key});

  @override
  State<TranslationsApp> createState() => _TranslationsAppState();
}

class _TranslationsAppState extends State<TranslationsApp> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Card(
            child: ListTile(
              title: Text('message'.tr),
              subtitle: Text('name'.tr),
            ),
          ),
          const SizedBox(
            height: 30,
          ),
          Row(
            children: [
              ElevatedButton(
                  onPressed: () {
                    Get.updateLocale(const Locale('en', 'Us'));
                  },
                  child: const Text("English")),
              const SizedBox(
                width: 10,
              ),
              ElevatedButton(
                  onPressed: () {
                    Get.updateLocale(const Locale('ur', 'PK'));
                  },
                  child: const Text("Urdu")),
            ],
          )
        ],
      ),
    );
  }
}
