import 'package:get/get.dart';

class LoginController extends GetxController {
  var phoneNumber = ''.obs;

  void updatePhoneNumber(String value) {
    phoneNumber.value = value;
  }

  void handleContinue() {
    if (phoneNumber.value.isNotEmpty) {
      // Perform login action or navigate
      Get.snackbar('Success', 'Phone number submitted: ${phoneNumber.value}');
    } else {
      Get.snackbar('Error', 'Phone number is required');
    }
  }
}
