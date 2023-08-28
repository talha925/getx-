import 'package:get/get.dart';
import 'package:image_picker/image_picker.dart';

class ImagePickerController extends GetxController {
  RxString imagePath = "".obs;

  Future getImage() async {
    try {
      final ImagePicker picker = ImagePicker();
// final XFile? image = await picker.pickImage(source: ImageSource.gallery);

      final XFile? image = await picker.pickImage(source: ImageSource.gallery);
      if (image != null) {
        imagePath.value = image.path.toString();
      } else {
        print("User canceled image picking.");
      }
    } catch (e) {
      print("Error picking image: $e");
    }
  }
}
