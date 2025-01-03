import 'package:cots_2211104030_afadfathmusyarofhalim/modules/main/pesanan/binding/orders_binding.dart';
import 'package:cots_2211104030_afadfathmusyarofhalim/modules/main/pesanan/view/orders_view.dart';
import 'package:cots_2211104030_afadfathmusyarofhalim/modules/main/promo/binding/promo_binding.dart';
import 'package:cots_2211104030_afadfathmusyarofhalim/modules/main/promo/view/promo_view.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

import 'modules/login/binding/login_binding.dart';
import 'modules/login/view/login_view.dart';

import 'modules/main/home/binding/home_binding.dart';
import 'modules/main/home/view/home_view.dart';
import 'modules/onboarding/view/onboarding_view.dart';
import 'modules/onboarding/binding/onboarding_binding.dart';

void main() {
  runApp(const MainApp());
}

class MainApp extends StatelessWidget {
  const MainApp({super.key});

  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      initialRoute: '/onboarding',
      getPages: [
        // Onboarding Page
        GetPage(
          name: '/onboarding',
          page: () => OnboardingView(),
          binding: OnboardingBinding(),
        ),
        // Login Page
        GetPage(
          name: '/login',
          page: () => LoginView(),
          binding: LoginBinding(),
        ),
        GetPage(
          name: '/home',
          page: () => HomeView(),
          binding: HomeBinding(),
        ),
        GetPage(
          name: '/promo',
          page: () => PromoView(),
          binding: PromoBinding(),
        ),
        GetPage(
          name: '/order',
          page: () => OrdersView(),
          binding: OrdersBinding(),
        ),
      ],
    );
  }
}
