import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:getx_app_prac/11.%20GetX%20Mark%20Favourite%20App/favourite_controller.dart';

class FavouriteScreen extends StatefulWidget {
  const FavouriteScreen({Key? key}) : super(key: key);

  @override
  State<FavouriteScreen> createState() => _FavouriteScreenState();
}

class _FavouriteScreenState extends State<FavouriteScreen> {
  FavouriteController favouriteController = Get.put(FavouriteController());
  @override
  Widget build(BuildContext context) {
    print("object");
    return Scaffold(
      appBar: AppBar(),
      body: ListView.builder(
        itemCount: favouriteController.favouriteFruit.length,
        itemBuilder: (BuildContext context, int index) {
          return Padding(
            padding: const EdgeInsets.all(8.0),
            child: Card(
              child: ListTile(
                  onTap: () {
                    if (favouriteController.tempFavList.contains(
                        favouriteController.favouriteFruit[index].toString())) {
                      favouriteController.tempFavList.remove(
                          favouriteController.favouriteFruit[index].toString());
                    } else {
                      favouriteController.tempFavList.add(
                          favouriteController.favouriteFruit[index].toString());
                    }
                  },
                  title: Text(favouriteController.favouriteFruit[index]),
                  trailing: Obx(
                    () => Icon(Icons.favorite,
                        color: favouriteController.tempFavList.contains(
                                favouriteController.favouriteFruit[index]
                                    .toString())
                            ? Colors.red
                            : Colors.green),
                  )),
            ),
          );
        },
      ),
    );
  }
}
