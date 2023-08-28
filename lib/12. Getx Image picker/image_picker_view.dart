import 'dart:io';

import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:getx_app_prac/12.%20Getx%20Image%20picker/image_picker_controller.dart';

class ImagePicker extends StatefulWidget {
  const ImagePicker({super.key});

  @override
  State<ImagePicker> createState() => _ImagePickerState();
}

class _ImagePickerState extends State<ImagePicker> {
  ImagePickerController imagePickerController =
      Get.put(ImagePickerController());
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Image Picker Example'),
      ),
      body: Obx(() {
        return Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Center(
              child: CircleAvatar(
                  radius: 100,
                  backgroundImage:
                      imagePickerController.imagePath.value.isNotEmpty
                          ? FileImage(File(
                              imagePickerController.imagePath.value.toString()))
                          : null),
            ),
            Center(
              child: TextButton(
                  onPressed: () {
                    imagePickerController.getImage();
                  },
                  child: const Text("Pick Image")),
            )
          ],
        );
      }),
    );
  }
}
