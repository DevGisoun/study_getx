import 'package:get/get.dart';

import '../controller/count_controller_with_getx.dart';

/// Bindings 인터페이스 상속
class PageBinding implements Bindings {
  @override
  void dependencies() {
    Get.put(CountControllerWithGetX());
  }
}
