import 'package:flutter/material.dart';
import 'package:get/get.dart';
import '../controller/home_controller.dart';
import '../widget/feature_card.dart';
import '../widget/promo_card.dart';
import '../widget/scrollable_section.dart';

class HomeView extends StatelessWidget {
  final HomeController controller = Get.find<HomeController>();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        elevation: 0,
        backgroundColor: Colors.white,
        title: TextField(
          decoration: InputDecoration(
            hintText: 'Find services, food, or places',
            prefixIcon: const Icon(Icons.search, color: Colors.grey),
            border: OutlineInputBorder(
              borderRadius: BorderRadius.circular(30),
              borderSide: BorderSide.none,
            ),
            filled: true,
            fillColor: Colors.grey.shade200,
          ),
        ),
      ),
      body: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            
            Padding(
              padding: const EdgeInsets.all(16.0),
              child: GridView.builder(
                shrinkWrap: true,
                physics: const NeverScrollableScrollPhysics(),
                gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                  crossAxisCount: 4,
                  mainAxisSpacing: 16,
                  crossAxisSpacing: 16,
                ),
                itemCount: controller.features.length,
                itemBuilder: (context, index) {
                  final feature = controller.features[index];
                  return FeatureCard(
                    title: feature['title']!,
                    iconPath: feature['icon']!,
                  );
                },
              ),
            ),

            // Scrollable Section
            ScrollableSection(
              title: 'Promos near me',
              items: controller.promos.map((promo) {
                return PromoCard(
                  title: promo['title']!,
                  description: promo['description']!,
                  imageUrl: promo['imageUrl']!,
                );
              }).toList(),
            ),

            ScrollableSection(
              title: 'Best-seller in my area',
              items: controller.promos.map((promo) {
                return PromoCard(
                  title: promo['title']!,
                  description: promo['description']!,
                  imageUrl: promo['imageUrl']!,
                );
              }).toList(),
            ),
          ],
        ),
      ),
      bottomNavigationBar: BottomNavigationBar(
        type: BottomNavigationBarType.fixed,
        currentIndex: 0,
        onTap: (index) {
          if (index == 0) Get.toNamed('/home');
          if (index == 1) Get.toNamed('/promo');
          if (index == 2) Get.toNamed('/order');
        },
        items: const [
          BottomNavigationBarItem(
            icon: Icon(Icons.home_outlined),
            label: 'Home',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.local_offer_outlined),
            label: 'Promos',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.receipt_long_outlined),
            label: 'Orders',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.chat_bubble_outline),
            label: 'Chat',
          ),
        ],
      ),
    );
  }
}
