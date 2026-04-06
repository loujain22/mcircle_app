import 'package:get/get.dart';

class HomeController {
  static HomeController get instance => Get.find();

  final curousalCurrentIndex = 0.obs;

  void updatePageIndicator(index) {
    curousalCurrentIndex.value = index;
  }
}
