import 'package:get/get.dart';

class LoginController extends GetxController {
  var phoneNumber = ''.obs;

  void updatePhoneNumber(String value) {
    phoneNumber.value = value;
  }

  void handleContinue() {
    if (phoneNumber.value.isNotEmpty) {
      Get.toNamed('/home');
    } else {
      Get.snackbar('Error', 'Phone number is required');
    }
  }
}
