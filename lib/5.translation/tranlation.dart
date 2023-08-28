import 'package:get/get.dart';

class Language extends Translations {
  @override
  // TODO: implement keys
  Map<String, Map<String, String>> get keys => {
        'en_US': {
          'message': 'What is your name?',
          'name': 'Talha.',
        },
        'ur_PK': {
          // You can choose to leave a translation as is, if you want
          // the same word accross diffrent locales

          'message': 'آپ کا نام کیا ہے',
          'name': 'طلحہ',
        },
      };
}
