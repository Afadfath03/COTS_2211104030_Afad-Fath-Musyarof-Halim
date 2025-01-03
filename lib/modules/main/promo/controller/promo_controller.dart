import 'package:get/get.dart';

class PromoController extends GetxController {
  final List<String> categories = [
    'Apa aja',
    'GoFood',
    'GoPay',
    'GoPayLater',
    'GoRide',
  ];

  var activeCategoryIndex = 0.obs;

  final List<Map<String, String>> promos = [
    {
      'title': 'Jaminan Ongkir Rp 5 RB',
      'description': 'Promo dari GoFood untukmu',
      'imageUrl': 'https://via.placeholder.com/150',
    },
    {
      'title': 'Promo menarik dari GoPay',
      'description': 'Diskon untuk transaksi lebih hemat',
      'imageUrl': 'https://via.placeholder.com/150',
    },
  ];

  void setActiveCategory(int index) {
    activeCategoryIndex.value = index;
  }
}
