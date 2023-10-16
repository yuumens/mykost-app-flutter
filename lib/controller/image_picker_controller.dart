// ignore_for_file: prefer_const_constructors

import 'dart:io';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:image_picker/image_picker.dart';

class ImageController extends GetxController {
  var imageList = <File>[].obs;
  RxList<File> get _imageList => imageList;
  final ImagePicker _imagePicker = ImagePicker();

  void pickImageFromGallery() async {
    final imageFile = await _imagePicker.pickImage(source: ImageSource.gallery);
    if (imageFile != null) {
      _imageList.add(File(imageFile.path));
    }
  }

  void pickImageFromCamera() async {
    final imageFile = await _imagePicker.pickImage(source: ImageSource.camera);
    if (imageFile != null) {
      _imageList.add(File(imageFile.path));
    }
  }

  void removeImage(int index) {
    _imageList.removeAt(index);
  }

  Future<void> showImageSourceDialog() {
    return Get.defaultDialog(
      title: 'Select Image Source',
      titleStyle: TextStyle(
        fontFamily: 'Plus Jakarta Sans',
        fontSize: 16,
        fontWeight: FontWeight.w600,
      ),
      content: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          ElevatedButton(
            style: ElevatedButton.styleFrom(
              backgroundColor: Color(0xFFE5BA73),
            ),
            onPressed: () {
              Get.back();
              pickImageFromGallery();
            },
            child: Text(
              'Gallery',
              style: TextStyle(
                fontFamily: 'Plus Jakarta Sans',
                fontSize: 14,
                fontWeight: FontWeight.w400,
                color: Colors.black,
              ),
            ),
          ),
          SizedBox(width: 20),
          ElevatedButton(
            style: ElevatedButton.styleFrom(
              backgroundColor: Color(0xFFE5BA73),
            ),
            onPressed: () {
              Get.back();
              pickImageFromCamera();
            },
            child: Text(
              'Camera',
              style: TextStyle(
                fontFamily: 'Plus Jakarta Sans',
                fontSize: 14,
                fontWeight: FontWeight.w400,
                color: Colors.black,
              ),
            ),
          ),
        ],
      ),
    );
  }
}
