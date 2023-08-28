import 'package:get/get.dart';

class FavouriteController extends GetxController {
  RxList<String> favouriteFruit = [
    "Orange",
    "Apple",
    "Mango",
    "Banana",
  ].obs;

  RxList tempFavList = [].obs;

  addToFavourite(String value) {
    tempFavList.add(favouriteFruit);
  }

  removeToFavourite() {
    tempFavList.remove(favouriteFruit);
  }
}
