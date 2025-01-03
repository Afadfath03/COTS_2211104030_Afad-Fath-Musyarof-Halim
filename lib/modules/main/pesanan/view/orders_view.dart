import 'package:flutter/material.dart';
import 'package:get/get.dart';
import '../controller/orders_controller.dart';
import '../widget/order_item.dart';
import '../widget/order_filter_chip.dart';

class OrdersView extends StatelessWidget {
  final OrdersController controller = Get.find<OrdersController>();

  OrdersView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Pesanan', style: TextStyle(color: Colors.black)),
        elevation: 0,
        backgroundColor: Colors.white,
        iconTheme: const IconThemeData(color: Colors.black),
      ),
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Container(
            padding: const EdgeInsets.symmetric(horizontal: 16),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: List.generate(
                controller.tabs.length,
                (index) => Obx(() => GestureDetector(
                      onTap: () => controller.setActiveTab(index),
                      child: Container(
                        padding: const EdgeInsets.symmetric(
                            horizontal: 16, vertical: 8),
                        decoration: BoxDecoration(
                          color: controller.activeTabIndex.value == index
                              ? Colors.green
                              : Colors.transparent,
                          borderRadius: BorderRadius.circular(16),
                        ),
                        child: Text(
                          controller.tabs[index],
                          style: TextStyle(
                            color: controller.activeTabIndex.value == index
                                ? Colors.white
                                : Colors.black,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                      ),
                    )),
              ),
            ),
          ),
          const SizedBox(height: 16),
          const Padding(
            padding: EdgeInsets.symmetric(horizontal: 16),
            child: Row(
              children: [
                OrderFilterChip(label: 'GoFood', isActive: true),
                SizedBox(width: 8),
                OrderFilterChip(label: 'Status', isActive: false),
              ],
            ),
          ),
          const SizedBox(height: 16),
          Expanded(
            child: ListView.builder(
              itemCount: controller.orders.length,
              itemBuilder: (context, index) {
                final order = controller.orders[index];
                return OrderItem(
                  restaurant: order['restaurant'],
                  items: order['items'],
                  deliveryTime: order['deliveryTime'],
                  total: order['total'],
                );
              },
            ),
          ),
        ],
      ),
      bottomNavigationBar: BottomNavigationBar(
        type: BottomNavigationBarType.fixed,
        currentIndex: 2,
        onTap: (index) {
          if (index == 0) Get.offAll('/home');
          if (index == 1) Get.offAll('/promo');
          if (index == 2) Get.offAll('/order');
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
