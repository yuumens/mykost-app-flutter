// ignore_for_file: prefer_const_constructors, avoid_unnecessary_containers

import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:my_kost_app/controller/image_picker_controller.dart';

class ImagePickerPage extends StatefulWidget {
  const ImagePickerPage({super.key});

  @override
  State<ImagePickerPage> createState() => _ImagePickerPageState();
}

class _ImagePickerPageState extends State<ImagePickerPage> {
  ImageController controller = Get.put(ImageController());
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Obx(
        () => ListView.builder(
          itemCount: controller.imageList.length,
          itemBuilder: (context, index) {
            final imageFile = controller.imageList[index];
            return Container(
              child: Column(
                children: [
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Image.file(
                        imageFile,
                        width: 200,
                        height: 300,
                      ),
                      IconButton(
                        icon: Icon(Icons.delete),
                        onPressed: () {
                          controller.removeImage(index);
                        },
                      ),
                    ],
                  ),
                ],
              ),
            );
          },
        ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          controller.showImageSourceDialog();
        },
        child: Icon(Icons.add),
      ),
    );
  }
}
