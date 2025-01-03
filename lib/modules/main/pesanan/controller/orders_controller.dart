import 'package:get/get.dart';

class OrdersController extends GetxController {
  final List<String> tabs = ['Riwayat', 'Dalam proses', 'Terjadwal'];

  var activeTabIndex = 0.obs;

  final List<Map<String, dynamic>> orders = [
    {
      'restaurant': 'Ayam Benjoss, kedungkandang',
      'items': '2 Paket Ayam Bakar Jumbo',
      'deliveryTime': '28 Des 11:30',
      'total': 'Rp. 58.800',
      'status': 'Selesai',
    },
    {
      'restaurant': 'Ayam Benjoss, kedungkandang',
      'items': '2 Paket Ayam Bakar Jumbo',
      'deliveryTime': '28 Des 11:30',
      'total': 'Rp. 58.800',
      'status': 'Selesai',
    },
  ];

  void setActiveTab(int index) {
    activeTabIndex.value = index;
  }
}
