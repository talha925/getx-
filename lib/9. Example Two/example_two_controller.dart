import 'package:get/get.dart';

class ExampleTwoController extends GetxController {
  RxDouble opacity = 0.5.obs;

  changeSliderOpacity(double value) {
    opacity.value = value;
  }
}
