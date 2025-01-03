import 'package:get/get.dart';
import 'onboarding_model.dart';

class OnboardingController extends GetxController {
  // List of onboarding pages
  final onboardingPages = <OnboardingModel>[
    OnboardingModel(
      image: 'assets/images/onboard/onboard1.png',
      title: 'Selamat datang di gojek!',
      text:
          'Aplikasi yang bikin hidupmu lebih nyaman. Siap bantuin semua kebutuhan mu, kapanpun, dan di manapun',
    ),
    OnboardingModel(
      image: 'assets/images/onboard/onboard2.png',
      title: 'Transportasi & logistik',
      text:
          'Antarin kamu jalan atau ambilin barang lebih gampang tinggal ngelik doang~',
    ),
    OnboardingModel(
      image: 'assets/images/onboard/onboard3.png',
      title: 'Pesan makan & belanja',
      text: 'Lagi ngidam sesuatu? Gojek beliin gak pakai lama.',
    ),
  ].obs;

  // Current page index
  var currentPage = 0.obs;

  void changePage(int index) {
    currentPage.value = index;
  }
}
