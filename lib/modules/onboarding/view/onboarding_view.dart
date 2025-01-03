import 'package:flutter/material.dart';
import 'package:get/get.dart';
import '../controller/onboarding_controller.dart';
import '../widget/logo.dart';
import '../widget/text.dart';

class OnboardingView extends StatelessWidget {
  final OnboardingController controller = Get.put(OnboardingController());

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Column(
          children: [
            // Logo
            OnboardWidgetLogo(),
            const Spacer(),

            // PageView for Onboarding Content
            Expanded(
              flex: 8,
              child: PageView.builder(
                onPageChanged: controller.changePage,
                itemCount: controller.onboardingPages.length,
                itemBuilder: (context, index) {
                  final page = controller.onboardingPages[index];
                  return OnBoardWidgetText(
                    image: page.image,
                    title: page.title,
                    text: page.text,
                  );
                },
              ),
            ),

            // Dots Indicator
            Obx(() => Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: List.generate(
                    controller.onboardingPages.length,
                    (index) => Container(
                      margin: const EdgeInsets.all(4.0),
                      width: controller.currentPage.value == index ? 12 : 8,
                      height: controller.currentPage.value == index ? 12 : 8,
                      decoration: BoxDecoration(
                        shape: BoxShape.circle,
                        color: controller.currentPage.value == index
                            ? Colors.green
                            : Colors.grey,
                      ),
                    ),
                  ),
                )),
            const Spacer(),

            // Buttons
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 16.0),
              child: Column(
                children: [
                  ElevatedButton(
                    onPressed: () {
                      // Navigate to Login Page
                    },
                    style: ElevatedButton.styleFrom(
                      backgroundColor: Colors.green,
                      minimumSize: const Size(double.infinity, 50),
                    ),
                    child: const Text('Masuk', style: TextStyle(fontSize: 16)),
                  ),
                  const SizedBox(height: 8),
                  OutlinedButton(
                    onPressed: () {
                      Get.toNamed('/register');
                    },
                    style: OutlinedButton.styleFrom(
                      side: const BorderSide(color: Colors.green),
                      minimumSize: const Size(double.infinity, 50),
                    ),
                    child: const Text('Belum ada akun? Daftar dulu',
                        style: TextStyle(fontSize: 16)),
                  ),
                ],
              ),
            ),
            const SizedBox(height: 20),

            // Footer
            const Padding(
              padding: EdgeInsets.symmetric(horizontal: 16.0),
              child: Text(
                'Dengan masuk atau mendaftar, kamu menyetujui Ketentuan layanan dan Kebijakan privasi.',
                textAlign: TextAlign.center,
                style: TextStyle(fontSize: 12, color: Colors.grey),
              ),
            ),
            const SizedBox(height: 20),
          ],
        ),
      ),
    );
  }
}
