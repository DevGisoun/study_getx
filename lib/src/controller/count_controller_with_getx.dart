import 'package:get/get.dart';

class CountControllerWithGetX extends GetxController {
  static CountControllerWithGetX get to => Get.find();

  RxInt count = 0.obs;

  // void increase(String id) {
  //   count++;
  //   update([id]);
  // }

  void increase() {
    count++;
    update();
  }

  void putNumber(int value) {
    count(value);
    update();
  }
}
