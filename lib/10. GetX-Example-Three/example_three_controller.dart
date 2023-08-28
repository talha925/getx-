import 'package:get/get.dart';

class ExampleThreeController extends GetxController {
  RxBool notificatioin = false.obs;

  setNotification(bool value) {
    notificatioin.value = value;
  }
}
