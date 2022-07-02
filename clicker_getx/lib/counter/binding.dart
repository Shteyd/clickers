import 'package:clicker_getx/counter/controller.dart';
import 'package:get/get.dart';

class CounterBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut(
      () => CounterController(),
    );
  }
}
