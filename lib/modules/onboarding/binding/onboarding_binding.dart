import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../view/onboarding_view.dart';

class OnBoarding extends StatelessWidget {
  const OnBoarding({super.key});

  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      title: 'Gojek Welcome Page',
      theme: ThemeData(primarySwatch: Colors.green),
      home: OnboardingView(),
    );
  }
}
