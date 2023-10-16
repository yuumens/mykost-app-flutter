import 'package:get/get.dart';

class ProfilePageController extends GetxController {
  final isPressed = false.obs;

  void isPressedClick() {
    isPressed.value = !isPressed.value;
  }
}
