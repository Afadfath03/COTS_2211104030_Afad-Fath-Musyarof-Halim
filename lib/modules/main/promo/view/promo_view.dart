import 'package:flutter/material.dart';
import 'package:get/get.dart';
import '../controller/promo_controller.dart';
import '../widget/cathegory_chip.dart';
import '../widget/info_card.dart';
import '../widget/promo_card.dart';

class PromoView extends StatelessWidget {
  final PromoController controller = Get.find<PromoController>();

  PromoView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text(
          'Promo',
          style: TextStyle(color: Colors.black),
        ),
        backgroundColor: Colors.white,
        elevation: 0,
        iconTheme: const IconThemeData(color: Colors.black),
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(16.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Container(
                padding: const EdgeInsets.all(16.0),
                decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.circular(8),
                  boxShadow: [
                    BoxShadow(
                      color: Colors.grey.shade200,
                      blurRadius: 6,
                      offset: const Offset(0, 2),
                    ),
                  ],
                ),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    const Text(
                      '121 XP to your next treasure',
                      style: TextStyle(
                        fontSize: 16,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                    const SizedBox(height: 8),
                    LinearProgressIndicator(
                      value: 0.5,
                      backgroundColor: Colors.grey.shade300,
                      valueColor:
                          const AlwaysStoppedAnimation<Color>(Colors.green),
                    ),
                  ],
                ),
              ),
              const SizedBox(height: 16),
              const Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  InfoCard(title: '13', subtitle: 'Vouchers'),
                  InfoCard(title: '0', subtitle: 'Langganan'),
                  InfoCard(title: '0', subtitle: 'Mission'),
                ],
              ),
              const SizedBox(height: 16),
              SingleChildScrollView(
                scrollDirection: Axis.horizontal,
                child: Row(
                  children: List.generate(
                    controller.categories.length,
                    (index) => Obx(() => CategoryChip(
                          label: controller.categories[index],
                          isSelected:
                              controller.activeCategoryIndex.value == index,
                          onTap: () => controller.setActiveCategory(index),
                        )),
                  ),
                ),
              ),
              const SizedBox(height: 16),
              const Text(
                'Promo menarik buat kamu',
                style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
              ),
              const SizedBox(height: 16),
              Column(
                children: controller.promos
                    .map((promo) => PromoCard(
                          title: promo['title']!,
                          description: promo['description']!,
                          imageUrl: promo['imageUrl']!,
                        ))
                    .toList(),
              ),
            ],
          ),
        ),
      ),
      bottomNavigationBar: BottomNavigationBar(
        type: BottomNavigationBarType.fixed,
        currentIndex: 1,
        onTap: (index) {
          if (index == 0) Get.offAndToNamed('/home');
          if (index == 1) Get.offAndToNamed('/promo');
          if (index == 2) Get.offAndToNamed('/order');
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
        ],
      ),
    );
  }
}
