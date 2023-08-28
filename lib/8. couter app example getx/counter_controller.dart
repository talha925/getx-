import 'package:get/get.dart';

class CounterController extends GetxController {
  RxInt x = 0.obs;

  increment() {
    x.value++;
    // print(x.value);
  }
}
