import 'package:get/get.dart';

class HomeController extends GetxController {
  final List<Map<String, String>> features = [
    {'title': 'GoRide', 'icon': 'assets/icons/ride.png'},
    {'title': 'GoCar', 'icon': 'assets/icons/car.png'},
    {'title': 'GoFood', 'icon': 'assets/icons/food.png'},
    {'title': 'GoSend', 'icon': 'assets/icons/send.png'},
  ];

  final List<Map<String, String>> promos = [
    {
      'title': 'Makin Seru!',
      'description': 'Aktifkan & Sambungkan GoPay & GoPayLater di Tokopedia',
      'imageUrl': 'https://via.placeholder.com/150',
    },
    {
      'title': 'Makin Seru!',
      'description': 'Sambungkan Akun ke Tokopedia, Banyakin Untung',
      'imageUrl': 'https://via.placeholder.com/150',
    },
  ];
}
