import 'package:flutter/material.dart';
import 'package:get/get.dart';
import '../controller/login_controller.dart';

class PhoneInputField extends StatelessWidget {
  final LoginController controller = Get.find<LoginController>();

  PhoneInputField({super.key});

  @override
  Widget build(BuildContext context) {
    return TextField(
      keyboardType: TextInputType.phone,
      onChanged: controller.updatePhoneNumber,
      decoration: InputDecoration(
        prefixIcon: const Row(
          mainAxisSize: MainAxisSize.min,
          children: [
            SizedBox(width: 12),
            Text(
              '+62',
              style: TextStyle(
                fontSize: 16,
                fontWeight: FontWeight.bold,
              ),
            ),
            SizedBox(width: 12),
            VerticalDivider(color: Colors.grey),
          ],
        ),
        hintText: 'Phone number',
        border: OutlineInputBorder(
          borderRadius: BorderRadius.circular(8),
          borderSide: BorderSide(color: Colors.grey.shade300),
        ),
        focusedBorder: OutlineInputBorder(
          borderRadius: BorderRadius.circular(8),
          borderSide: const BorderSide(color: Colors.green),
        ),
        suffixIcon: IconButton(
          icon: const Icon(Icons.info_outline, color: Colors.grey),
          onPressed: () {},
        ),
      ),
    );
  }
}
