import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../widget/button.dart';
import '../widget/input_field.dart';
import '../widget/input_title.dart';

class LoginView extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.white,
        elevation: 0,
        leading: IconButton(
          icon: const Icon(Icons.arrow_back, color: Colors.black),
          onPressed: () {
            Get.back();
          },
        ),
        actions: [
          TextButton(
            onPressed: () {
              // Handle skip button
            },
            child: const Text('Skip'),
          ),
        ],
      ),
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 16.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              const LoginTitle(),
              const SizedBox(height: 24),
              PhoneInputField(),
              const SizedBox(height: 24),
              ContinueButton(),
            ],
          ),
        ),
      ),
    );
  }
}
